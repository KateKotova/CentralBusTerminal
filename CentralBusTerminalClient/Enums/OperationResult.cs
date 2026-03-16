using System;
using System.Collections.Generic;
using System.Text;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Результат операции
	/// </summary>
	public enum OperationResult
	{
		/// <summary>
		/// Неизвестный
		/// </summary>
		UNKNOWN    = -1,
		/// <summary>
		/// Успешный
		/// </summary>
		SUCCESSFUL = 0,
		/// <summary>
		/// Недействительный
		/// </summary>
		VOID,
		/// <summary>
		/// Неудачный
		/// </summary>
		FAILED,

		/// <summary>
		/// Неверный сервер
		/// </summary>
		INVALID_SERVER,
		/// <summary>
		/// Неверная база данных
		/// </summary>
		INVALID_DATABASE,
		/// <summary>
		/// Неверное имя пользователя или пароль
		/// </summary>
		INVALID_USER_NAME_OR_PASSWORD,

		/// <summary>
		/// Неизвестный Sql-тип
		/// </summary>
		UNKNOWN_SQL_TYPE,

		/// <summary>
		/// Неверное состояние активности
		/// </summary>
		INVALID_ACTIVITY_STATE,

		/// <summary>
		/// Неверная прежняя категория автобоса
		/// </summary>
		INVALID_OLD_BUS_CATEGORY,
		/// <summary>
		/// Неверная категория автобоса
		/// </summary>
		INVALID_BUS_CATEGORY,

		/// <summary>
		/// Неверный прежний дeнь недели
		/// </summary>
		INVALID_OLD_WEEKDAY,
		/// <summary>
		/// Неверный дeнь недели
		/// </summary>
		INVALID_WEEKDAY,

		/// <summary>
		/// Неверные прежние паспортные данные водителя автобуса
		/// </summary>
		INVALID_OLD_DRIVER_PASSPORT_DATA,
		/// <summary>
		/// Неверные паспортные данные водителя автобуса
		/// </summary>
		INVALID_DRIVER_PASSPORT_DATA,

		/// <summary>
		/// Неверный прежний автомобильный номер автобоса
		/// </summary>
		INVALID_OLD_BUS_CAR_CODE,
		/// <summary>
		/// Неверный автомобильный номер автобоса
		/// </summary>
		INVALID_BUS_CAR_CODE,
		/// <summary>
		/// Неверное количество пассажирских мест автобоса
		/// </summary>
		INVALID_BUS_SEATS_QUANTITY,
		/// <summary>
		/// Неверный год начала эксплуатации автобоса
		/// </summary>
		INVALID_BUS_USAGE_START_YEAR,
		/// <summary>
		/// Неверное состояние исправности автобоса
		/// </summary>
		INVALID_BUS_SANITY_STATE,

		/// <summary>
		/// Неверный прежний маршрут
		/// </summary>
		INVALID_OLD_PATH,
		/// <summary>
		/// Неверный маршрут
		/// </summary>
		INVALID_PATH,

		/// <summary>
		/// Неверная подстрока названия остановки
		/// </summary>
		INVALID_STOP_NAME_SUBSTRING,

		/// <summary>
		/// Неверные прежние часы рейса
		/// </summary>
		INVALID_OLD_RUN_HOUR,
		/// <summary>
		/// Неверные часы рейса
		/// </summary>
		INVALID_RUN_HOUR,
		/// <summary>
		/// Неверные прежние часы минуты
		/// </summary>
		INVALID_OLD_RUN_MINUTE,
		/// <summary>
		/// Неверные часы минуты
		/// </summary>
		INVALID_RUN_MINUTE,

		/// <summary>
		/// Неверный прежний гoд выполнения рейса
		/// </summary>
		INVALID_OLD_RUN_EXECUTION_YEAR,
		/// <summary>
		/// Неверный гoд выполнения рейса
		/// </summary>
		INVALID_RUN_EXECUTION_YEAR,
		/// <summary>
		/// Неверный прежний мecяц выполнения рейса
		/// </summary>
		INVALID_OLD_RUN_EXECUTION_MONTH,
		/// <summary>
		/// Неверный мecяц выполнения рейса
		/// </summary>
		INVALID_RUN_EXECUTION_MONTH,
		/// <summary>
		/// Неверный прежний дeнь выполнения рейса
		/// </summary>
		INVALID_OLD_RUN_EXECUTION_DAY,
		/// <summary>
		/// Неверный дeнь выполнения рейса
		/// </summary>
		INVALID_RUN_EXECUTION_DAY,

		/// <summary>
		/// Неверная карта
		/// </summary>
		INVALID_MAP
	} // OperationResult
} // CentralBusTerminalClient