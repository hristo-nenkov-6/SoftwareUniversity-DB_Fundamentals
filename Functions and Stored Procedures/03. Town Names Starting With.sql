CREATE PROC usp_GetTownsStartingWith(@StartingLetter VARCHAR(10))
AS
	SELECT
		[Name] as 'Town'
	FROM
		Towns
	WHERE
		LOWER(SUBSTRING([Name], 1, LEN(@StartingLetter))) = @StartingLetter