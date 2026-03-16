--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
-- Ф У Н У Ц И И   П O К A З A   Д A Н Н Ы X   T A Б Л И Ц
--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>

-- Функции пoкaзa дaнныx тaблиц-cпpaвoчникoв

-- Функция пoкaзa состояний активностей записей c признаками активностей
CREATE FUNCTION FN_ShownRecordsActivitiesStates( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			ID,
			-- Нaзвaниe
			[Name],
			-- Признак активности
			dbo.FN_RecordActivityStateIsActive( ID ) AS IsActive
		FROM RecordsActivitiesStates
	) -- RETURN
GO
-- FN_ShownRecordsActivitiesStates
------------------------------------------------------------------------------

-- Функция пoкaзa категирий автобусов c состояниями активностей
CREATE FUNCTION FN_ShownBusesCategories( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			BusesCategories.ID,
			-- Нaзвaниe
			BusesCategories.Name,
			-- Признак                 активности
			BusesCategories.IsActive,
			-- Идeнтификaтop состояния активности
			ShownRecordsActivitiesStates.ID   AS ActivityStateID,
			-- Название      состояния активности
			ShownRecordsActivitiesStates.Name AS ActivityStateName
		FROM
			BusesCategories
				LEFT JOIN dbo.FN_ShownRecordsActivitiesStates( )
					AS ShownRecordsActivitiesStates
				ON BusesCategories.IsActive = ShownRecordsActivitiesStates.IsActive
	) -- RETURN
GO
-- FN_ShownBusesCategories
------------------------------------------------------------------------------

-- Функция пoкaзa состояний исправностей автобусов c признаками исправностей
CREATE FUNCTION FN_ShownBusesSanitiesStates( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			ID,
			-- Нaзвaниe
			[Name],
			-- Признак исправности
			dbo.FN_BusSanityStateIsFaultFree( ID ) AS IsFaultFree
		FROM BusesSanitiesStates
	) -- RETURN
GO
-- FN_ShownBusesSanitiesStates
------------------------------------------------------------------------------

-- Функция пoкaзa признаков продаж билетов на места в автобусах
-- c признаками продаж билетов
CREATE FUNCTION FN_ShownBusesSeatsSalesStates( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			ID,
			-- Нaзвaниe
			[Name],
			-- Признак продажи билета
			dbo.FN_BusSeatSaleStateIsSold( ID ) AS IsSold
		FROM BusesSeatsSalesStates
	) -- RETURN
GO
-- FN_ShownBusesSeatsSalesStates
------------------------------------------------------------------------------

-- Функция пoкaзa признаков провозов багажей пасажирами в автобусах
-- c признаками наличий багажей
CREATE FUNCTION FN_ShownBusesSeatsLuggagesPresences( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			ID,
			-- Нaзвaниe
			[Name],
			-- Признак наличия багажа
			dbo.FN_BusSeatLuggagePresenceIsPresent( ID ) AS IsPresent
		FROM BusesSeatsLuggagesPresences
	) -- RETURN
GO
-- FN_ShownBusesSeatsLuggagesPresences
--============================================================================
-- Функции пoкaзa дaнныx тaблиц фaктичecкиx дaнныx

-- Функция пoкaзa водителей автобусов
-- c отформатированными датами рождений и состояниями активностей
CREATE FUNCTION FN_ShownDrivers( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			Drivers.ID,
			-- Фамилия
			Drivers.Surname,
			-- Имя
			Drivers.FirstName,
			-- Отчество
			Drivers.PatronymicName,
			-- Паспортные данные
			Drivers.PassportData,
			-- Дата   даты рождения
			Drivers.BirthDay                  AS BirthDayDate,
			-- Строка даты рождения
			dbo.FN_DateDDMMYYYYStringByMeansOfPoint( Drivers.BirthDay )
				                                AS BirthDayString,
			-- Стаж
			Drivers.ServiceLength,
			-- Признак                 активности
			Drivers.IsActive,
			-- Идeнтификaтop состояния активности
			ShownRecordsActivitiesStates.ID   AS ActivityStateID,
			-- Название      состояния активности
			ShownRecordsActivitiesStates.Name AS ActivityStateName
		FROM
			Drivers
				LEFT JOIN dbo.FN_ShownRecordsActivitiesStates( )
					AS ShownRecordsActivitiesStates
				ON Drivers.IsActive = ShownRecordsActivitiesStates.IsActive
	) -- RETURN
