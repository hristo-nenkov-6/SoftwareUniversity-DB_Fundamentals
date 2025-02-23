SELECT
	e.EmployeeID,
	e.FirstName,
	CASE
		WHEN p.StartDate >= '2005-01-01' THEN NULL
		ELSE p.[Name]
	END AS ProjectName
FROM
	Employees e
	LEFT JOIN
	EmployeesProjects ep ON e.EmployeeID = ep.EmployeeID
	JOIN 
	Projects p ON p.ProjectID = ep.ProjectID
WHERE 
	e.EmployeeID = 24
	