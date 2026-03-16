--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
-- П Р А В А   Р О Л Е Й   Н А   T A Б Л И Ц Ы
--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>

-- Права ролей на тaблицы-cпpaвoчники

-- Права ролей на таблицу-справочник cooбщeний oб oшибкax
GRANT CONTROL, SELECT
	ON ErrorsMessages
	TO RL_Manager
	WITH GRANT OPTION
GRANT REFERENCES, SELECT
	ON ErrorsMessages
	TO RL_Supervisor
	WITH GRANT OPTION

-- Права ролей на таблицу-справочник состояний активностей записей
GRANT CONTROL, SELECT
	ON RecordsActivitiesStates
	TO RL_Manager
	WITH GRANT OPTION
GRANT REFERENCES, SELECT
	ON RecordsActivitiesStates
	TO RL_Supervisor
	WITH GRANT OPTION

-- Права ролей на таблицу-справочник категирий автобусов
GRANT CONTROL, SELECT
	ON BusesCategories
	TO RL_Manager
	WITH GRANT OPTION
GRANT REFERENCES, SELECT
	ON BusesCategories
	TO RL_Supervisor
	WITH GRANT OPTION

-- Права ролей на таблицу-справочник состояний исправностей автобусов
GRANT CONTROL, SELECT
	ON BusesSanitiesStates
	TO RL_Manager
	WITH GRANT OPTION
GRANT REFERENCES, SELECT
	ON BusesSanitiesStates
	TO RL_Supervisor
	WITH GRANT OPTION

-- Права ролей на таблицу-справочник дальностей маршрутов
GRANT CONTROL, SELECT
	ON PathsRangesKinds
	TO RL_Manager
	WITH GRANT OPTION
GRANT REFERENCES, SELECT
	ON PathsRangesKinds
	TO RL_Supervisor
	WITH GRANT OPTION

-- Права ролей на таблицу-справочник дней недели
GRANT CONTROL, SELECT
	ON Weekdays
	TO RL_Manager
	WITH GRANT OPTION
GRANT REFERENCES, SELECT
	ON Weekdays
	TO RL_Supervisor
	WITH GRANT OPTION

-- Права ролей на таблицу-справочник
-- признаков продаж билетов на места в автобусах
GRANT CONTROL, SELECT
	ON BusesSeatsSalesStates
	TO RL_Manager
	WITH GRANT OPTION
GRANT REFERENCES, SELECT
	ON BusesSeatsSalesStates
	TO RL_Supervisor
	WITH GRANT OPTION

-- Права ролей на таблицу-справочник
-- признаков провозов багажей пасажирами в автобусах
GRANT CONTROL, SELECT
	ON BusesSeatsLuggagesPresences
	TO RL_Manager
	WITH GRANT OPTION
GRANT REFERENCES, SELECT
	ON BusesSeatsLuggagesPresences
	TO RL_Supervisor
	WITH GRANT OPTION
------------------------------------------------------------------------------
-- Права ролей на тaблицы фaктичecкиx дaнныx

-- Права ролей на таблицу водителей автобусов
GRANT CONTROL, SELECT
	ON Drivers
	TO RL_Manager
	WITH GRANT OPTION
GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
	ON Drivers
	TO RL_Supervisor
	WITH GRANT OPTION

-- Права ролей на таблицу планировок автобусов
GRANT CONTROL, SELECT
	ON BusesPlannings
	TO RL_Manager
	WITH GRANT OPTION
GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
	ON BusesPlannings
	TO RL_Supervisor
	WITH GRANT OPTION

-- Права ролей на таблицу автобусов
GRANT CONTROL, SELECT
	ON Buses
	TO RL_Manager
	WITH GRANT OPTION
GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
	ON Buses
	TO RL_Supervisor
	WITH GRANT OPTION

-- Права ролей на таблицу направлений
GRANT CONTROL, SELECT
	ON Directions
	TO RL_Manager
	WITH GRANT OPTION
GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
	ON Directions
	TO RL_Supervisor
	WITH GRANT OPTION

-- Права ролей на таблицу стоимостей одного километра направлений
GRANT CONTROL, SELECT
	ON DirectionsOneKmCosts
	TO RL_Manager
	WITH GRANT OPTION
GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
	ON DirectionsOneKmCosts
	TO RL_Supervisor
	WITH GRANT OPTION

-- Права ролей на таблицу маршрутов
GRANT CONTROL, SELECT
	ON Paths
	TO RL_Manager
	WITH GRANT OPTION
GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
	ON Paths
	TO RL_Supervisor
	WITH GRANT OPTION

-- Права ролей на таблицу цен билетов на автобусы
GRANT CONTROL, SELECT
	ON BusesTicketsCosts
	TO RL_Manager
	WITH GRANT OPTION
GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
	ON BusesTicketsCosts
	TO RL_Supervisor
	WITH GRANT OPTION

-- Права ролей на таблицу остановок
GRANT CONTROL, SELECT
	ON Stops
	TO RL_Manager
	WITH GRANT OPTION
GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
	ON Stops
	TO RL_Supervisor
	WITH GRANT OPTION

-- Права ролей на таблицу расписания рейсов
GRANT CONTROL, SELECT
	ON RunsTimetable
	TO RL_Manager
	WITH GRANT OPTION
GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
	ON RunsTimetable
	TO RL_Supervisor
	WITH GRANT OPTION
------------------------------------------------------------------------------
-- Права ролей на тaблицы xpoнoлoгичecкиx дaнныx

-- Права ролей на таблицу выполнений рейсов
GRANT CONTROL, SELECT
	ON RunsExecutions
	TO RL_Manager
	WITH GRANT OPTION
GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
	ON RunsExecutions
	TO RL_Supervisor
	WITH GRANT OPTION

-- Права ролей на таблицу продажи билетов
GRANT CONTROL, SELECT
	ON TicketsSale
	TO RL_Manager
	WITH GRANT OPTION
GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
	ON TicketsSale
	TO RL_Supervisor
	WITH GRANT OPTION
------------------------------------------------------------------------------
-- Права ролей на тaблицы графических дaнныx

-- Права ролей на таблицу карт
GRANT CONTROL, SELECT
	ON Maps
	TO RL_Manager
	WITH GRANT OPTION
GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
	ON Maps
	TO RL_Supervisor
	WITH GRANT OPTION

-- Права ролей на таблицу карт маршрутов
GRANT CONTROL, SELECT
	ON PathsMaps
	TO RL_Manager
	WITH GRANT OPTION
GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
	ON PathsMaps
	TO RL_Supervisor
	WITH GRANT OPTION

-- Права ролей на таблицу координат остановок
GRANT CONTROL, SELECT
	ON StopsCoordinates
	TO RL_Manager
	WITH GRANT OPTION
GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE
	ON StopsCoordinates
	TO RL_Supervisor
	WITH GRANT OPTION
------------------------------------------------------------------------------
