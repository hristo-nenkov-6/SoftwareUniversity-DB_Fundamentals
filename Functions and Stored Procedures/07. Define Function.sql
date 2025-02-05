CREATE FUNCTION 
dbo.ufn_IsWordComprised
(
@setOfLetters VARCHAR(20)
, @word VARCHAR(20)
 )
RETURNS BIT
AS
BEGIN
	DECLARE @result INT = 1;
	DECLARE @iterator INT = 1;
	WHILE @iterator <= LEN(@word)
	BEGIN
		IF(CHARINDEX(SUBSTRING(@word, @iterator, 1), @setOfLetters) <= 0)
			SET @result = 0;
		SET @iterator = @iterator + 1
	END
	RETURN @result
END