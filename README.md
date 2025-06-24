![image](https://github.com/user-attachments/assets/23b450e2-da26-4cf7-9e63-3ff1128bc05a)
If you want to refer the presentation file click on the below link : 

# 📚 Library Management System (SQL Project)

Welcome to the **Library Management System** SQL project developed by **Shubham Parmar** as part of a hands-on data analysis journey. This project demonstrates the creation, population, and querying of a relational database to manage book inventories, library branches, loans, and more using **SQL**.

---

## 🎯 Project Objective

To design and analyze a Library Management System database that:

- Tracks book inventory and availability.
- Manages loan activity across multiple branches.
- Extracts insights using SQL queries and visualizations for decision-making.

---

## 📁 Repository Structure
├── 📄 LIBRARY_MANAGEMENT_SYSTEM_TABLES_AND_DATA.sql
├── 📄 Questions_and_their_queries.sql
├── 📄 LIBRARY MANAGEMENT SYSTEM (Presentation).pdf
└── 📄 README.md


- **`LIBRARY_MANAGEMENT_SYSTEM_TABLES_AND_DATA.sql`**  
  Contains table definitions, constraints, data import instructions, and data formatting logic.

- **`Questions_and_their_queries.sql`**  
  Includes analytical queries used to derive insights, such as popular books, branch activity, borrower behavior, etc.

- **`LIBRARY MANAGEMENT SYSTEM (Presentation).pdf`**  
  A visual report that presents the project overview, ER diagrams, outputs, challenges, and final insights.

---

## 📊 Key Business Insights

- 📅 **Seasonal Borrowing Trends**: Most book loans occurred in January 2018.
- 🏢 **Branch Utilization**: Ann Arbor showed the highest loan volumes, while Sharpstown, Central, and Saline were underutilized.
- ✍️ **Author Popularity**: Patrick Rothfuss had the highest loans in Ann Arbor; Stephen King's books were frequently borrowed at the Central branch.
- 📦 **Inventory Optimization**: Some books like *The Lost Tribe* had only one copy per branch, indicating potential for increased inventory.

---

## 🛠️ How to Use

1. Open MySQL Workbench or your preferred SQL client.
2. Run `LIBRARY_MANAGEMENT_SYSTEM_TABLES_AND_DATA.sql` to create and populate the database.
3. Execute `Questions_and_their_queries.sql` to perform analytical queries.
4. Visualize the insights or adapt the queries to suit your analysis needs.

---

## 🧰 Technologies Used

- **MySQL** for relational database design and queries.
- **Python (Seaborn, Matplotlib)** for optional data visualizations (not included in this repo).
- **SQL Joins, Aggregations, and Subqueries** for analytical querying.
- **ER Modeling** for schema design.

---

## ⚠️ Challenges Faced

- Inconsistent date formats during import required converting `VARCHAR` to `DATE` using `STR_TO_DATE()` function.
- Complex joins across multiple tables like `tbl_book_loans`, `tbl_borrowers`, `tbl_library_branch`.
- Ensuring referential integrity with proper foreign key constraints.

---

## 👨‍💻 Author

**Shubham Parmar**

- 🎓 Bachelor of Computer Applications – *Parul University, Vadodara*
- 🌱 Data Science Enthusiast | SQL & Python Learner
- 🔗 [LinkedIn](https://www.linkedin.com/in/shubham-parmar-12164024a/)
- 💻 [GitHub](https://github.com/shubham132004)



> Feel free to ⭐️ the repo if you found this helpful and fork it to build upon!

