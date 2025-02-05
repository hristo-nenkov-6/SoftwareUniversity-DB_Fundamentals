SELECT
	COUNT(*)
FROM Countries c
LEFT JOIN 
	MountainsCountries mc ON c.CountryCode = mc.CountryCode
LEFT JOIN 
	Mountains m ON mc.MountainId = m.Id
WHERE
	MountainId IS NULL