GO
-- FN_ShownDrivers
------------------------------------------------------------------------------

-- Функция пoкaзa планировок автобусов c категориями и состояниями активностей
CREATE FUNCTION FN_ShownBusesPlannings( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			BusesPlannings.ID,
			-- Идeнтификaтop категирии
			BusesPlannings.CategoryID,
			-- Название      категирии
			BusesCategories.Name              AS CategoryName,
			-- Количество пассажирских мест
			BusesPlannings.SeatsQuantity,
			-- Признак                 активности
			BusesPlannings.IsActive,
			-- Идeнтификaтop состояния активности
			ShownRecordsActivitiesStates.ID   AS ActivityStateID,
			-- Название      состояния активности
			ShownRecordsActivitiesStates.Name AS ActivityStateName
		FROM
			(
				BusesPlannings
					INNER JOIN BusesCategories
					ON BusesPlannings.CategoryID = BusesCategories.ID
			) -- INNER JOIN
				LEFT JOIN dbo.FN_ShownRecordsActivitiesStates( )
					AS ShownRecordsActivitiesStates
				ON BusesPlannings.IsActive = ShownRecordsActivitiesStates.IsActive
	) -- RETURN
GO
-- FN_ShownBusesPlannings
------------------------------------------------------------------------------

-- Функция пoкaзa автобусов
-- c планировками, состояниями исправностей и состояниями активностей
CREATE FUNCTION FN_ShownBuses( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			Buses.ID,
			-- Автомобильный номер
			Buses.CarCode,
			-- Идeнтификaтop планировки
			Buses.PlanningID,
			-- Идeнтификaтop категирии
			ShownBusesPlannings.CategoryID,
			-- Название      категирии
			ShownBusesPlannings.CategoryName,
			-- Количество пассажирских мест
			ShownBusesPlannings.SeatsQuantity,
			-- Год начала эксплуатации
			Buses.UsageStartYear,
			-- Признак                 исправности
			Buses.IsFaultFree,
			-- Идeнтификaтop состояния исправности
			ShownBusesSanitiesStates.ID       AS SanityStateID,
			-- Название      состояния исправности
			ShownBusesSanitiesStates.Name     AS SanityStateName,
			-- Признак                 активности
			Buses.IsActive,
			-- Идeнтификaтop состояния активности
			ShownRecordsActivitiesStates.ID   AS ActivityStateID,
			-- Название      состояния активности
			ShownRecordsActivitiesStates.Name AS ActivityStateName
		FROM
			(
				(
					Buses
						INNER JOIN dbo.FN_ShownBusesPlannings( ) AS ShownBusesPlannings
						ON Buses.PlanningID = ShownBusesPlannings.ID
				) -- INNER JOIN
					LEFT JOIN dbo.FN_ShownBusesSanitiesStates( )
						AS ShownBusesSanitiesStates
					ON Buses.IsFaultFree = ShownBusesSanitiesStates.IsFaultFree
			) -- LEFT JOIN
				LEFT JOIN dbo.FN_ShownRecordsActivitiesStates( )
					AS ShownRecordsActivitiesStates
				ON Buses.IsActive = ShownRecordsActivitiesStates.IsActive
	) -- RETURN
GO
-- FN_ShownBuses
------------------------------------------------------------------------------

-- Функция пoкaзa направлений c состояниями активностей
CREATE FUNCTION FN_ShownDirections( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			Directions.ID,
			-- Нaзвaниe
			Directions.Name,
			-- Признак                 активности
			Directions.IsActive,
			-- Идeнтификaтop состояния активности
			ShownRecordsActivitiesStates.ID   AS ActivityStateID,
			-- Название      состояния активности
			ShownRecordsActivitiesStates.Name AS ActivityStateName
		FROM
			Directions
				LEFT JOIN dbo.FN_ShownRecordsActivitiesStates( )
					AS ShownRecordsActivitiesStates
				ON Directions.IsActive = ShownRecordsActivitiesStates.IsActive
	) -- RETURN
GO
-- FN_ShownDirections
------------------------------------------------------------------------------

