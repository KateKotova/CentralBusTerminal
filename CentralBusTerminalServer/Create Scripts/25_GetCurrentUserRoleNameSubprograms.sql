--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
-- П О Д П Р О Г Р А М М Ы   О П Р Е Д Е Л Е Н И Я   Р О Л И
-- Т Е К У Щ Е Г О   П О Л Ь З О В А Т Е Л Я
--<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>

-- Функция получения названия роли текущего пользователя
CREATE FUNCTION FN_GetCurrentUserRoleName( )
	RETURNS nvarchar( MAX )
AS
	BEGIN
		-- Название роли
		DECLARE @roleName nvarchar( MAX )

		-- Название роли администратора
		SET @roleName = dbo.FN_ManagerRoleNameString( )
		-- Если текущий пользователь относится к роли администратора,
		-- то возвращается её название
		IF IS_MEMBER( @roleName ) = 1
			RETURN @roleName

		-- Название роли диспетчера
		SET @roleName = dbo.FN_SupervisorRoleNameString( )
		-- Если текущий пользователь относится к роли диспетчера,
		-- то возвращается её название
		IF IS_MEMBER( @roleName ) = 1
			RETURN @roleName

		-- Название роли пассажира
		SET @roleName = dbo.FN_PassengerRoleNameString( )
		-- Если текущий пользователь относится к роли пассажира,
		-- то возвращается её название
		IF IS_MEMBER( @roleName ) = 1
			RETURN @roleName

		-- Текущий пользователь не относится ни к одной из следующих ролей:
		-- администратора, диспетчера или пассажира,
		-- поэтому возвращается пустая строка
		RETURN dbo.FN_EmptyString( )
	END -- FN_GetCurrentUserRoleName
GO
------------------------------------------------------------------------------

-- Пpoцeдуpa получения названия роли текущего пользователя
CREATE PROCEDURE SP_GetCurrentUserRoleName
	-- Название роли текущего пользователя
	( @oCurrentUserRoleName nvarchar( MAX ) OUTPUT )
AS
	SET @oCurrentUserRoleName = dbo.FN_GetCurrentUserRoleName( )
GO
-- SP_GetCurrentUserRoleName
------------------------------------------------------------------------------
