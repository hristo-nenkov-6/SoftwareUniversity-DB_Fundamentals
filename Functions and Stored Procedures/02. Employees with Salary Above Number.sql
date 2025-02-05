CREATE PROC usp_GetEmployeesSalaryAboveNumber(@MinimumSalary DECIMAL(18, 4))
AS
	SELECT
		FirstName as 'First Name'
		,LastName as 'Last Name'
	FROM
		Employees
	WHERE
		Salary >= @MinimumSalary