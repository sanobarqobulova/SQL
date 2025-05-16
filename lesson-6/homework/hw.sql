--Puzzle 1: Finding Distinct Values
CREATE TABLE InputTbl (
    col1 VARCHAR(10),
    col2 VARCHAR(10)
);
    INSERT INTO InputTbl (col1, col2) VALUES 
('a', 'b'),
('a', 'b'),
('b', 'a'),
('c', 'd'),
('c', 'd'),
('m', 'n'),
('n', 'm');

select distinct col1, col2 from InputTbl;

CREATE TABLE TestMultipleZero (
    A INT NULL,
    B INT NULL,
    C INT NULL,
    D INT NULL
);

INSERT INTO TestMultipleZero(A,B,C,D)
VALUES 
    (0,0,0,1),
    (0,0,1,0),
    (0,1,0,0),
    (1,0,0,0),
    (0,0,0,0),
    (1,1,1,0);

--Puzzle 2: Removing Rows with All Zeroes

select *  from TestMultipleZero
 where A<>0or B<>0 or C<>0 or D<>0

	
--Puzzle 3: Find those with odd ids

SELECT * FROM section1 WHERE id % 2 <> 0;

--Puzzle 4: Person with the smallest id (use the table in puzzle 3)

SELECT TOP 1 id FROM section1
order by id asc;


--Puzzle 5: Person with the highest id (use the table in puzzle 3)

SELECT TOP 1 id FROM section1
order by id desc;

--Puzzle 6: People whose name starts with b (use the table in puzzle 3)

select 

SELECT name FROM section1
WHERE name LIKE 'B%';


--Puzle 7: Write a query to return only the rows where the code contains 
--the literal underscore _ (not as a wildcard).


SELECT Code FROM ProductCodes
where Code like '%\_%' escape '\';

	   CREATE TABLE ProductCodes (
    Code VARCHAR(20)
);

INSERT INTO ProductCodes (Code) VALUES
('X-123'),
('X_456'),
('X#789'),
('X-001'),
('X%202'),
('X_ABC'),
('X#DEF'),
