-- Функция отрицания битовой величины
CREATE FUNCTION FN_BitNegation
		(@parBit bit)
	RETURNS bit
AS
	BEGIN
		-- Определение отрицания битовой величины
		DECLARE @locNotBit bit
		IF @parBit = 0
			SET @locNotBit = 1
		ELSE
			SET @locNotBit = 0
		RETURN @locNotBit
	END -- CREATE FUNCTION FN_BitNegation
GO

-- Функция строки даты формата дд.мм.гггг
CREATE FUNCTION FN_DateDDMMYYYY
		(@parDate datetime)
	RETURNS varchar(10)
AS
	BEGIN
		-- Дата в формате dd.mm.yyyy
		RETURN CONVERT(varchar(10), @parDate, 104)
	END -- CREATE FUNCTION FN_DateDDMMYYYY
GO

-- Функция строки даты формата гггг/мм/дд
CREATE FUNCTION FN_DateYYYYMMDD
		(@parDate datetime)
	RETURNS varchar(10)
AS
	BEGIN
		-- Дата в формате yyyy/mm/dd
		RETURN CONVERT(varchar(10), @parDate, 111)
	END -- CREATE FUNCTION FN_DateYYYYMMDD
GO

-- Функция строки времени формата чч:мм
CREATE FUNCTION FN_TimeHHMM
		(@parTime datetime)
	RETURNS varchar(5)
AS
	BEGIN
		-- Дата в формате hh:mm
		RETURN LEFT(CONVERT(varchar(8), @parTime, 8), 5)
	END -- CREATE FUNCTION FN_TimeHHMM
GO

-- Функция объединённой из года, месяца и дня строки даты формата гггг/мм/дд
CREATE FUNCTION FN_UnitedDate
(
	@parDay   varchar(2),
	@parMonth varchar(2),
	@parYear  varchar(4)
)
	RETURNS varchar(10)
AS
	BEGIN
		-- Дата в формате yyyy/mm/dd
		RETURN @parYear + '/' + @parMonth + '/' + @parDay
	END -- CREATE FUNCTION FN_UnitedDate
GO

-- Функция объединённого из часов и минут строки времени формата чч:мм
CREATE FUNCTION FN_UnitedTime
(
	@parHour   varchar(2),
	@parMinute varchar(2)
)
	RETURNS varchar(5)
AS
	BEGIN
		-- Время в формате hh:mm
		RETURN @parHour + ':' + @parMinute
	END -- CREATE FUNCTION FN_UnitedTime
GO