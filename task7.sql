 -- Create a view that shows all book titles with their corresponding author names.

create view authors_with_title as
select Title, Name as Author_Name from author right join book 
on author.AuthorID=book.AuthorID;

select * from authors_with_title;

-- 2. Create a view that lists each member and the total number of books they’ve borrowed.
create view member_Loans as 
select m.Name as Member_name,count(l.LoanID) from
member m join loan l on m.MemberID=l.MemberID 
group by m.Name;

select * from member_Loans;

-- 3. Create a view showing current active loans (ReturnDate IS NULL).
create view active_loans as
select LoanID,ReturnDate from loan 
where ReturnDate is null;

select * from active_loans;

-- 4. Create a view listing each book’s title, category name, and number of times it was loaned.
create view book_detail as
select b.Title as Book_Title, c.Name as Category_type, count(l.LoanID) as LoanID from 
book b join category c on b.CategoryID=c.CategoryID
join loan l on b.BookID=l.BookID
group by b.Title, c.Name;

-- 6. Create a view that joins book, author, and category to simplify reporting.
create view Report as
select a.AuthorID, a.Name as authorName , b.BookID, b.Title ,c.CategoryID ,c.Name as
cateogoryName from book b join author a on
b.AuthorID=a.AuthorID
join category c on b.CategoryID=c.CategoryID;

-- 7. Create a view that only includes staff members with the role "Assistant".
create view staff_assistant as
select s.Name,s.StaffID from staff s
where s.Role="Assistant";

-- 8. Create a view that returns members who borrowed books in June 2025.
create view JuneBorrow as
select l.LoanID, l.MemberID from loan l
where month(l.LoanDate)= 6 and year(l.LoanDate)=2025;

-- 9. Create a view that hides member emails but shows borrowed titles (for privacy).
create view memberBorrow as
select m.MemberID,m.Name, b.Title, l.LoanID from member m join 
loan l on l.MemberID=m.MemberID
join book b on b.BookID = l.BookID; 

-- 10. Create a view that aggregates the number of books issued per category.
create view countBookperCategory as
select c.CategoryID, c.Name, count(l.LoanID) as Count from loan l join book b 
on l.BookID=b.BookID join
category c on b.CategoryID= c.CategoryID 
group by c.Name, c.CategoryID;

-- 11. Create a view that lists books that have never been borrowed.
create view notBorrowYet as
select b.BookID, b.Title,b.AuthorID,b.CategoryID from book b left join loan l on
b.BookID=l.BookID
where l.BookID is null;

-- 12.Create a view that uses WITH CHECK OPTION to restrict updates to a specific category.
create view checkOption_20 as
select b.* from book b where 
b.CategoryID =20
with check option;

-- 13.Create a view that shows each author and the average number of loans per book they’ve written.
create view avgNumBook as
select  a.AuthorID, a.Name,Count(l.LoanID) * 1.0 / count(distinct b.BookID) as avgLoans
 from loan l join book b on
l.BookID= b.BookID join author a 
on b.AuthorID=a.AuthorID
group by a.AuthorID, a.Name;


-- 14. Create a view combining loans and members with full loan history for each user.
create view MemberLoans as
select l.*, m.Name,m.Email from loan l join member m on
l.MemberID= m.MemberID;

-- 15. Create a view to return only books that are currently issued (ReturnDate IS NULL) and include member name and title.
create view currentlyIssue as
select  l.LoanID, l.LoanDate, l.MemberID, m.Name as MemberName, b.Title  from loan l join book b on
l.BookId=b.BookID join member m on l.MemberID=m.MemberID
where l.ReturnDate is null;










