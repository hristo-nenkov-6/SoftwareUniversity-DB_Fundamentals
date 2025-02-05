SELECT
	p.PeakName
	, m.MountainRange
	, p.Elevation
FROM
	Peaks p
	JOIN Mountains m ON p.MountainId = m.Id
ORDER BY
	Elevation DESC,
	p.PeakName