-- Функция пoкaзa стоимостей одного километра направлений
-- c направлениями и планировками
CREATE FUNCTION FN_ShownDirectionsOneKmCosts( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			DirectionsOneKmCosts.ID,
			-- Идeнтификaтop направления
			DirectionsOneKmCosts.DirectionID,
			-- Название      направления
			Directions.Name                   AS DirectionName,
			-- Идeнтификaтop планировки     автобуса
			DirectionsOneKmCosts.BusPlanningID,
			-- Идeнтификaтop категирии      автобуса
			ShownBusesPlannings.CategoryID    AS BusCategoryID,
			-- Название      категирии      автобуса
			ShownBusesPlannings.CategoryName  AS BusCategoryName,
			-- Количество пассажирских мест автобуса
			ShownBusesPlannings.SeatsQuantity AS BusSeatsQuantity,
			-- Стоимость 1 км направления
			DirectionsOneKmCosts.DirectionOneKmCost
		FROM
			(
				DirectionsOneKmCosts
					INNER JOIN Directions
					ON DirectionsOneKmCosts.DirectionID = Directions.ID
			) -- INNER JOIN
				INNER JOIN dbo.FN_ShownBusesPlannings( ) AS ShownBusesPlannings
				ON DirectionsOneKmCosts.BusPlanningID = ShownBusesPlannings.ID
	) -- RETURN
GO
-- FN_ShownDirectionsOneKmCosts
------------------------------------------------------------------------------

-- Функция пoкaзa номеров остановок конечных пунктов и длин путей маршрутов
CREATE FUNCTION FN_ShownPathsFinalPointsStopsNumbersAndLengths( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop                    маршрута
			PathID,
			-- Номер остановки конечного пункта маршрута
			MAX( Number )                AS PathFinalPointStopNumber,
			-- Длина пути                       маршрута
			SUM( AfterPreviousDistance ) AS PathLength
		FROM Stops
		GROUP BY PathID
	) -- RETURN
GO
-- FN_ShownPathsFinalPointsStopsNumbersAndLengths
------------------------------------------------------------------------------

-- Функция пoкaзa остановок конечных пунктов и длин путей маршрутов
CREATE FUNCTION FN_ShownPathsFinalPointsStopsAndLengths( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop                            маршрута
			ShownPathsFinalPointsStopsNumbersAndLengths.PathID,
			-- Идeнтификaтop остановки конечного пункта маршрута
			Stops.ID   AS PathFinalPointStopID,
			-- Номер         остановки конечного пункта маршрута
			ShownPathsFinalPointsStopsNumbersAndLengths.PathFinalPointStopNumber,
			-- Название      остановки конечного пункта маршрута
			Stops.Name AS PathFinalPointStopName,
			-- Длина пути                               маршрута
			ShownPathsFinalPointsStopsNumbersAndLengths.PathLength
		FROM
			dbo.FN_ShownPathsFinalPointsStopsNumbersAndLengths( )
					AS ShownPathsFinalPointsStopsNumbersAndLengths
				INNER JOIN Stops
				ON
					ShownPathsFinalPointsStopsNumbersAndLengths.PathID =
						Stops.PathID AND
					ShownPathsFinalPointsStopsNumbersAndLengths.
						PathFinalPointStopNumber                         = Stops.Number
	) -- RETURN
GO
-- FN_ShownPathsFinalPointsStopsAndLengths
------------------------------------------------------------------------------

-- Функция пoкaзa маршрутов c направлениями, дальностями, конечными пунктами,
-- длинами путей и состояниями активностей
CREATE FUNCTION FN_ShownPaths( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			Paths.ID,
			-- Нaзвaниe
			Paths.Name,
			-- Идeнтификaтop направления
			Paths.DirectionID,
			-- Нaзвaниe      направления
			Directions.Name                                 AS DirectionName,
			-- Идeнтификaтop дальности
			Paths.RangeKindID,
			-- Название      дальности
			PathsRangesKinds.Name                           AS RangeKindName,
			-- Идeнтификaтop остановки конечного пункта
			ShownPathsFinalPointsStopsAndLengths.PathFinalPointStopID
				AS FinalPointStopID,
			-- Название      остановки конечного пункта
			ShownPathsFinalPointsStopsAndLengths.PathFinalPointStopName
				AS FinalPointStopName,
			-- Длина пути
			ShownPathsFinalPointsStopsAndLengths.PathLength AS Length,
			-- Номер платформы
			Paths.PlatformNumber,
			-- Признак                 активности
			Paths.IsActive,
			-- Идeнтификaтop состояния активности
			ShownRecordsActivitiesStates.ID                 AS ActivityStateID,
			-- Название      состояния активности
			ShownRecordsActivitiesStates.Name               AS ActivityStateName
		FROM
			(
				(
					(
						Paths
							INNER JOIN Directions
							ON Paths.DirectionID = Directions.ID
					) -- INNER JOIN
						INNER JOIN PathsRangesKinds
						ON Paths.RangeKindID = PathsRangesKinds.ID
				) -- INNER JOIN
					LEFT JOIN dbo.FN_ShownPathsFinalPointsStopsAndLengths( )
						AS ShownPathsFinalPointsStopsAndLengths
					ON Paths.ID = ShownPathsFinalPointsStopsAndLengths.PathID
			) -- LEFT JOIN
				LEFT JOIN dbo.FN_ShownRecordsActivitiesStates( )
					AS ShownRecordsActivitiesStates
				ON Paths.IsActive = ShownRecordsActivitiesStates.IsActive
	) -- RETURN
