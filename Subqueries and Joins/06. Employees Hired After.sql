SELECT 
	e.FirstName,
	e.LastName,
	e.HireDate,
	d.[Name]
FROM 
	Employees e
JOIN 
	Departments d ON e.DepartmentID = d.DepartmentID
WHERE
	e.HireDate >= '1999-01-01'
	AND
	e.DepartmentID IN (3, 10)
ORDER BY 
	e.HireDate ASC

