CREATE FUNCTION
ufn_CalculateFutureValue(@sum DECIMAL(15, 4),
						 @interestrate FLOAT,
						 @years INT)
RETURNS DECIMAL(15, 4)
AS
BEGIN
	DECLARE @result DECIMAL(15, 4);
	SET @result = @sum * (POWER((1 + @interestrate), CAST((@years) AS DECIMAL)))
	RETURN @result
END