-- Процедуры определения значений вычислимых ячеейк таблицы Paths

-- Процедура определения значения ячейки FinalPoint таблицы Paths
GRANT CONTROL
	ON SP_GetPathFinalPoint
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_GetPathFinalPoint
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_GetPathFinalPoint
	TO RL_Passenger

-- Процедура расчёта значения ячейки Length таблицы Paths
GRANT CONTROL
	ON SP_GetPathLength
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_GetPathLength
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_GetPathLength
	TO RL_Passenger

-- Процедура расчёта значения ячейки GazelleCategoryBusExpense таблицы Paths
GRANT CONTROL
	ON SP_GetPathGazelleCategoryBusExpense
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_GetPathGazelleCategoryBusExpense
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_GetPathGazelleCategoryBusExpense
	TO RL_Passenger

-- Процедура расчёта значения ячейки HardCategoryBusExpense таблицы Paths
GRANT CONTROL
	ON SP_GetPathHardCategoryBusExpense
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_GetPathHardCategoryBusExpense
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_GetPathHardCategoryBusExpense
	TO RL_Passenger

-- Процедура расчёта значения ячейки SoftCategoryBusExpense таблицы Paths
GRANT CONTROL
	ON SP_GetPathSoftCategoryBusExpense
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_GetPathSoftCategoryBusExpense
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_GetPathSoftCategoryBusExpense
	TO RL_Passenger

-- Процедура определения значений вычисляемых ячеейк таблицы Paths
GRANT CONTROL
	ON SP_SetPathCalculatedCells
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_SetPathCalculatedCells
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура определения значений вычисляемых столбцов таблицы Paths
GRANT CONTROL
	ON SP_SetPathsCalculatedColumns
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_SetPathsCalculatedColumns
	TO RL_Supervisor
	WITH GRANT OPTION
------------------------------------------------------------------------------
-- Процедуры определения значений вычислимых ячеейк таблицы RunsExecution

-- Процедура определения значения
-- ячейки SoldTicketsQuantity таблицы RunsExecution
GRANT CONTROL
	ON SP_GetRunExecutionSoldTicketsQuantity
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_GetRunExecutionSoldTicketsQuantity
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_GetRunExecutionSoldTicketsQuantity
	TO RL_Passenger

-- Процедура определения значения ячейки Income таблицы RunsExecution
GRANT CONTROL
	ON SP_GetRunExecutionIncome
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_GetRunExecutionIncome
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_GetRunExecutionIncome
	TO RL_Passenger

-- Процедура определения значений вычисляемых ячеейк таблицы RunsExecution
GRANT CONTROL
	ON SP_SetRunExecutionCalculatedCells
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_SetRunExecutionCalculatedCells
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура определения значений вычисляемых столбцов таблицы RunsExecution
GRANT CONTROL
	ON SP_SetRunsExecutionCalculatedColumns
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_SetRunsExecutionCalculatedColumns
	TO RL_Supervisor
	WITH GRANT OPTION
------------------------------------------------------------------------------
-- Процедуры проверки принадлежности типу

-- Процедура проверки принадлежности величины типу
GRANT CONTROL
	ON SP_CheckValueTypeAccessory
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckValueTypeAccessory
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура проверки принадлежности
-- соответствующему типу значения атрибута таблицы
GRANT CONTROL
	ON SP_CheckTableAttributeValueTypeAccessory
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckTableAttributeValueTypeAccessory
	TO RL_Supervisor
	WITH GRANT OPTION
------------------------------------------------------------------------------

-- Процедура проверки непустоты таблицы
GRANT CONTROL
	ON SP_CheckTableEmptiness
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckTableEmptiness
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckTableEmptiness
	TO RL_Passenger
------------------------------------------------------------------------------
-- Процедуры проверки существования строк таблиц

-- Процедура проверки существования водителя в таблице водителей
GRANT CONTROL
	ON SP_CheckDriverExistence
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckDriverExistence
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckDriverExistence
	TO RL_Passenger

-- Процедура проверки существования автобуса в таблице автобусов
GRANT CONTROL
	ON SP_CheckBusExistence
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckBusExistence
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckBusExistence
	TO RL_Passenger

-- Процедура проверки существования направления в таблице направлений
GRANT CONTROL
	ON SP_CheckDirectionExistence
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckDirectionExistence
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckDirectionExistence
	TO RL_Passenger

-- Процедура проверки существования маршрута в таблице маршрутов
GRANT CONTROL
	ON SP_CheckPathExistence
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckPathExistence
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckPathExistence
	TO RL_Passenger

-- Процедура проверки существования остановки в таблице остановок
GRANT CONTROL
	ON SP_CheckStopExistence
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckStopExistence
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckStopExistence
	TO RL_Passenger

