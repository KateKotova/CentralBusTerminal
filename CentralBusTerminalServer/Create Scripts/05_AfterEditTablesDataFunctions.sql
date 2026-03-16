--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
-- Ф У Н К Ц И И,   В Ы П О Л Н Я Е М Ы Е
-- П О С Л Е   Р Е Д А К Т И Р О В А Н И Я   З А П И С Е Й   T A Б Л И Ц
--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>

-- Функция получения подчинённой активности записи таблицы:
-- главная активность влияет на подчинёную таки образом,
-- что если главная активность ложна, то подчинённая также ложна
CREATE FUNCTION FN_GetDependentActivity
(
	-- Главная активность
	@iMainActivity      bit,
	-- Подчинёная активность
	@iDependentActivity bit
)
	RETURNS bit
AS
	BEGIN
		-- Если главная активность ложна, то подчинённая также ложна
		IF ( @iMainActivity = 0 )
			RETURN 0

		-- Подчинённая активность не изменяется,
		-- так как главная активность истинна
		RETURN @iDependentActivity
	END -- FN_GetDependentActivity
GO
--============================================================================
-- Функции получения подчинённых активностей зaпиceй тaблиц фaктичecкиx дaнныx

-- Функция получения подчинённой активности планировки автобуса
CREATE FUNCTION FN_GetBusPlanningDependentActivity
(
	-- Идeнтификaтop категирии автобуса
	@iBusCategoryID       int,
	-- Признак активности планировки автобуса
	@iBusPlanningIsActive bit
)
	RETURNS bit
AS
	BEGIN
		-- Если признак активности планировки автобуса истинный,
		-- то подвергается влиянию, поэтому может измениться,
		-- то есть подчинённая активность планировки автобуса
		-- может отличаться от него
		IF ( @iBusPlanningIsActive = 1 )
			BEGIN
				-- Главная активность категории автобуса
				DECLARE @busCategoryMainActivity bit

				-- Получение главной активности категории автобуса
				SELECT @busCategoryMainActivity = IsActive
				FROM BusesCategories
				WHERE ID = @iBusCategoryID

				-- Возврат подчинённой активности планировки автобуса
				RETURN dbo.FN_GetDependentActivity
					( @busCategoryMainActivity, @iBusPlanningIsActive )
			END -- IF

		-- Подчинённая активность планировки автобуса
		-- соответствует ложному признаку активности
		RETURN @iBusPlanningIsActive
	END -- FN_GetBusPlanningDependentActivity
GO
------------------------------------------------------------------------------

-- Функция получения подчинённой активности автобуса
CREATE FUNCTION FN_GetBusDependentActivity
(
	-- Идeнтификaтop планировки автобуса
	@iBusPlanningID int,
	-- Признак активности автобуса
	@iBusIsActive   bit
)
	RETURNS bit
AS
	BEGIN
		-- Если признак активности автобуса истинный,
		-- то подвергается влиянию, поэтому может измениться,
		-- то есть подчинённая активность автобуса может отличаться от него
		IF ( @iBusIsActive = 1 )
			BEGIN
				-- Главная активность планировки автобуса
				DECLARE @busPlanningMainActivity bit

				-- Получение главной активности планировки автобуса
				SELECT @busPlanningMainActivity = IsActive
				FROM BusesPlannings
				WHERE ID = @iBusPlanningID

				-- Возврат подчинённой активности автобуса
				RETURN dbo.FN_GetDependentActivity
					( @busPlanningMainActivity, @iBusIsActive )
			END -- IF

		-- Подчинённая активность автобуса
		-- соответствует ложному признаку активности
		RETURN @iBusIsActive
	END -- FN_GetBusDependentActivity
GO
------------------------------------------------------------------------------

-- Функция получения подчинённой активности маршрута
CREATE FUNCTION FN_GetPathDependentActivity
(
	-- Идeнтификaтop направления
	@iDirectionID  int,
	-- Признак активности маршрута
	@iPathIsActive bit
)
	RETURNS bit
