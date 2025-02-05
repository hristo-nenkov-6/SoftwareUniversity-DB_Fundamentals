SELECT
	e.EmployeeID,
	e.FirstName,
	e.ManagerID,
	m.FirstName
FROM
	Employees e
	JOIN
	Employees m ON e.ManagerID = m.EmployeeID
WHERE 
	m.EmployeeID IN (3, 7)
ORDER BY 
	EmployeeID
	