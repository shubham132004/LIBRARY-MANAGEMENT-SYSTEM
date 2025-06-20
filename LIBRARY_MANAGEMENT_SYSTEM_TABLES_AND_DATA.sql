-- CREATING DATABASE LIBRARY
CREATE DATABASE library;
use library;

-- CREATING TABLE tbl_publisher
CREATE TABLE tbl_publisher
(
publisher_PublisherName varchar(255) primary key ,
publisher_PublisherAddress text ,
publisher_PublisherPhone varchar(15) 
);


-- CREATING TABLE tbl_book
CREATE TABLE tbl_book 
(
book_BookId int primary key , 
book_Title varchar(255) ,
book_PublisherName varchar(255) ,
FOREIGN KEY (book_PublisherName) 
REFERENCES
tbl_publisher(publisher_PublisherName)
);

-- CREATING TABLE tbl_book_authors
CREATE TABLE tbl_book_authors
(
book_author_AuthorID int primary key auto_increment, 
book_author_BookID int ,
book_authors_AuthorName varchar(255) ,
FOREIGN KEY (book_author_BookID)
REFERENCES 
tbl_book(book_BookID)
);



-- CREATING TABLE tbl_library_branch
CREATE TABLE tbl_library_branch
(
library_branch_BranchID int primary key auto_increment ,
library_branch_BranchName varchar(255) , 
library_branch_BranchAddress text
);

-- CREATING TABLE tbl_book_copies 
CREATE TABLE tbl_book_copies
(
book_copies_CopiesID int primary key auto_increment , 
book_copies_BookID int , 
book_copies_BranchID int , 
book_copies_No_Of_Copies int ,
FOREIGN KEY (book_copies_BookID) 
REFERENCES 
tbl_book(book_BookID) ,
FOREIGN KEY (book_copies_BranchID)
REFERENCES
tbl_library_branch(library_branch_BranchID)
);



-- CREATING TABLE tbl_borrower
CREATE TABLE tbl_borrower
(
borrower_CardNo int primary key ,
borrower_BorrowerName varchar(255) ,
borrower_BorrowerAddress text ,
borrower_BorrowerPhone varchar(20) 
);

-- CREATING TABLE tbl_book_loans
CREATE TABLE tbl_book_loans
(
book_loans_LoansID int primary key auto_increment ,
book_loans_BookID int , 
book_loans_BranchID int ,
book_loans_CardNo int ,
book_loans_DateOut varchar(20) ,
book_loans_DueDate varchar(20) ,
FOREIGN KEY (book_loans_BookID)
REFERENCES 
tbl_book(book_BookID) ,
FOREIGN KEY (book_loans_BranchID)
REFERENCES 
tbl_library_branch(library_branch_BranchID) ,
FOREIGN KEY (book_loans_CardNo)
REFERENCES 
tbl_borrower(borrower_CardNo) 
);

drop table tbl_book_loans;



select * from tbl_book;
select * from tbl_book_authors;
select * from tbl_book_copies;
select * from tbl_book_loans;
select * from tbl_borrower;
select * from tbl_library_branch;
select * from tbl_publisher;

ALTER TABLE tbl_book_loans ADD COLUMN DateOut date;
UPDATE tbl_book_loans
SET DateOut = str_to_date(REPLACE(book_loans_Dateout , '/' , '-'), '%d-%m-%Y');
set sql_safe_updates = 0;
select * from book_loans_Dateout;

UPDATE tbl_book_loans
SET DateOut = STR_TO_DATE(REPLACE(book_loans_Dateout , '/' , '-'), '%m-%d-%Y');

ALTER TABLE tbl_book_loans ADD COLUMN DueDate date;
UPDATE tbl_book_loans
SET DueDate = STR_TO_DATE(REPLACE(book_loans_Dateout , '/' , '-'), '%m-%d-%Y');
describe tbl_book_loans;

show tables;