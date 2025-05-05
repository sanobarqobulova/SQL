--Create a new database in SSMS named SchoolDB.
create database schooldb
use schooldb
create table students (Student_id int primary key, name varchar(10), age int) 
select * from students
--Write and execute a query to create a table called Students with columns: StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT).
insert into students (student_id, name, Age) values (1, 'Mike', 28);
insert into students (student_id, name, Age) values (2, 'Susan', 27);
insert into students (student_id, name, Age) values (3, 'Michel', 23);
insert into students (student_id, name, Age) values (4, 'Chris', 30);
insert into students (student_id, name, Age) values (5, 'Alisha', 26);
insert into students (student_id, name, Age) values (6, 'Josepher', 22);
select * from students

/*Describe the differences between SQL Server, SSMS, and SQL
SQL Server	The engine (stores and processes data)	Runs the database
SSMS	The tool (interface to manage the database)	Run SQL queries, manage backups
SQL	The language (used to talk to the database)	Write commands like SELECT, INSERT
*/
