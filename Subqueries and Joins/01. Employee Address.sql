SELECT
	TOP(5)
	e.EmployeeID,
	e.JobTitle,
	e.AddressID,
	a.AddressText
FROM 
	Employees as e JOIN Addresses as a ON e.AddressID = a.AddressID
ORDER BY
	AddressID ASC