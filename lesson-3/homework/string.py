--Create a new database in SSMS named SchoolDB.
create database school
use school
create table students (StudentID int primary key, name varchar(10), age int) 
select * from students
--Write and execute a query to create a table called Students with columns: StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT).
insert into students (StudentID, name, age) values ( 'Mike', 28)
insert into students (StudentID, name, age) values ( 'Susan', 27)
insert into students (StudentID, name, age) values ( 'Michel', 23)
insert into students (StudentID, name, age) values ( 'CHris', 30)
insert into students (StudentID, name, age) values ( 'Alisha', 26)
insert into students (StudentID, name, age) values ( 'Josepher', 22)
select * from students


	/*Describe the differences between SQL Server, SSMS, and SQL.
SQL Server	The engine (stores and processes data)	Runs the database
SSMS	The tool (interface to manage the database)	Run SQL queries, manage backups
SQL	The language (used to talk to the database)	Write commands like SELECT, INSERT
*/
