SELECT 
	SUBSTRING(Email, CHARINDEX('@', Email) + 1, 100) AS [Email Provider],
	COUNT(*) AS [Number Of Users]
FROM
	Users
GROUP BY
	SUBSTRING(Email, CHARINDEX('@', Email) + 1, 100)
ORDER BY
	COUNT(*) DESC,
	SUBSTRING(Email, CHARINDEX('@', Email) + 1, 100)