-- Процедура проверки существования расписания рейса
-- в таблице расписания рейсов
GRANT CONTROL
	ON SP_CheckRunTimetableExistence
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckRunTimetableExistence
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckRunTimetableExistence
	TO RL_Passenger

-- Процедура проверки существования выполнения рейса
-- в таблице выполнения рейсов
GRANT CONTROL
	ON SP_CheckRunExecutionExistence
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckRunExecutionExistence
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckRunExecutionExistence
	TO RL_Passenger

-- Процедура проверки существования билета в таблице продажи билетов
GRANT CONTROL
	ON SP_CheckTicketSaleExistence
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckTicketSaleExistence
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckTicketSaleExistence
	TO RL_Passenger
------------------------------------------------------------------------------
-- Процедуры проверки соответствия значений первичным ключам таблиц

-- Процедура проверки соответствия кода водителя
-- первичному ключу таблицы водителей
GRANT CONTROL
	ON SP_CheckDriversPrimaryKeyConformity
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckDriversPrimaryKeyConformity
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckDriversPrimaryKeyConformity
	TO RL_Passenger

-- Процедура проверки соответствия автомобльного номера автобуса
-- первичному ключу таблицы автобусов
GRANT CONTROL
	ON SP_CheckBusesPrimaryKeyConformity
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckBusesPrimaryKeyConformity
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckBusesPrimaryKeyConformity
	TO RL_Passenger

-- Процедура проверки соответствия кода направления
-- первичному ключу таблицы направлений
GRANT CONTROL
	ON SP_CheckDirectionsPrimaryKeyConformity
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckDirectionsPrimaryKeyConformity
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckDirectionsPrimaryKeyConformity
	TO RL_Passenger

-- Процедура проверки соответствия кода маршрута
-- первичному ключу таблицы маршрутов
GRANT CONTROL
	ON SP_CheckPathsPrimaryKeyConformity
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckPathsPrimaryKeyConformity
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckPathsPrimaryKeyConformity
	TO RL_Passenger

-- Процедура проверки соответствия названия и кода маршрута остановки
-- первичному ключу таблицы остановок
GRANT CONTROL
	ON SP_CheckStopsPrimaryKeyConformity
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckStopsPrimaryKeyConformity
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckStopsPrimaryKeyConformity
	TO RL_Passenger

-- Процедура проверки соответствия кода расписания рейса
-- первичному ключу таблицы расписания рейсов
GRANT CONTROL
	ON SP_CheckRunsTimetablePrimaryKeyConformity
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckRunsTimetablePrimaryKeyConformity
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckRunsTimetablePrimaryKeyConformity
	TO RL_Passenger

-- Процедура проверки соответствия даты и кода выполнения рейса
-- первичному ключу таблицы выполнения рейсов
GRANT CONTROL
	ON SP_CheckRunsExecutionPrimaryKeyConformity
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckRunsExecutionPrimaryKeyConformity
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckRunsExecutionPrimaryKeyConformity
	TO RL_Passenger

-- Процедура проверки соответствия даты, кода рейса и номера продажи блета
-- первичному ключу таблицы продажи блетов
GRANT CONTROL
	ON SP_CheckTicketsSalePrimaryKeyConformity
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckTicketsSalePrimaryKeyConformity
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckTicketsSalePrimaryKeyConformity
	TO RL_Passenger
------------------------------------------------------------------------------
-- Процедуры проверки соответствия записей строкам таблиц

-- Процедура проверки соответствия строки водителю таблицы водителей
GRANT CONTROL
	ON SP_CheckDriversRowConformity
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckDriversRowConformity
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckDriversRowConformity
	TO RL_Passenger

-- Процедура проверки соответствия строки автобусу таблицы автобусов
GRANT CONTROL
	ON SP_CheckBusesRowConformity
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckBusesRowConformity
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckBusesRowConformity
	TO RL_Passenger

-- Процедура проверки соответствия строки направления таблицы направлений
GRANT CONTROL
	ON SP_CheckDirectionsRowConformity
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckDirectionsRowConformity
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckDirectionsRowConformity
	TO RL_Passenger

-- Процедура проверки соответствия строки маршрута таблицы маршрутов
GRANT CONTROL
	ON SP_CheckPathsRowConformity
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckPathsRowConformity
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckPathsRowConformity
	TO RL_Passenger

-- Процедура проверки соответствия строки остановки таблицы остановок
GRANT CONTROL
	ON SP_CheckStopsRowConformity
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckStopsRowConformity
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckStopsRowConformity
	TO RL_Passenger