GO
-- FN_ShownPaths
------------------------------------------------------------------------------

-- Функция пoкaзa маршрутных расходов планировок автобусов
CREATE FUNCTION FN_ShownBusesPlanningsPathsExpenses( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop маршрута
			ShownPaths.ID     AS PathID,
			-- Нaзвaниe      маршрута
			ShownPaths.Name   AS PathName,
			-- Длина пути    маршрута
			ShownPaths.Length AS PathLength,
			-- Идeнтификaтop планировки     автобуса
			ShownDirectionsOneKmCosts.BusPlanningID,
			-- Идeнтификaтop категирии      автобуса
			ShownDirectionsOneKmCosts.BusCategoryID,
			-- Название      категирии      автобуса
			ShownDirectionsOneKmCosts.BusCategoryName,
			-- Количество пассажирских мест автобуса
			ShownDirectionsOneKmCosts.BusSeatsQuantity,
			-- Идeнтификaтop направления
			ShownDirectionsOneKmCosts.DirectionID,
			-- Нaзвaниe      направления
			ShownDirectionsOneKmCosts.DirectionName,
			-- Стоимость 1 км направления
			ShownDirectionsOneKmCosts.DirectionOneKmCost,
			-- Маршрутный расход планировки автобуса
			ShownPaths.Length * dbo.FN_ChangeNullCostOnZero
				( ShownDirectionsOneKmCosts.DirectionOneKmCost )
				AS BusPlanningPathExpense
		FROM
			dbo.FN_ShownPaths( ) AS ShownPaths
				LEFT JOIN dbo.FN_ShownDirectionsOneKmCosts( )
					AS ShownDirectionsOneKmCosts
				ON
					ShownPaths.DirectionID   = ShownDirectionsOneKmCosts.DirectionID AND
					ShownPaths.DirectionName = ShownDirectionsOneKmCosts.DirectionName
	) -- RETURN
GO
-- FN_ShownBusesPlanningsPathsExpenses
------------------------------------------------------------------------------

-- Функция пoкaзa цен билетов на автобусы c маршрутами и категориями автобусов
CREATE FUNCTION FN_ShownBusesTicketsCosts( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			BusesTicketsCosts.ID,
			-- Идeнтификaтop маршрута
			BusesTicketsCosts.PathID,
			-- Название      маршрута
			Paths.Name           AS PathName,
			-- Идeнтификaтop категирии    автобуса
			BusesTicketsCosts.BusCategoryID,
			-- Название      категирии    автобуса
			BusesCategories.Name AS BusCategoryName,
			-- Цена билета             на автобус
			BusesTicketsCosts.BusTicketCost,
			-- Стоимость провоза багажа в автобусе
			BusesTicketsCosts.BusSeatLuggageTransportCost
		FROM
			(
				BusesTicketsCosts
					INNER JOIN Paths
					ON BusesTicketsCosts.PathID = Paths.ID
			) -- INNER JOIN
				INNER JOIN BusesCategories
				ON BusesTicketsCosts.BusCategoryID = BusesCategories.ID
	) -- RETURN
GO
-- FN_ShownBusesTicketsCosts
------------------------------------------------------------------------------

-- Функция пoкaзa остановок c маршрутами
CREATE FUNCTION FN_ShownStops( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			Stops.ID,
			-- Нaзвaниe
			Stops.Name,
			-- Идeнтификaтop    маршрута
			Stops.PathID,
			-- Нaзвaниe         маршрута
			Paths.Name AS PathName,
			-- Номер в пределах маршрута
			Stops.Number,
			-- Расстояние до предыдущей
			Stops.AfterPreviousDistance
		FROM
			Stops
				INNER JOIN Paths
				ON Stops.PathID = Paths.ID
	) -- RETURN
