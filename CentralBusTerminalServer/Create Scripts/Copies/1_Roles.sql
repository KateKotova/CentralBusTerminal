-- Роли, пользователи и их привеилегии на роли

-- Установка дистанционного тайм-аута регистрации в 30 секунд
sp_configure 'remote login timeout', 30
GO
RECONFIGURE WITH OVERRIDE
GO

-- Роль администратора
CREATE ROLE RL_Manager    AUTHORIZATION db_ddladmin
-- Роль диспетчера
CREATE ROLE RL_Supervisor AUTHORIZATION db_datawriter
-- Роль пассажира
CREATE ROLE RL_Passenger  AUTHORIZATION db_datareader

-- Допуск администратора
CREATE LOGIN LG_Manager
	WITH PASSWORD = 'manager'
-- Допуск диспетчера
CREATE LOGIN LG_Supervisor
	WITH PASSWORD = 'supervisor'
-- Допуск пассажира
CREATE LOGIN LG_Passenger
	WITH PASSWORD = 'passenger'

-- Привилегии ролей на базу данных
GRANT CONTROL
	TO RL_Manager
	WITH GRANT OPTION
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
GRANT
		CREATE DEFAULT,
		CREATE FUNCTION,
		CREATE PROCEDURE,
		CREATE RULE,
		CREATE TABLE,
		CREATE TYPE,
		CREATE VIEW,
		VIEW DATABASE STATE
	TO Supervisor
	WITH GRANT OPTION

-- Пользователь администратора
CREATE USER Manager
	FOR LOGIN LG_Manager
-- Пользователь диспетчера
CREATE USER Supervisor
	FOR LOGIN LG_Supervisor
-- Пользователь пассажира
CREATE USER Passenger
	FOR LOGIN LG_Passenger

-- Привилегии пользователей на роли
GRANT CONTROL
	ON ROLE :: RL_Manager
	TO Manager
	WITH GRANT OPTION
GRANT CONTROL
	ON ROLE :: RL_Supervisor
	TO Supervisor
	WITH GRANT OPTION
GRANT CONTROL
	ON ROLE :: RL_Passenger
	TO Passenger
	
select *
from sysobjects

PRINT IS_MEMBER( 'RL_Manager' )


-- Роль администратора
CREATE ROLE RL_Manager    AUTHORIZATION db_ddladmin
-- Роль диспетчера
CREATE ROLE RL_Supervisor AUTHORIZATION db_datawriter
-- Роль пассажира
CREATE ROLE RL_Passenger  AUTHORIZATION db_datareader
