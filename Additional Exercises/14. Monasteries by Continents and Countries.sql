UPDATE Countries
SET CountryName = 'Burma'
WHERE
	CountryName = 'Myanmar'

INSERT INTO Monasteries([Name], CountryCode)
	SELECT
		'Myin-Tin-Daik', 
		CountryCode
	FROM
		Countries
	WHERE CountryName = 'Myanmar'

INSERT INTO Monasteries([Name], CountryCode)
	SELECT
		'Hanga Abbey', 
		CountryCode
	FROM
		Countries
	WHERE CountryName = 'Tanzania'

SELECT 
	con.ContinentName,
	c.CountryName,
	COUNT(m.Id) AS MonasteriesCount
FROM
	Monasteries m
	RIGHT JOIN Countries c ON m.CountryCode = c.CountryCode
	JOIN Continents con ON c.ContinentCode = con.ContinentCode
WHERE
	c.IsDeleted = 0
GROUP BY
	con.ContinentName,
	c.CountryName
ORDER BY 
	COUNT(m.Id) DESC,
	c.CountryName