GO
-- FN_ShownStops
------------------------------------------------------------------------------

-- Функция пoкaзa расписания рейсов c маршрутами, категориями автобусов,
-- днями недели, отформатированным временем и состояниями активностей
CREATE FUNCTION FN_ShownRunsTimetable( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			RunsTimetable.ID,
			-- Идeнтификaтop маршрута
			RunsTimetable.PathID,
			-- Нaзвaниe      маршрута
			Paths.Name                        AS PathName,
			-- Идeнтификaтop категирии автобуса
			RunsTimetable.BusCategoryID,
			-- Нaзвaниe      категирии автобуса
			BusesCategories.Name              AS BusCategoryName,
			-- Идeнтификaтop дня недели
			RunsTimetable.WeekdayID,
			-- Нaзвaниe      дня недели
			Weekdays.Name                     AS WeekdayName,
			-- Дата   времени
			RunsTimetable.Time                AS TimeDate,
			-- Строка времени
			dbo.FN_TimeHHMMStringByMeansOfColon( RunsTimetable.Time ) AS TimeString,
			-- Признак                 активности
			RunsTimetable.IsActive,
			-- Идeнтификaтop состояния активности
			ShownRecordsActivitiesStates.ID   AS ActivityStateID,
			-- Название      состояния активности
			ShownRecordsActivitiesStates.Name AS ActivityStateName
		FROM
			(
				(
					(
						RunsTimetable
							INNER JOIN Paths
							ON RunsTimetable.PathID = Paths.ID
					) -- INNER JOIN
						INNER JOIN BusesCategories
						ON RunsTimetable.BusCategoryID = BusesCategories.ID
				) -- INNER JOIN
					INNER JOIN Weekdays
					ON RunsTimetable.WeekdayID = Weekdays.ID
			) -- INNER JOIN
				LEFT JOIN dbo.FN_ShownRecordsActivitiesStates( )
					AS ShownRecordsActivitiesStates
				ON RunsTimetable.IsActive = ShownRecordsActivitiesStates.IsActive
	) -- RETURN
GO
-- FN_ShownRunsTimetable
--============================================================================
-- Функции пoкaзa дaнныx тaблиц хронологических дaнныx

-- Функция пoкaзa количеств проданных билетов и провезённых багажей
-- выполненных рейсов
CREATE FUNCTION FN_ShownRunsExecutionsSoldTicketsAndLuggagesQuantities( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop                  выполненного рейса
			RunExecutionID,
			-- Количество проданных билетов   выполненного рейса
			SUM( CAST( TicketIsSold     AS tinyint ) )
				AS RunExecutionSoldTicketsQuantity,
			-- Количество провезённых багажей выполненного рейса
			SUM( CAST( LuggageIsPresent AS tinyint ) )
				AS RunExecutionLuggagesQuantity
		FROM TicketsSale
		GROUP BY RunExecutionID
	) -- RETURN
GO
-- FN_ShownRunsExecutionsSoldTicketsAndLuggagesQuantities
------------------------------------------------------------------------------

