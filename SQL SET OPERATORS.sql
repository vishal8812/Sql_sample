new table work(id int, name varchar(20))
insert into work
values(1,'vishal')
create new table employee
insert into employee(id int)
---WORKING WITH SET OPERATORS--

CREATE TABLE EMP_PUNE(EID INT,ENAME VARCHAR(10),SALARY MONEY)

CREATE TABLE EMP_MUMBAI(EID INT,ENAME VARCHAR(10),SALARY MONEY)

SELECT * FROM EMP_PUNE
SELECT * FROM EMP_MUMBAI
--------------------------------------------------------------------------------------------
SELECT * FROM EMP_PUNE
UNION
SELECT * FROM EMP_MUMBAI   ----------DUPLICATE RECOREDS ARE NOT DISPLAYED

SELECT EID,ENAME FROM EMP_PUNE
UNION
SELECT * FROM EMP_MUMBAI   -------NOT ALLOWED,NO.OF COLUMNS IN BOTH STAMENT SHOULD BE SAME

SELECT EID,ENAME FROM EMP_PUNE
UNION
SELECT EID,ENAME FROM EMP_MUMBAI

SELECT ENAME,EID FROM EMP_PUNE
UNION
SELECT EID,ENAME FROM EMP_MUMBAI   ---NOT ALLOWED,ORDER OF COLUMN SHOULD BE SAME

SELECT EID FROM EMP_PUNE
UNION
SELECT EID FROM EMP_MUMBAI

SELECT EID FROM EMP_PUNE
UNION
SELECT ENAME FROM EMP_MUMBAI   ----NOT ALLOED ,DATA TYPE MUST BE MATCH 
----------------------------------------------------------------------------------------------
SELECT * FROM EMP_PUNE
UNION ALL
SELECT * FROM EMP_MUMBAI  -----DUPLICATE VALUES ALSO DISPLAYED
---------------------------------------------------------------------------------------------------
SELECT * FROM EMP_PUNE
INTERSECT
SELECT * FROM EMP_MUMBAI   -------ONLY COMMAN VALUES ARE RETRIVED
--------------------------------------------------------------------------------------------------
SELECT * FROM EMP_PUNE
EXCEPT
SELECT * FROM EMP_MUMBAI  ---ONLY LEFT HAND SIDE ALL VALUE RETRIVED EXCEPT COMMON VALUE

SELECT * FROM EMP_MUMBAI
EXCEPT
SELECT * FROM EMP_PUNE

------------------------------------------------------------------------------------------
