SELECT 
	CCC.DepartmentID,
	MAX(Salary)
FROM
(SELECT
	DepartmentID,
	Salary,
	DENSE_RANK() OVER (PARTITION BY DepartmentID ORDER BY Salary DESC) AS [Rank]
FROM
	Employees) AS CCC
WHERE 
	CCC.Rank = 3
GROUP BY
	DepartmentID