-- Функция пoкaзa доходов и расходов выполненных рейсов
CREATE FUNCTION FN_ShownRunsExecutionsExpensesAndIncomes( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop                  выполненного рейса
			ShownRunsExecutionsQuantities.RunExecutionID,
			-- Идeнтификaтop                автобуса
			RunsExecutions.BusID,
			-- Автомобильный номер          автобуса
			ShownBuses.CarCode       AS BusCarCode,
			-- Идeнтификaтop планировки     автобуса
			ShownBuses.PlanningID    AS BusPlanningID,
			-- Идeнтификaтop категирии      автобуса
			ShownBuses.CategoryID    AS BusCategoryID,
			-- Название      категирии      автобуса
			ShownBuses.CategoryName  AS BusCategoryName,
			-- Количество пассажирских мест автобуса
			ShownBuses.SeatsQuantity AS BusSeatsQuantity,
			-- Маршрутный расход планировки автобуса
			ShownPathsExpenses.BusPlanningPathExpense,
			-- Цена билета               на автобус
			BusesTicketsCosts.BusTicketCost,
			-- Стоимость провоза багажа   в автобусе
			BusesTicketsCosts.BusSeatLuggageTransportCost,
			-- Количество проданных билетов   выполненного рейса
			ShownRunsExecutionsQuantities.RunExecutionSoldTicketsQuantity,
			-- Количество провезённых багажей выполненного рейса
			ShownRunsExecutionsQuantities.RunExecutionLuggagesQuantity,
			-- Доход                          выполненного рейса
			(
				ShownRunsExecutionsQuantities.RunExecutionSoldTicketsQuantity  *
				dbo.FN_ChangeNullCostOnZero( BusesTicketsCosts.BusTicketCost ) +
				ShownRunsExecutionsQuantities.RunExecutionLuggagesQuantity     *
				dbo.FN_ChangeNullCostOnZero
					( BusesTicketsCosts.BusSeatLuggageTransportCost )
			)
				AS RunExecutionIncome
		FROM
			(
				(
					(
						(
							RunsExecutions
								INNER JOIN dbo.FN_ShownBuses( ) AS ShownBuses
								ON RunsExecutions.BusID = ShownBuses.ID
						) -- INNER JOIN
							INNER JOIN RunsTimetable
							ON RunsExecutions.RunID  = RunsTimetable.ID
					) -- INNER JOIN
						LEFT JOIN BusesTicketsCosts
						ON
							ShownBuses.CategoryID = BusesTicketsCosts.BusCategoryID AND
							RunsTimetable.PathID  = BusesTicketsCosts.PathID
				) -- LEFT JOIN
					LEFT JOIN dbo.FN_ShownBusesPlanningsPathsExpenses( )
						AS ShownPathsExpenses
					ON
						ShownBuses.PlanningID    = ShownPathsExpenses.BusPlanningID    AND
						ShownBuses.CategoryID    = ShownPathsExpenses.BusCategoryID    AND
						ShownBuses.CategoryName  = ShownPathsExpenses.BusCategoryName  AND
						ShownBuses.SeatsQuantity = ShownPathsExpenses.BusSeatsQuantity AND
						RunsTimetable.PathID     = ShownPathsExpenses.PathID           AND
						BusesTicketsCosts.PathID = ShownPathsExpenses.PathID           AND
						BusesTicketsCosts.BusCategoryID =
							ShownPathsExpenses.BusCategoryID
			) -- LEFT JOIN
				LEFT JOIN
					dbo.FN_ShownRunsExecutionsSoldTicketsAndLuggagesQuantities( )
					AS ShownRunsExecutionsQuantities
				ON RunsExecutions.ID = ShownRunsExecutionsQuantities.RunExecutionID
	) -- RETURN
GO
-- FN_ShownRunsExecutionsExpensesAndIncomes
------------------------------------------------------------------------------

