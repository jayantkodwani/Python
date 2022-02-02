/****** Script for SQL Query Demonstrations equivalent to Python Codes ******/

--Use SQL Server Import/Export wizard to import the excel file called "Table1" and create a SQL Table called "Table1"
--DROP TABLE Table1
--DROP TABLE Table2

SELECT * FROM [Table1]  

SELECT TOP 3 * FROM [Table1] 

SELECT * FROM [Table1] ORDER BY Age

SELECT * FROM [Table1] ORDER BY Age DESC 

SELECT DISTINCT [Department] FROM [Table1]

SELECT Count(*) FROM [Table1]

SELECT sum(Salary) FROM [Table1]

SELECT * FROM [Table1] WHERE [Age] IS NULL

SELECT * FROM [Table1] WHERE [Age] IS NOT NULL

SELECT * FROM [Table1] WHERE [Age] > 35 

SELECT * FROM [Table1] WHERE [Age] >=30 AND [Age] <= 40

SELECT * FROM [Table1] WHERE [Department] ='HR' OR [Department] = 'Marketing'

SELECT * FROM [Table1] WHERE [Department] <> 'HR' 

SELECT Department, SUM(Salary) AS 'Total' FROM [Table1] Group By Department

UPDATE [Table1] SET Age=(Select Avg(Age) From Table1) WHERE AGE IS NULL
SELECT * FROM [Table1]

UPDATE [Table1] SET Age=(
SELECT x.Age from Table1 x, Table1 y
GROUP BY x.Age
HAVING SUM(SIGN(1-SIGN(y.Age-x.Age))) = (COUNT(*)+1)/2) 
WHERE AGE IS NULL

SELECT * FROM [Table1]
SELECT * FROM [Table2]

SELECT * FROM [Table1] T1 INNER JOIN [Table2] T2 ON T1.EmployeeID = T2.EmployeeID
SELECT * FROM [Table1] T1 LEFT JOIN [Table2] T2 ON T1.EmployeeID = T2.EmployeeID
SELECT * FROM [Table1] T1 RIGHT JOIN [Table2] T2 ON T1.EmployeeID = T2.EmployeeID
SELECT * FROM [Table1] T1 FULL OUTER JOIN [Table2] T2 ON T1.EmployeeID = T2.EmployeeID


SELECT * FROM [Table1] T1 INNER JOIN [Table2] T2 ON T1.EmployeeID = T2.EmployeeID AND T1.Name=T2.Name


SELECT *, ROW_NUMBER() OVER (ORDER BY Age DESC) FROM Table1
SELECT *, RANK() OVER (ORDER BY Age DESC) FROM Table1
SELECT *, DENSE_RANK() OVER (ORDER BY Age DESC) FROM Table1


SELECT *, 
CASE WHEN Salary >0 AND Salary <=20000 THEN 'Low'
     WHEN Salary >20000 AND Salary <=40000 THEN 'Medium'
	 WHEN Salary >40000 THEN 'High'
	 ELSE 'None' END AS 'Category'
FROM Table1


SELECT * FROM [Table1]



