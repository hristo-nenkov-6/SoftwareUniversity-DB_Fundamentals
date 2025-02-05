SELECT
	DepositGroup,
	MAX(MagicWandSize) AS LongestMagicWord
FROM
	WizzardDeposits
GROUP BY
	DepositGroup