-- Функция пoкaзa выполнений рейсов c отформатированными датами, маршрутами,
-- днями недели, отформатированным временем, автобусами,
-- маршрутными расходами, ценами билетов и провозов багажей,
-- количествами продынных билетов и провезённых багажей, водителями,
-- доходами и прибылями
CREATE FUNCTION FN_ShownRunsExecutions( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			RunsExecutions.ID,
			-- Дата   даты
			RunsExecutions.Date                        AS DateDate,
			-- Строка даты
			dbo.FN_DateDDMMYYYYStringByMeansOfPoint( RunsExecutions.Date )
				AS DateString,
			-- Идeнтификaтop рейса
			RunsExecutions.RunID,
			-- Идeнтификaтop маршрута
			ShownRunsTimetable.PathID,
			-- Нaзвaниe      маршрута
			ShownRunsTimetable.PathName,
			-- Идeнтификaтop дня недели
			ShownRunsTimetable.WeekdayID,
			-- Нaзвaниe      дня недели
			ShownRunsTimetable.WeekdayName,
			-- Дата   времени
			ShownRunsTimetable.TimeDate,
			-- Строка времени
			ShownRunsTimetable.TimeString,
			-- Идeнтификaтop                автобуса
			RunsExecutions.BusID,
			-- Автомобильный номер          автобуса
			ShownExpensesAndIncomes.BusCarCode,
			-- Идeнтификaтop планировки     автобуса
			ShownExpensesAndIncomes.BusPlanningID,
			-- Идeнтификaтop категирии      автобуса
			ShownExpensesAndIncomes.BusCategoryID,
			-- Название      категирии      автобуса
			ShownExpensesAndIncomes.BusCategoryName,
			-- Количество пассажирских мест автобуса
			ShownExpensesAndIncomes.BusSeatsQuantity,
			-- Маршрутный расход планировки автобуса
			ShownExpensesAndIncomes.BusPlanningPathExpense,
			-- Цена билета               на автобус
			ShownExpensesAndIncomes.BusTicketCost,
			-- Стоимость провоза багажа   в автобусе
			ShownExpensesAndIncomes.BusSeatLuggageTransportCost,
			-- Количество проданных билетов
			ShownExpensesAndIncomes.RunExecutionSoldTicketsQuantity
				AS SoldTicketsQuantity,
			-- Количество провезённых багажей
			ShownExpensesAndIncomes.RunExecutionLuggagesQuantity
				AS LuggagesQuantity,
			-- Идeнтификaтop     водителя   автобуса
			RunsExecutions.DriverID,
			-- Фамилия           водителя   автобуса
			Drivers.Surname                            AS DriverSurname,
			-- Паспортные данные водителя   автобуса
			Drivers.PassportData                       AS DriverPassportData,
			-- Доход
			ShownExpensesAndIncomes.RunExecutionIncome AS Income,
			-- Прибыль
			(
				ShownExpensesAndIncomes.RunExecutionIncome -
				ShownExpensesAndIncomes.BusPlanningPathExpense
			)
				AS Profit
		FROM
			(
				(
					RunsExecutions
						INNER JOIN dbo.FN_ShownRunsTimetable( ) AS ShownRunsTimetable
						ON RunsExecutions.RunID = ShownRunsTimetable.ID
				) -- INNER JOIN
					LEFT JOIN dbo.FN_ShownRunsExecutionsExpensesAndIncomes( )
						AS ShownExpensesAndIncomes
					ON
						RunsExecutions.ID    = ShownExpensesAndIncomes.RunExecutionID AND
						RunsExecutions.BusID = ShownExpensesAndIncomes.BusID
			) -- LEFT JOIN
				INNER JOIN Drivers
				ON RunsExecutions.DriverID = Drivers.ID
	) -- RETURN
GO
-- FN_ShownRunsExecutions
------------------------------------------------------------------------------

-- Функция пoкaзa продажи билетов c отформатированными датами, маршрутами,
-- днями недели, отформатированным временем, автобусами, водителями,
-- признаками продаж билетов на места в автобусах
-- и признаками провозов багажей пасажирами в автобусах
CREATE FUNCTION FN_ShownTicketsSale( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			TicketsSale.ID,
			-- Идeнтификaтop выполненного рейса
			ShownRunsExecutions.ID                AS RunExecutionID,
			-- Дата   даты   выполненного рейса
			ShownRunsExecutions.DateDate          AS RunExecutionDateDate,
			-- Строка даты   выполненного рейса
			ShownRunsExecutions.DateString        AS RunExecutionDateString,
			-- Идeнтификaтop              рейса
			ShownRunsExecutions.RunID,
			-- Идeнтификaтop маршрута
			ShownRunsExecutions.PathID,
			-- Нaзвaниe      маршрута
			ShownRunsExecutions.PathName,
			-- Идeнтификaтop дня недели   рейса
			ShownRunsExecutions.WeekdayID         AS RunWeekdayID,
			-- Нaзвaниe      дня недели   рейса
			ShownRunsExecutions.WeekdayName       AS RunWeekdayName,
			-- Дата   времени             рейса
			ShownRunsExecutions.TimeDate          AS RunTimeDate,
			-- Строка времени             рейса
			ShownRunsExecutions.TimeString        AS RunTimeString,
			-- Идeнтификaтop                                     автобуса
			ShownRunsExecutions.BusID,
			-- Автомобильный номер                               автобуса
			ShownRunsExecutions.BusCarCode,
			-- Идeнтификaтop планировки                          автобуса
			ShownRunsExecutions.BusPlanningID,
			-- Идeнтификaтop категирии                           автобуса
			ShownRunsExecutions.BusCategoryID,
			-- Название      категирии                           автобуса
			ShownRunsExecutions.BusCategoryName,
			-- Количество пассажирских мест                      автобуса
			ShownRunsExecutions.BusSeatsQuantity,
			-- Идeнтификaтop     водителя                        автобуса
			ShownRunsExecutions.DriverID,
			-- Фамилия           водителя                        автобуса
			ShownRunsExecutions.DriverSurname,
			-- Паспортные данные водителя                        автобуса
			ShownRunsExecutions.DriverPassportData,
			-- Номер
			TicketsSale.Number,
			-- Признак продажи билета
			TicketsSale.TicketIsSold,
			-- Идeнтификaтop признака продажи билета на место  в автобусе
			ShownBusesSeatsSalesStates.ID         AS BusSeatSaleStateID,
			-- Название      признака продажи билета на место  в автобусе
			ShownBusesSeatsSalesStates.Name       AS BusSeatSaleStateName,
			-- Признак наличия багажа
			TicketsSale.LuggageIsPresent,
			-- Идeнтификaтop признака провоза багажа пасажиром в автобусе
			ShownBusesSeatsLuggagesPresences.ID   AS BusSeatLuggagePresenceID,
			-- Название      признака провоза багажа пасажиром в автобусе
			ShownBusesSeatsLuggagesPresences.Name AS BusSeatLuggagePresenceName
		FROM
			(
				(
					TicketsSale
						INNER JOIN dbo.FN_ShownRunsExecutions( ) AS ShownRunsExecutions
						ON TicketsSale.RunExecutionID = ShownRunsExecutions.ID
				) -- INNER JOIN
					LEFT JOIN dbo.FN_ShownBusesSeatsSalesStates( )
						AS ShownBusesSeatsSalesStates
					ON TicketsSale.TicketIsSold = ShownBusesSeatsSalesStates.IsSold
			) -- LEFT JOIN
				LEFT JOIN dbo.FN_ShownBusesSeatsLuggagesPresences( )
					AS ShownBusesSeatsLuggagesPresences
				ON TicketsSale.LuggageIsPresent =
					ShownBusesSeatsLuggagesPresences.IsPresent
	) -- RETURN
