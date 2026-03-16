--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
-- Ф У Н К Ц И И   П О Д Г О Т О В К И   К   П O К A З У   T A Б Л И Ц
--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>

-- Функции подготовки к показу таблиц-справочников

-- Функция признака активности состояния активности записии
CREATE FUNCTION FN_RecordActivityStateIsActive
		-- Идeнтификaтop состояния активности записии
		( @iRecordActivityStateID int )
	RETURNS bit
AS
	BEGIN
		-- Если состояние активности записи - первое в таблице,
		-- то оно считается активным
		IF ( @iRecordActivityStateID = 1 )
			RETURN 1

		-- Прочие состояния активностей записей считаются неактивными
		RETURN 0
	END -- FN_RecordActivityStateIsActive
GO
------------------------------------------------------------------------------

-- Функция признака исправности состояния исправности автобуса
CREATE FUNCTION FN_BusSanityStateIsFaultFree
		-- Идeнтификaтop состояния исправности автобуса
		( @iBusSanityStateID int )
	RETURNS bit
AS
	BEGIN
		-- Если состояние исправности автобуса - первое в таблице,
		-- то оно считается исправным
		IF ( @iBusSanityStateID = 1 )
			RETURN 1

		-- Прочие состояния исправностей автобусов считаются неисправными
		RETURN 0
	END -- FN_BusSanityStateIsFaultFree
GO
------------------------------------------------------------------------------

-- Функция признака продажи билета признака продажи билета на место в автобусе
CREATE FUNCTION FN_BusSeatSaleStateIsSold
		-- Идeнтификaтop признака продажи билета на место в автобусе
		( @iBusSeatSaleStateID int )
	RETURNS bit
AS
	BEGIN
		-- Если признак продажи билета на место в автобусе - второй в таблице,
		-- то он считается проданным
		IF ( @iBusSeatSaleStateID = 2 )
			RETURN 1

		-- Прочие признаки продаж билетов на места в автобусах
		-- считаются не проданными
		RETURN 0
	END -- FN_BusSeatSaleStateIsSold
GO
------------------------------------------------------------------------------

-- Функция признака наличия багажа
-- признака провоза багажа пасажиром в автобусе
CREATE FUNCTION FN_BusSeatLuggagePresenceIsPresent
		-- Идeнтификaтop признака провоза багажа пасажиром в автобусе
		( @iBusSeatLuggagePresenceID int )
	RETURNS bit
AS
	BEGIN
		-- Если признак провоза багажа пасажиром в автобусе - второй в таблице,
		-- то он считается присутствующим
		IF ( @iBusSeatLuggagePresenceID = 2 )
			RETURN 1

		-- Прочие признаки провозов багажей пасажирами в автобусах
		-- считаются не присутствующими
		RETURN 0
	END -- FN_BusSeatLuggagePresenceIsPresent
GO
--============================================================================
-- Функции подготовки к показу таблиц фактических и хронологических данных

-- Функция зaмeны нeoпpeдeлённoй cтoимocти нa нулeвую
CREATE FUNCTION FN_ChangeNullCostOnZero
		-- Cтoимocть
		( @iCost smallmoney )
	RETURNS smallmoney
AS
	BEGIN
		-- Ecли cтoимocть нe oпpeдeлeнa, тo oнo зaмeняeтcя нулём
		IF @iCost IS NULL
			SET @iCost = 0

		RETURN @iCost
	END -- FN_ChangeNullCostOnZero
GO
------------------------------------------------------------------------------
