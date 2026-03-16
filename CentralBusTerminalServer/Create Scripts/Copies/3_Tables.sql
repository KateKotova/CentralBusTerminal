-- Таблицы-справочники данных констант

-- Таблица-справочник границ типов
GRANT CONTROL, SELECT
	ON TypesBorders
	TO RL_Manager
	WITH GRANT OPTION
GRANT REFERENCES, SELECT
	ON TypesBorders
	TO RL_Supervisor
	WITH GRANT OPTION

-- Таблица-справочник масок типов
GRANT CONTROL, SELECT
	ON TypesMasks
	TO RL_Manager
	WITH GRANT OPTION
GRANT REFERENCES, SELECT
	ON TypesMasks
	TO RL_Supervisor
	WITH GRANT OPTION

-- Таблица-справочник значений перечислимых типов
GRANT CONTROL, SELECT
	ON TypesValues
	TO RL_Manager
	WITH GRANT OPTION
GRANT REFERENCES, SELECT
	ON TypesValues
	TO RL_Supervisor
	WITH GRANT OPTION

-- Таблица-справочник умолчаний типов
GRANT CONTROL, SELECT
	ON TypesDefaults
	TO RL_Manager
	WITH GRANT OPTION
GRANT REFERENCES, SELECT
	ON TypesDefaults
	TO RL_Supervisor
	WITH GRANT OPTION

-- Таблица-справочник заголовков таблиц
GRANT CONTROL, SELECT
	ON TablesCaptions
	TO RL_Manager
	WITH GRANT OPTION
GRANT REFERENCES, SELECT
	ON TablesCaptions
	TO RL_Supervisor
	WITH GRANT OPTION

-- Таблица-справочник заголовков атрибутов таблиц
GRANT CONTROL, SELECT
	ON TablesAttributesCaptions
	TO RL_Manager
	WITH GRANT OPTION
GRANT REFERENCES, SELECT
	ON TablesAttributesCaptions
	TO RL_Supervisor
	WITH GRANT OPTION
------------------------------------------------------------------------------
-- Таблицы данных центрального автовокзала

-- Таблица водителей автобусов
GRANT CONTROL, SELECT
	ON Drivers
	TO RL_Manager
	WITH GRANT OPTION
GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
	ON Drivers
	TO RL_Supervisor
	WITH GRANT OPTION

-- Таблица автобусов
GRANT CONTROL, SELECT
	ON Buses
	TO RL_Manager
	WITH GRANT OPTION
GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
	ON Buses
	TO RL_Supervisor
	WITH GRANT OPTION

-- Таблица направлений
GRANT CONTROL, SELECT
	ON Directions
	TO RL_Manager
	WITH GRANT OPTION
GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
	ON Directions
	TO RL_Supervisor
	WITH GRANT OPTION

-- Таблица маршрутов
GRANT CONTROL, SELECT
	ON Paths
	TO RL_Manager
	WITH GRANT OPTION
GRANT
		DELETE, INSERT, REFERENCES, SELECT,
		UPDATE
			(Code, Title, DirectionCode, RangeKind, PlatformNumber,
			GazelleCategoryBusTicketCost, HardCategoryBusTicketCost,
			SoftCategoryBusTicketCost, SeatLuggageTransportCost)
	ON Paths
	TO RL_Supervisor
	WITH GRANT OPTION

-- Таблица остановок
GRANT CONTROL, SELECT
	ON Stops
	TO RL_Manager
	WITH GRANT OPTION
GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
	ON Stops
	TO RL_Supervisor
	WITH GRANT OPTION

-- Таблица расписания рейсов
GRANT CONTROL, SELECT
	ON RunsTimetable
	TO RL_Manager
	WITH GRANT OPTION
GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
	ON RunsTimetable
	TO RL_Supervisor
	WITH GRANT OPTION

-- Таблица выполнения рейсов
GRANT CONTROL, SELECT
	ON RunsExecution
	TO RL_Manager
	WITH GRANT OPTION
GRANT
		DELETE, INSERT, REFERENCES, SELECT,
		UPDATE
			([Date], Code, BusCarCode, DriverCode, SoldTicketsQuantity)
	ON RunsExecution
	TO RL_Supervisor
	WITH GRANT OPTION


-- Таблица продажи билетов
GRANT CONTROL, SELECT
	ON TicketsSale
	TO RL_Manager
	WITH GRANT OPTION
GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
	ON TicketsSale
	TO RL_Supervisor
	WITH GRANT OPTION
------------------------------------------------------------------------------
-- Таблицы данных результатов поиска

-- Таблица поездок
GRANT CONTROL, SELECT
	ON Trips
	TO RL_Manager
	WITH GRANT OPTION
GRANT REFERENCES, SELECT
	ON Trips
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT REFERENCES, SELECT
	ON Trips
	TO RL_Passenger