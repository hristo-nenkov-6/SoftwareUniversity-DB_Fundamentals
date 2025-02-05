SELECT
	con.ContinentName,
	SUM(CAST(c.AreaInSqKm AS BIGINT)) AS CountriesArea,
	SUM(CAST(c.[Population] AS BIGINT)) AS CountriesPopulation
FROM
	Continents con
	JOIN Countries c ON con.ContinentCode = c.ContinentCode
GROUP BY
	con.ContinentName
ORDER BY
	SUM(CAST(c.[Population] AS BIGINT)) DESC