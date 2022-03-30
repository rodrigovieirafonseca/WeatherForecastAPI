USE ClimaTempoSimples

DECLARE @I INT =1

WHILE @I<=10
BEGIN
	DELETE FROM PrevisaoClima WHERE CidadeId=@I;
	SET @I = @I+1
END;


select *FROM PrevisaoClima

