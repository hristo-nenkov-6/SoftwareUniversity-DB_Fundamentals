SELECT
	  c.CountryName
	, con.ContinentName
	, COUNT(r.RiverName) AS RiversCount
	, CASE
		WHEN SUM(r.[Length]) IS NULL THEN 0
		ELSE SUM(r.[Length])
	  END AS TotalLength
FROM
	Countries c
	LEFT JOIN CountriesRivers cr ON c.CountryCode = cr.CountryCode
	LEFT JOIN Rivers r ON r.Id = cr.RiverId
	JOIN Continents con ON c.ContinentCode = con.ContinentCode
GROUP BY
	c.CountryName,
	con.ContinentName
ORDER BY
	COUNT(r.RiverName) DESC,
	SUM(r.[Length]) DESC,
	c.CountryName