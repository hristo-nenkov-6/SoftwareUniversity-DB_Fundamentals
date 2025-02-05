SELECT 
	TOP(5)
	c.CountryName,
	MAX(p.Elevation) AS HighestPeakElevation,
	MAX(r.Length) AS LongestRiverLength
FROM 
	Countries c
JOIN
	CountriesRivers cr ON c.CountryCode = cr.CountryCode
JOIN
	Rivers r ON r.Id = cr.RiverId
JOIN
	MountainsCountries mc ON c.CountryCode = mc.CountryCode
JOIN
	Mountains m ON m.Id = mc.MountainId
JOIN
	Peaks p ON p.MountainId = m.Id
GROUP BY 
	c.CountryName
ORDER BY
	HighestPeakElevation DESC,
	LongestRiverLength DESC
