SELECT
	TOP(3)
	e.EmployeeID,
	e.FirstName
FROM
	Employees e
	LEFT JOIN
	EmployeesProjects ep ON e.EmployeeID = ep.EmployeeID
WHERE 
	ep.ProjectID IS NULL
ORDER BY
	e.EmployeeID