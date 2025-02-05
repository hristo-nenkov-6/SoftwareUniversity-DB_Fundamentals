SELECT 
TOP(50)
	e.EmployeeID,
	CONCAT_WS(' ', e.FirstName, e.LastName) AS EmployeeName,
	CONCAT_WS(' ', m.FirstName, m.LastName) AS ManagerName,
	d.[Name] As DepartmentName
FROM
	Employees e
JOIN
	Employees m ON e.ManagerID = m.EmployeeID
JOIN
	Departments d ON e.DepartmentID = d.DepartmentID
ORDER BY
	EmployeeID