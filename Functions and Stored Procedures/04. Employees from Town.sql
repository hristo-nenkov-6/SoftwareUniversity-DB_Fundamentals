CREATE PROC usp_GetEmployeesFromTown (@Town VARCHAR(20))
AS
	SELECT
		e.FirstName as 'First Name',
		e.LastName as 'Last Name'
	FROM
		Employees e
		JOIN
			Addresses a ON e.AddressID = a.AddressID
		JOIN
			Towns t ON a.TownID = t.TownID
	WHERE
		t.[Name] = @Town