SELECT 
	TOP(5)
	CCC.Country,
	CCC.[Highest Peak Name],
	CCC.[Highest Peak Elevation],
	CCC.Mountain
FROM
(
SELECT 
	c.CountryName AS Country,
	CASE
		WHEN MAX(p.Elevation) IS NULL THEN '(no highest peak)'
		ELSE p.PeakName
	END AS [Highest Peak Name],
	CASE
		WHEN MAX(p.Elevation) IS NULL THEN 0
		ELSE MAX(p.Elevation)
	END AS [Highest Peak Elevation],
	CASE
		WHEN MAX(p.Elevation) IS NULL THEN '(no mountain)'
		ELSE m.MountainRange
	END AS Mountain,
	DENSE_RANK() OVER(PARTITION BY c.CountryName ORDER BY MAX(p.Elevation) DESC) AS Ranking
FROM 
	Countries c
LEFT JOIN
	MountainsCountries mc ON c.CountryCode = mc.CountryCode
LEFT JOIN
	Mountains m ON m.Id = mc.MountainId
LEFT JOIN
	Peaks p ON p.MountainId = m.Id
GROUP BY 
	c.CountryName,
	p.PeakName,
	m.MountainRange) AS CCC
WHERE
	CCC.Ranking = 1 
ORDER BY 
	Country,
	[Highest Peak Name]