SELECT 
	  i.[Name]
	, i.Price
	, i.MinLevel
	, s.Strength AS Strength
	, s.Defence AS Defence
	, s.Speed AS Speed
	, s.Luck AS Luck
	, s.Mind AS Mind
FROM
	Items i
	JOIN [Statistics] s ON i.StatisticId = s.Id
WHERE
s.Mind > 
(
	SELECT AVG(Mind)
	FROM [Statistics]
)
AND
s.Luck > 
(
	SELECT AVG(Luck)
	FROM [Statistics]
)
AND
s.Speed > 
(
	SELECT AVG(Speed)
	FROM [Statistics]
)
ORDER BY
	i.[Name]
