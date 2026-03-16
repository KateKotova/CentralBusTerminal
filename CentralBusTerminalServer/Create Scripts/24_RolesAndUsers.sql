--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
-- Р О Л И   И   П О Л Ь З О В А Т Е Л И
--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>

-- Установка дистанционного тайм-аута регистрации в 30 секунд
sp_configure 'remote login timeout', 30
GO
RECONFIGURE WITH OVERRIDE
GO
------------------------------------------------------------------------------
-- Роли

-- Роль администратора
CREATE ROLE RL_Manager    AUTHORIZATION db_owner
-- Роль диспетчера
CREATE ROLE RL_Supervisor AUTHORIZATION db_datawriter
-- Роль пассажира
CREATE ROLE RL_Passenger  AUTHORIZATION db_datareader
------------------------------------------------------------------------------
-- Логины

-- Логин администратора
CREATE LOGIN LG_Manager    WITH PASSWORD = 'manager'
-- Логин диспетчера
CREATE LOGIN LG_Supervisor WITH PASSWORD = 'supervisor'
-- Логин пассажира
CREATE LOGIN LG_Passenger  WITH PASSWORD = 'passenger'
------------------------------------------------------------------------------
-- Права ролей на базу данных

-- Право администратора на базу данных
GRANT CONTROL
	TO RL_Manager
	WITH GRANT OPTION

-- Право диспетчера на базу данных
GRANT
		CREATE DEFAULT,
		CREATE FUNCTION,
		CREATE PROCEDURE,
		CREATE RULE,
		CREATE TABLE,
		CREATE TYPE,
		CREATE VIEW,
		VIEW DATABASE STATE
	TO RL_Supervisor
	WITH GRANT OPTION
--============================================================================
-- Пользователи

-- Пользователь-администратор
CREATE USER Manager    FOR LOGIN LG_Manager
-- Пользователь-диспетчер
CREATE USER Supervisor FOR LOGIN LG_Supervisor
-- Пользователь-пассажир
CREATE USER Passenger  FOR LOGIN LG_Passenger
------------------------------------------------------------------------------
-- Права пользователей на роли

-- Право пользователя-администратора на роль администратора
GRANT CONTROL
	ON ROLE :: RL_Manager
	TO Manager
	WITH GRANT OPTION

-- Право пользователя-диспетчера на роль диспетчера
GRANT CONTROL
	ON ROLE :: RL_Supervisor
	TO Supervisor
	WITH GRANT OPTION

-- Право пользователя-пассажира на роль пассажира
GRANT CONTROL
	ON ROLE :: RL_Passenger
	TO Passenger
------------------------------------------------------------------------------
