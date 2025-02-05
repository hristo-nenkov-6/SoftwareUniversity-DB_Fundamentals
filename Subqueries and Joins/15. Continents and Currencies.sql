WITH Cte_CurrenciesByContinent (ContinentCode, CurrencyCode, CurrencyUsage) AS
(
SELECT  c.ContinentCode,
        c.CurrencyCode,
        COUNT(c.CurrencyCode) AS CurrencyUsage
FROM Continents cont
JOIN Countries c ON cont.ContinentCode = c.ContinentCode 
JOIN Currencies curr ON c.CurrencyCode = curr.CurrencyCode
GROUP BY c.CurrencyCode, c.ContinentCode
)
SELECT
       ContinentCode,
       CurrencyCode,
       CurrencyUsage
FROM Cte_CurrenciesByContinent c
WHERE 
	CurrencyUsage IN 
	(
	SELECT
		MAX(CurrencyUsage) 
	FROM 
		Cte_CurrenciesByContinent c2 
	WHERE 
		c.ContinentCode = c2.ContinentCode) 
      AND CurrencyUsage != 1
ORDER BY ContinentCode