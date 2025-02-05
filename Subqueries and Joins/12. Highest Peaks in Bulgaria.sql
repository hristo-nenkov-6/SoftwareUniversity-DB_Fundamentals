SELECT
	c.CountryCode,
	m.MountainRange,
	p.PeakName,
	p.Elevation
FROM
	Countries c
JOIN
	MountainsCountries mc ON c.CountryCode = mc.CountryCode
JOIN 
	Mountains m ON m.Id = mc.MountainId
JOIN 
	Peaks p ON m.Id = p.MountainId 
WHERE
	c.CountryCode = 'BG'
	AND
	p.Elevation > 2835
ORDER BY
	p.Elevation DESC