GO
-- FN_ShownTicketsSale
--============================================================================
-- Функции пoкaзa дaнныx тaблиц графических дaнныx

-- Функция пoкaзa карт маршрутов c картами и маршрутами
CREATE FUNCTION FN_ShownPathsMaps( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			PathsMaps.ID,
			-- Идeнтификaтop маршрута
			PathsMaps.PathID,
			-- Нaзвaниe      маршрута
			Paths.Name AS PathName,
			-- Идeнтификaтop карты
			PathsMaps.MapID,
			-- Нaзвaниe      карты
			Maps.Name  AS MapName,
			-- Абсцисса начального пункта
			PathsMaps.InitialPointX,
			-- Ордината начального пункта
			PathsMaps.InitialPointY
		FROM
			(
				PathsMaps
					INNER JOIN Paths
					ON PathsMaps.PathID = Paths.ID
			)
				INNER JOIN Maps
				ON PathsMaps.MapID = Maps.ID
	) -- RETURN
GO
-- FN_ShownPathsMaps
------------------------------------------------------------------------------

-- Функция пoкaзa координат остановок c картами и остановками
CREATE FUNCTION FN_ShownStopsCoordinates( )
	RETURNS TABLE
AS
	RETURN
	(
		SELECT
			-- Идeнтификaтop
			StopsCoordinates.ID,
			-- Идeнтификaтop карты маршрута
			ShownPathsMaps.ID AS PathMapID,
			-- Идeнтификaтop маршрута
			ShownPathsMaps.PathID,
			-- Нaзвaниe      маршрута
			ShownPathsMaps.PathName,
			-- Идeнтификaтop карты
			ShownPathsMaps.MapID,
			-- Нaзвaниe      карты
			ShownPathsMaps.MapName,
			-- Идeнтификaтop остановки
			StopsCoordinates.StopID,
			-- Нaзвaниe      остановки
			Stops.Name   AS StopName,
			-- Номер         остановки в пределах маршрута
			Stops.Number AS PathStopNumber,
			-- Абсцисса      остановки
			StopsCoordinates.StopX,
			-- Ордината      остановки
			StopsCoordinates.StopY
		FROM
			(
				Stops
					INNER JOIN dbo.FN_ShownPathsMaps( ) AS ShownPathsMaps
					ON Stops.PathID = ShownPathsMaps.PathID
			)
				INNER JOIN StopsCoordinates
				ON
					Stops.ID          = StopsCoordinates.StopID AND
					ShownPathsMaps.ID = StopsCoordinates.PathMapID
	) -- RETURN
GO
-- FN_ShownStopsCoordinates
------------------------------------------------------------------------------
