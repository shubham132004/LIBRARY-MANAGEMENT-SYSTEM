use library;

select * from tbl_book;
select * from tbl_book_authors;
select * from tbl_book_copies;
select * from tbl_book_loans;
select * from tbl_borrower;
select * from tbl_library_branch;
select * from tbl_publisher;

## 1. How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?

SELECT bk.book_title , lb.library_branch_BranchName , count(*) no_of_copies
FROM tbl_book bk
JOIN 
tbl_book_copies bc
ON bk.book_BookId = bc.book_copies_BookID
JOIN
tbl_library_branch lb 
ON lb.library_branch_BranchID = bc.book_copies_BranchID
WHERE bk.book_Title = 
	(SELECT book_Title FROM tbl_book
	 WHERE book_Title = 'The Lost Tribe')
AND lb.library_branch_BranchName = 
	(SELECT library_branch_BranchName FROM tbl_library_branch
     WHERE library_branch_BranchName = 'Sharpstown')
GROUP BY bk.book_Title , lb.library_branch_BranchName;


## 2. How many copies of the book titled "The Lost Tribe" are owned by each library branch?

SELECT lb.library_branch_BranchName , count(*) no_of_copies
FROM tbl_book bk
JOIN 
tbl_book_copies bc
ON bk.book_BookId = bc.book_copies_BookID
JOIN
tbl_library_branch lb 
ON lb.library_branch_BranchID = bc.book_copies_BranchID
WHERE bk.book_Title = 
	(SELECT book_Title FROM tbl_book
	 WHERE book_Title = 'The Lost Tribe')
GROUP BY lb.library_branch_BranchName;


## 3. Retrieve the names of all borrowers who do not have any books checked out.

SELECT borrower_BorrowerName
FROM 
tbl_borrower
WHERE borrower_CardNo NOT IN 
	(SELECT 
	DISTINCT book_loans_CardNo
	FROM tbl_book_loans);

    
## 4. For each book that is loaned out from the "Sharpstown" branch and whose DueDate is 2/3/18,
## retrieve the book title, the borrower's name, and the borrower's address. 
SELECT bk.book_Title , br.borrower_BorrowerName , br.borrower_BorrowerAddress
FROM tbl_book_loans bl
JOIN 
tbl_library_branch lb
ON bl.book_loans_BranchID = lb.library_branch_BranchID
JOIN
tbl_book bk
ON bl.book_loans_BookID = bk.book_BookID
JOIN 
tbl_borrower br
ON bl.book_loans_CardNo = br.borrower_CardNo
WHERE 
lb.library_branch_BranchName = 'Sharpstown'
AND
bl.DueDate = '2018-02-03';

## 5. For each library branch, retrieve the branch name and the total number of books loaned out from that branch.(GRAPH)
SELECT lb.library_branch_BranchName , count(*) books_loaned_out
FROM 
tbl_book_loans bl
JOIN
tbl_library_branch lb
ON bl.book_loans_BranchID = lb.library_branch_BranchID
GROUP BY lb.library_branch_BranchName;

## 6. Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out.(GRAPH)
SELECT br.borrower_BorrowerName , br.borrower_BorrowerAddress ,
count(*) book_count_more_than_five
FROM 
tbl_book_loans bl
JOIN
tbl_borrower br
ON bl.book_loans_CardNo = br.borrower_CardNo
GROUP BY br.borrower_BorrowerName , br.borrower_BorrowerAddress
HAVING book_count_more_than_five > 5;

## 7. For each book authored by "Stephen King", retrieve the title and the number of 
## copies owned by the library branch whose name is "Central".
SELECT bk.book_Title , count(*) count
FROM 
tbl_book bk
JOIN 
tbl_book_authors ba
ON bk.book_BookId = ba.book_author_BookID
JOIN
tbl_book_copies bc
ON bk.book_BookId = bc.book_copies_BookID
JOIN 
tbl_library_branch lb
ON bc.book_copies_BranchID = lb.library_branch_BranchID
WHERE ba.book_authors_AuthorName = 'Stephen King'
AND lb.library_branch_BranchName = 'Central'
GROUP BY bk.book_Title;

## Popular Books loaned by Branch
SELECT 
    lb.library_branch_BranchName AS Branch,
    b.book_Title AS BookTitle,
    COUNT(*) AS TimesLoaned
FROM 
    tbl_book_loans bl
JOIN 
    tbl_book b ON bl.book_loans_BookID = b.book_BookId
JOIN 
    tbl_library_branch lb ON bl.book_loans_BranchID = lb.library_branch_BranchID
GROUP BY 
    lb.library_branch_BranchName, b.book_Title
ORDER BY 
    TimesLoaned DESC;
  
## Books Loaned by Author and Branch
SELECT 
    ba.book_authors_AuthorName AS Author,
    lb.library_branch_BranchName AS Branch,
    COUNT(*) AS BooksLoaned
FROM 
    tbl_book_loans bl
JOIN 
    tbl_book b ON bl.book_loans_BookID = b.book_BookId
JOIN 
    tbl_book_authors ba ON b.book_BookId = ba.book_author_BookID
JOIN 
    tbl_library_branch lb ON bl.book_loans_BranchID = lb.library_branch_BranchID
GROUP BY 
    ba.book_authors_AuthorName, lb.library_branch_BranchName
ORDER BY 
    BooksLoaned DESC;




    
call lib_tables();