-- Процедура проверки соответствия строки
-- расписания рейса таблицы расписаний рейсов
GRANT CONTROL
	ON SP_CheckRunsTimetableRowConformity
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckRunsTimetableRowConformity
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckRunsTimetableRowConformity
	TO RL_Passenger

-- Процедура проверки соответствия строки
-- выполнения рейса таблицы выполнений рейсов
GRANT CONTROL
	ON SP_CheckRunsExecutionRowConformity
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckRunsExecutionRowConformity
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckRunsExecutionRowConformity
	TO RL_Passenger

-- Процедура проверки соответствия строки
-- продажи билета таблицы продажи билетов
GRANT CONTROL
	ON SP_CheckTicketsSaleRowConformity
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckTicketsSaleRowConformity
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_CheckTicketsSaleRowConformity
	TO RL_Passenger
------------------------------------------------------------------------------

-- Процедура загрузки строк в таблицу поездок
GRANT CONTROL
	ON SP_LoadTrips
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_LoadTrips
	TO RL_Supervisor
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_LoadTrips
	TO RL_Passenger
------------------------------------------------------------------------------
-- Процедуры записи строк в таблицы

-- Процедура записи строки в таблицу водителей
GRANT CONTROL
	ON SP_InsertDriver
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_InsertDriver
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура записи строки в таблицу автобусов
GRANT CONTROL
	ON SP_InsertBus
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_InsertBus
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура записи строки в таблицу направлений
GRANT CONTROL
	ON SP_InsertDirection
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_InsertDirection
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура записи строки в таблицу маршрутов
GRANT CONTROL
	ON SP_InsertPath
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_InsertPath
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура записи строки в таблицу остановок
GRANT CONTROL
	ON SP_InsertStop
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_InsertStop
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура записи строки в таблицу рассписания рейсов
GRANT CONTROL
	ON SP_InsertRunTimetable
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_InsertRunTimetable
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура записи строки в таблицу выполнения рейсов
GRANT CONTROL
	ON SP_InsertRunExecution
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_InsertRunExecution
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура записи строки в таблицу продажи билетов
GRANT CONTROL
	ON SP_InsertTicketSale
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_InsertTicketSale
	TO RL_Supervisor
	WITH GRANT OPTION
------------------------------------------------------------------------------
-- Процедуры изменения строк в таблицах

-- Процедура изменения строки в таблице водителей
GRANT CONTROL
	ON SP_UpdateDriver
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_UpdateDriver
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура изменения строки в таблице автобусов
GRANT CONTROL
	ON SP_UpdateBus
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_UpdateBus
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура изменения строки в таблице направлений
GRANT CONTROL
	ON SP_UpdateDirection
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_UpdateDirection
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура изменения строки в таблице маршрутов
GRANT CONTROL
	ON SP_UpdatePath
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_UpdatePath
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура изменения строки в таблице остановок
GRANT CONTROL
	ON SP_UpdateStop
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_UpdateStop
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура изменения строки в таблице расписания рейсов
GRANT CONTROL
	ON SP_UpdateRunTimetable
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_UpdateRunTimetable
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура изменения строки в таблице выполнения рейсов
GRANT CONTROL
	ON SP_UpdateRunExecution
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_UpdateRunExecution
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура изменения строки в таблице продажи билетов
GRANT CONTROL
	ON SP_UpdateTicketSale
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_UpdateTicketSale
	TO RL_Supervisor
	WITH GRANT OPTION
------------------------------------------------------------------------------
-- Процедуры удаления строк из таблицах

-- Процедура удаления строки из таблицы водителей
GRANT CONTROL
	ON SP_DeleteDriver
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_DeleteDriver
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура удаления строки из таблицы автобусов
GRANT CONTROL
	ON SP_DeleteBus
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_DeleteBus
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура удаления строки из таблицы направлений
GRANT CONTROL
	ON SP_DeleteDirection
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_DeleteDirection
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура удаления строки из таблицы маршрутов
GRANT CONTROL
	ON SP_DeletePath
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_DeletePath
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура удаления строки из таблицы остановок
GRANT CONTROL
	ON SP_DeleteStop
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_DeleteStop
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура удаления строки из таблицы расписания рейсов
GRANT CONTROL
	ON SP_DeleteRunTimetable
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_DeleteRunTimetable
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура удаления строки из таблицы выполнения рейсов
GRANT CONTROL
	ON SP_DeleteRunExecution
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_DeleteRunExecution
	TO RL_Supervisor
	WITH GRANT OPTION

-- Процедура удаления строки из таблицы продажи билетов
GRANT CONTROL
	ON SP_DeleteTicketSale
	TO RL_Manager
	WITH GRANT OPTION
GRANT EXECUTE, REFERENCES
	ON SP_DeleteTicketSale
	TO RL_Supervisor
	WITH GRANT OPTION