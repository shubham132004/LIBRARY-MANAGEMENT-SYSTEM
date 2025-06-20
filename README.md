📚 Library Management System (SQL Project)
Welcome to the Library Management System SQL project developed by Shubham Parmar as part of a hands-on data analysis journey. This project demonstrates the creation, population, and querying of a relational database to manage book inventories, library branches, loans, and more using SQL.

🔍 Project Objective
To design and analyze a Library Management System database that:

Tracks book inventory and availability.

Manages loan activity across multiple branches.

Extracts insights using SQL queries and visualizations for decision-making.

📁 Repository Structure
pgsql
Copy
Edit
├── 📄 LIBRARY_MANAGEMENT_SYSTEM_TABLES_AND_DATA.sql
├── 📄 Questions_and_their_queries.sql
├── 📄 LIBRARY MANAGEMENT SYSTEM (Presentation).pdf
└── 📄 README.md
🔸 LIBRARY_MANAGEMENT_SYSTEM_TABLES_AND_DATA.sql
This file:

Creates the full schema: tables for books, authors, branches, borrowers, loans, and publishers.

Establishes foreign key relationships.

Handles date parsing and data formatting issues using STR_TO_DATE().

Prepares the environment for querying and analysis.

🔸 Questions_and_their_queries.sql
Includes real-world SQL queries and analysis such as:

Finding borrowers who haven’t checked out books.

Determining most popular books and authors by branch.

Analyzing loan trends and branch-wise activity.

Filtering books by authors or due dates.

🔸 LIBRARY MANAGEMENT SYSTEM (Presentation).pdf
A PowerPoint-style summary of the project which includes:

ER diagrams and schema breakdown

SQL insights and output observations

Final business insights and key conclusions

Challenges faced during development

Author profile and project journey

📈 Key Business Insights
Seasonal Borrowing Trends: Highest loan activity in January 2018.

Branch Utilization: Ann Arbor had the highest engagement, while others like Sharpstown were underutilized.

Author Popularity: Patrick Rothfuss and Stephen King featured prominently in loan data.

Inventory Optimization: Some books had just 1 copy per branch, opening room for stock enhancement.

🛠 How to Use
Import the LIBRARY_MANAGEMENT_SYSTEM_TABLES_AND_DATA.sql file into your MySQL server.

Run the Questions_and_their_queries.sql file to perform various analysis and retrieve insights.

Modify queries as needed for extended insights or reporting.

✅ Prerequisites
MySQL installed and running.

Any SQL client like MySQL Workbench or DBeaver.

Basic understanding of SQL and relational databases.

👨‍💻 Author
Shubham Parmar
📧 LinkedIn Profile : https://www.linkedin.com/in/shubham-parmar-12164024a/


Feel free to clone, explore, or contribute. If you find this useful, do ⭐️ the repository!
