USE ClimaTempoSimples

DECLARE @IDCITY INT =1;
DECLARE @RANDTEMP1 FLOAT;
DECLARE @RANDTEMP2 FLOAT;
DECLARE @RANDTEMPMIN FLOAT;
DECLARE @RANDTEMPMAX FLOAT;
DECLARE @CLIMA NVARCHAR(30);
DECLARE @DATE DATETIME = '2022-01-01';
DECLARE @I INT =1;


WHILE @IDCITY <= 11
BEGIN
	WHILE @I <= 360
	BEGIN
		SET @RANDTEMP1 = RAND()*(38-4)+4;
		SET @RANDTEMP2 = RAND()*(38-4)+4;

		SET @RANDTEMPMIN = IIF(@RANDTEMP2>@RANDTEMP1, @RANDTEMP1, @RANDTEMP2);
		SET @RANDTEMPMAX = IIF(@RANDTEMP2>@RANDTEMP1, @RANDTEMP2, @RANDTEMP1);

		SET @RANDTEMPMIN = IIF(@RANDTEMPMAX-@RANDTEMPMIN>15,@RANDTEMPMIN+10,@RANDTEMPMIN)

        SET @CLIMA = IIF(@RANDTEMPMAX>=12,'Tempestuoso',@CLIMA);
		SET @CLIMA = IIF(@RANDTEMPMAX>=18,'Chuvoso',@CLIMA);
		SET @CLIMA = IIF(@RANDTEMPMAX>=22,'Nublado',@CLIMA);
		SET @CLIMA = IIF(@RANDTEMPMAX>=26,'Instavel',@CLIMA);
		SET @CLIMA = IIF(@RANDTEMPMAX>=30,'Ensolarado',@CLIMA);

		INSERT Into PrevisaoClima(CidadeId,DataPrevisao,Clima,TemperaturaMinima,TemperaturaMaxima)
		VALUES(@IDCITY,@DATE,@CLIMA,@RANDTEMPMIN,@RANDTEMPMAX)

		SET @DATE =DATEADD(day,1,@DATE);
		SET @I =@I +1;
	END;
	SET @IDCITY = @IDCITY+1;
	SET @I = 1;
	SET @DATE = DATEADD(day,-360,@DATE);
END;


select *FROM PrevisaoClima

