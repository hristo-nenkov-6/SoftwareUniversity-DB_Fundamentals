SELECT
MIN(AverageSalary) AS MinAverageSalary
FROM 
(
SELECT
	AVG(Salary) AS AverageSalary
FROM 
	Employees
GROUP BY 
	DepartmentID
) AS ctp