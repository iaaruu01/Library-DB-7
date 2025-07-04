# Library-DB-7

# 👁 Task 7 – SQL Views in Library Management System

##  Objective

Create and use **SQL Views** to simplify complex queries, secure sensitive data, and structure reusable reporting logic for the Library Management System.

---

## Tools Used

- MySQL Workbench / DB Browser for SQLite
- GitHub for version control
- SQL scripting via `task7.sql`

---

##  Repository Contents

| File Name               | Description                                 |
|------------------------|---------------------------------------------|
| `Library-DB-Schema-1.sql` | Library DB table structure                 |
| `Library-DB-2.sql`        | Data insert batch 1                        |
| `Library-DB-3.sql`        | Data insert batch 2                        |
| `Library-DB-4.sql`        | Data insert batch 3                        |
| `Library-DB-5.sql`        | Final data set                            |
| `task7.sql`               |  SQL views for Task 7                    |
| `README.md`              | Task documentation (this file)             |

---

##  Views Overview

### 1. `authors_with_title`
> Shows all book titles with their corresponding author names.

### 2. `member_Loans`
> Lists each member and the total number of books they’ve borrowed.

### 3. `active_loans`
> Shows all loans where books have not yet been returned (`ReturnDate IS NULL`).

### 4. `book_detail`
> Lists each book’s title, its category, and how many times it has been borrowed.

### 6. `Report`
> A combined view of book, author, and category.

### 7. `staff_assistant`
> Staff with role `"Assistant"` only.

### 8. `JuneBorrow`
> Members who borrowed books in June 2025.

### 9. `memberBorrow`
> Shows borrowed books and member name, hides email.

### 10. `countBookperCategory`
> Number of books issued per category.

### 11. `notBorrowYet`
> Books that were never borrowed.

### 12. `checkOption_20`
> Books from category ID = 20 with `WITH CHECK OPTION`.

### 13. `avgNumBook`
> Average number of loans per book per author.

### 14. `MemberLoans`
> Loan history view with member details.

### 15. `currentlyIssue`
> Books currently issued (`ReturnDate IS NULL`) with member name.

---

##  Concepts Demonstrated

- Joins in views
- Aggregation within views (`COUNT`, `AVG`)
- Filtering (`IS NULL`, date logic)
- `WITH CHECK OPTION`
- Data security and simplified reports

---

##  Author

**Aarya Gupta**  