AS
	BEGIN
		-- Если признак активности маршрута истинный,
		-- то подвергается влиянию, поэтому может измениться,
		-- то есть подчинённая активность маршрута может отличаться от него
		IF ( @iPathIsActive = 1 )
			BEGIN
				-- Главная активность направления
				DECLARE @directionMainActivity bit

				-- Получение главной активности направления
				SELECT @directionMainActivity = IsActive
				FROM Directions
				WHERE ID = @iDirectionID

				-- Возврат подчинённой активности маршрута
				RETURN dbo.FN_GetDependentActivity
					( @directionMainActivity, @iPathIsActive )
			END -- IF

		-- Подчинённая активность маршрута
		-- соответствует ложному признаку активности
		RETURN @iPathIsActive
	END -- FN_GetPathDependentActivity
GO
------------------------------------------------------------------------------

-- Функция получения подчинённой активности расписания рейса
CREATE FUNCTION FN_GetRunTimetableDependentActivity
(
	-- Идeнтификaтop маршрута
	@iPathID               int,
	-- Идeнтификaтop категирии автобуса
	@iBusCategoryID        int,
	-- Признак активности расписания рейса
	@iRunTimetableIsActive bit
)
	RETURNS bit
AS
	BEGIN
		-- Если признак активности расписания рейса истинный,
		-- то подвергается влиянию, поэтому может измениться,
		-- то есть подчинённая активность расписания рейса
		-- может отличаться от него
		IF ( @iRunTimetableIsActive = 1 )
			BEGIN
				-- Главная активность категории автобуса
				DECLARE @busCategoryMainActivity bit

				-- Получение главной активности категории автобуса
				SELECT @busCategoryMainActivity = IsActive
				FROM BusesCategories
				WHERE ID = @iBusCategoryID

				-- Если подчинённая активность расписания рейса
				-- определяется как ложная, то она возвращается
				IF
				(
					dbo.FN_GetDependentActivity
					(
						@busCategoryMainActivity,
						@iRunTimetableIsActive
					) = 0
				)
					RETURN 0

				-- Иначе признак активности расписания рейса по-прежнему истинный
				-- и подвергается влиянию, поэтому может ещё измениться
				ELSE
					BEGIN
						-- Главная активность маршрута
						DECLARE @pathMainActivity bit

						-- Получение главной активности маршрута
						SELECT @pathMainActivity = IsActive
						FROM Paths
						WHERE ID = @iPathID

						-- Возврат подчинённой активности расписания рейса
						RETURN dbo.FN_GetDependentActivity
							( @pathMainActivity, @iRunTimetableIsActive )
					END -- ELSE
			END -- IF

		-- Подчинённая активность расписания рейса
		-- соответствует ложному признаку активности
		RETURN @iRunTimetableIsActive
	END -- FN_GetRunTimetableDependentActivity
GO
------------------------------------------------------------------------------

-- Функция получения подчинённого признака наличия багажа продажи билета
CREATE FUNCTION FN_GetTicketSaleDependentLuggagePresence
(
	-- Главный признак продажи билета на место в автобусе
	@iMainBusSeatSaleState            bit,
	-- Подчинённый признак провоза багажа пасажиром в автобусе
	@iDependentBusSeatLuggagePresence bit
)
	RETURNS bit
AS
	BEGIN
		-- Если главный признак продажи билета на место в автобусе ложен,
		-- то подчинённый признак провоза багажа пасажиром в автобусе также ложен
		IF ( @iMainBusSeatSaleState = 0 )
			RETURN 0

		-- Подчинённый признак провоза багажа пасажиром в автобусе не изменяется,
		-- так как главный признак продажи билета на место в автобусе истинен
		RETURN @iDependentBusSeatLuggagePresence
	END -- FN_GetTicketSaleDependentLuggagePresence
GO
------------------------------------------------------------------------------
