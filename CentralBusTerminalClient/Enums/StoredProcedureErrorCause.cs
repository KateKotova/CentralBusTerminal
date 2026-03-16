using System;
using System.Collections.Generic;
using System.Text;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Причина ошибки хранимой процедуры
	/// </summary>
	public enum StoredProcedureErrorCause
	{
		/// <summary>
		/// Неизвестная
		/// </summary>
		UNKNOWN                                                      = -1,
		/// <summary>
		/// Отсутствующая
		/// </summary>
		NONE                                                         = 0,
		/// <summary>
		/// Добавление записи
		/// </summary>
		ROW_INSERT                                                   = 1,
		/// <summary>
		/// Обновление записи
		/// </summary>
		ROW_UPDATE                                                   = 2,
		/// <summary>
		/// Удаление записи
		/// </summary>
		ROW_DELETE                                                   = 3,
		/// <summary>
		/// Состояние активности записи не существует
		/// </summary>
		ACTIVITY_STATE_ABSENCE                                       = 5,
		/// <summary>
		/// Прежняя категория автобуса является пуcтoй cтpoкoй
		/// или состоит из oдниx пpoбeлoв
		/// </summary>
		EMPTY_OLD_BUS_CATEGORY                                       = 6,
		/// <summary>
		/// Категория автобуса является пуcтoй cтpoкoй
		/// или состоит из oдниx пpoбeлoв
		/// </summary>
		EMPTY_BUS_CATEGORY                                           = 7,
		/// <summary>
		/// Прежняя категория автобуса не существует
		/// </summary>
		OLD_BUS_CATEGORY_ABSENCE                                     = 8,
		/// <summary>
		/// Категория автобуса не существует
		/// </summary>
		BUS_CATEGORY_ABSENCE                                         = 9,
		/// <summary>
		/// Состояние исправности автобуса не существует
		/// </summary>
		BUS_SANITY_STATE_ABSENCE                                     = 11,
		/// <summary>
		/// День недели является пуcтoй cтpoкoй или состоит из oдниx пpoбeлoв
		/// </summary>
		EMPTY_WEEKDAY                                                = 14,
		/// <summary>
		/// День недели не существует
		/// </summary>
		WEEKDAY_ABSENCE                                              = 15,
		/// <summary>
		/// Прежние паспортные данные водителя автобуса являются
		/// пуcтoй cтpoкoй или состоят из oдниx пpoбeлoв
		/// </summary>
		EMPTY_OLD_DRIVER_PASSPORT_DATA                               = 20,
		/// <summary>
		/// Паспортные данные водителя автобуса являются
		/// пуcтoй cтpoкoй или состоят из oдниx пpoбeлoв
		/// </summary>
		EMPTY_DRIVER_PASSPORT_DATA                                   = 21,
		/// <summary>
		/// Прежние паспортные данные водителя автобуса
		/// не состоят из трёх групп символов, отделённых пробелами:
		/// две цифры и две цифры - серия и шесть цифр - номер
		/// </summary>
		OLD_DRIVER_PASSPORT_DATA_UNALIKE_MASK                        = 22,
		/// <summary>
		/// Паспортные данные водителя автобуса не состоят из трёх групп символов,
		/// отделённых пробелами: две цифры и две цифры - серия
		/// и шесть цифр - номер
		/// </summary>
		DRIVER_PASSPORT_DATA_UNALIKE_MASK                            = 23,
		/// <summary>
		/// Прежние паспортные данные водителя автобуса не существуют
		/// </summary>
		OLD_DRIVER_PASSPORT_DATA_ABSENCE                             = 24,
		/// <summary>
		/// Паспортные данные водителя автобуса не существуют
		/// </summary>
		DRIVER_PASSPORT_DATA_ABSENCE                                 = 25,
		/// <summary>
		/// Количество пассажирских мест автобуса не является положительным числом
		/// </summary>
		NOT_POSITIVE_BUS_SEATS_QUANTITY                              = 31,
		/// <summary>
		/// Набор категории автобуса и количества пассажирских мест автобуса
		/// не существует
		/// </summary>
		BUS_CATEGORY_BUS_SEATS_QUANTITY_SET_ABSENCE                  = 33,
		/// <summary>
		/// Прежний автомобильный номер автобуса является пуcтoй cтpoкoй
		/// или состоит из oдниx пpoбeлoв
		/// </summary>
		EMPTY_OLD_BUS_CAR_CODE                                       = 36,
		/// <summary>
		/// Автомобильный номер автобуса является пуcтoй cтpoкoй
		/// или состоит из oдниx пpoбeлoв
		/// </summary>
		EMPTY_BUS_CAR_CODE                                           = 37,
		/// <summary>
		/// Прежний автомобильный номер автобуса не состоит
		/// из трёх групп символов, отделённых пробелами:
		/// две заглавные русские буквы, три цифры и две цифры
		/// </summary>
		OLD_BUS_CAR_CODE_UNALIKE_MASK                                = 38,
		/// <summary>
		/// Автомобильный номер автобуса не состоит из трёх групп символов,
		/// отделённых пробелами: две заглавные русские буквы,
		/// три цифры и две цифры
		/// </summary>
		BUS_CAR_CODE_UNALIKE_MASK                                    = 39,
		/// <summary>
		/// Прежний автомобильный номер автобуса не существует
		/// </summary>
		OLD_BUS_CAR_CODE_ABSENCE                                     = 40,
		/// <summary>
		/// Автомобильный номер автобуса не существует
		/// </summary>
		BUS_CAR_CODE_ABSENCE                                         = 41,
		/// <summary>
		/// Автомобильный номер автобуса уже существует
		/// </summary>
		BUS_CAR_CODE_EXISTENCE                                       = 43,
		/// <summary>
		/// Прежний маршрут является пуcтoй cтpoкoй или состоит из oдниx пpoбeлoв
		/// </summary>
		EMPTY_OLD_PATH                                               = 54,
		/// <summary>
		/// Маршрут является пуcтoй cтpoкoй или состоит из oдниx пpoбeлoв
		/// </summary>
		EMPTY_PATH                                                   = 55,
		/// <summary>
		/// Прежний маршрут не существует
		/// </summary>
		OLD_PATH_ABSENCE                                             = 56,
		/// <summary>
		/// Маршрут не существует
		/// </summary>
		PATH_ABSENCE                                                 = 57,
		/// <summary>
		/// Прежние часы расписания рейса не определены
		/// </summary>
		NULL_OLD_RUN_HOUR                                            = 70,
		/// <summary>
		/// Часы расписания рейса не определены
		/// </summary>
		NULL_RUN_HOUR                                                = 71,
		/// <summary>
		/// Прежние минуты расписания рейса не определены
		/// </summary>
		NULL_OLD_RUN_MINUTE                                          = 72,
		/// <summary>
		/// Минуты расписания рейса не определены
		/// </summary>
		NULL_RUN_MINUTE                                              = 73,
		/// <summary>
		/// Некорректное прежнее время расписания рейса
		/// </summary>
		INCORRECT_OLD_RUN_TIME                                       = 74,
		/// <summary>
		/// Некорректное время расписания рейса
		/// </summary>
		INCORRECT_RUN_TIME                                           = 75,
		/// <summary>
		/// Прежний набор маршрута, категории автобуса, дня недели
		/// и времени расписания рейса не существует
		/// </summary>
		OLD_PATH_BUS_CATEGORY_RUN_WEEKDAY_RUN_TIME_SET_ABSENCE       = 76,
		/// <summary>
		/// Набор маршрута, категории автобуса, дня недели
		/// и времени расписания рейса не существует
		/// </summary>
		PATH_BUS_CATEGORY_RUN_WEEKDAY_RUN_TIME_SET_ABSENCE           = 77,
		/// <summary>
		/// Прежний год выполнения рейса не определён
		/// </summary>
		NULL_OLD_RUN_EXECUTION_YEAR                                  = 80,
		/// <summary>
		/// Год выполнения рейса не определён
		/// </summary>
		NULL_RUN_EXECUTION_YEAR                                      = 81,
		/// <summary>
		/// Прежний месяц выполнения рейса не определён
		/// </summary>
		NULL_OLD_RUN_EXECUTION_MONTH                                 = 82,
		/// <summary>
		/// Месяц выполнения рейса не определён
		/// </summary>
		NULL_RUN_EXECUTION_MONTH                                     = 83,
		/// <summary>
		/// Прежний день выполнения рейса не определён
		/// </summary>
		NULL_OLD_RUN_EXECUTION_DAY                                   = 84,
		/// <summary>
		/// День выполнения рейса не определён
		/// </summary>
		NULL_RUN_EXECUTION_DAY                                       = 85,
		/// <summary>
		/// Некорректная прежняя дата выполнения рейса
		/// </summary>
		INCORRECT_OLD_RUN_EXECUTION_DATE                             = 86,
		/// <summary>
		/// Некорректная дата выполнения рейса
		/// </summary>
		INCORRECT_RUN_EXECUTION_DATE                                 = 87,
		/// <summary>
		/// Прежняя дата выполнения рейса позже текущей
		/// </summary>
		OLD_RUN_EXECUTION_DATE_LATER_CURRENT                         = 88,
		/// <summary>
		/// Дата выполнения рейса позже текущей
		/// </summary>
		RUN_EXECUTION_DATE_LATER_CURRENT                             = 89,
		/// <summary>
		/// День недели прежней даты выполнения рейса
		/// не соответствует прежнему дню недели рейса по расписанию
		/// </summary>
		OLD_RUN_EXECUTION_DATE_AND_OLD_RUN_DIFFERENT_WEEKDAYS        = 90,
		/// <summary>
		/// День недели даты выполнения рейса
		/// не соответствует дню недели рейса по расписанию
		/// </summary>
		RUN_EXECUTION_DATE_AND_RUN_DIFFERENT_WEEKDAYS                = 91,
		/// <summary>
		/// Категория прежнего автобуса выполнения рейса
		/// не соответствует прежней категории автобуса рейса по расписанию
		/// </summary>
		OLD_RUN_EXECUTION_BUS_AND_OLD_RUN_DIFFERENT_BUSES_CATEGORIES = 92,
		/// <summary>
		/// Категория автобуса выполнения рейса
		/// не соответствует категории автобуса рейса по расписанию
		/// </summary>
		RUN_EXECUTION_BUS_AND_RUN_DIFFERENT_BUSES_CATEGORIES         = 93,
		/// <summary>
		/// Прежнее расписание рейса не активно
		/// </summary>
		INACTIVE_OLD_RUN                                             = 94,
		/// <summary>
		/// Расписание рейса не активно
		/// </summary>
		INACTIVE_RUN                                                 = 95,
		/// <summary>
		/// Прежний автобус не автивен
		/// </summary>
		INACTIVE_OLD_BUS                                             = 96,
		/// <summary>
		/// Автобус не автивен
		/// </summary>
		INACTIVE_BUS                                                 = 97,
		/// <summary>
		/// Прежний автобус не исправен
		/// </summary>
		FAULTY_OLD_BUS                                               = 98,
		/// <summary>
		/// Автобус не исправен
		/// </summary>
		FAULTY_BUS                                                   = 99,
		/// <summary>
		/// Прежний водитель не автивен
		/// </summary>
		INACTIVE_OLD_DRIVER                                          = 100,
		/// <summary>
		/// Водитель не автивен
		/// </summary>
		INACTIVE_DRIVER                                              = 101,
		/// <summary>
		/// Прежний час выполнения рейса позже текущего
		/// </summary>
		OLD_RUN_EXECUTION_HOUR_LATER_CURRENT                         = 102,
		/// <summary>
		/// Час выполнения рейса позже текущего
		/// </summary>
		RUN_EXECUTION_HOUR_LATER_CURRENT                             = 103,
		/// <summary>
		/// Прежние минуты выполнения рейса позже текущих
		/// </summary>
		OLD_RUN_EXECUTION_MINUTE_LATER_CURRENT                       = 104,
		/// <summary>
		/// Минуты выполнения рейса позже текущих
		/// </summary>
		RUN_EXECUTION_MINUTE_LATER_CURRENT                           = 105,
		/// <summary>
		/// Прежний набор даты выполнения рейса, расписания рейса, автобуса
		/// и водителя не существует
		/// </summary>
		OLD_RUN_EXECUTION_DATE_RUN_BUS_DRIVER_SET_ABSENCE            = 106,
		/// <summary>
		/// Набор даты выполнения рейса, расписания рейса, автобуса
		/// и водителя не существует
		/// </summary>
		RUN_EXECUTION_DATE_RUN_BUS_DRIVER_SET_ABSENCE                = 107,
		/// <summary>
		/// Набор даты выполнения рейса, расписания рейса, автобуса
		/// и водителя уже существует
		/// </summary>
		RUN_EXECUTION_DATE_RUN_BUS_DRIVER_SET_EXISTENCE              = 109,
		/// <summary>
		/// Срок эксплуатации автобуса находится вне диапазона от 0 до 15 лет
		/// </summary>
		BUS_USAGE_PERIOD_OUT_OF_RANGE                                = 132,
		/// <summary>
		/// Прежний день недели является пуcтoй cтpoкoй
		/// или состоит из oдниx пpoбeлoв
		/// </summary>
		EMPTY_OLD_WEEKDAY                                            = 140,
		/// <summary>
		/// Прежний день недели не существует
		/// </summary>
		OLD_WEEKDAY_ABSENCE                                          = 141,
		/// <summary>
		/// Карта является пуcтoй cтpoкoй или состоит из oдниx пpoбeлoв
		/// </summary>
		EMPTY_MAP                                                    = 143,
		/// <summary>
		/// Карта не существует
		/// </summary>
		MAP_ABSENCE                                                  = 145,
		/// <summary>
		/// Набор маршрута и карты не существует
		/// </summary>
		PATH_MAP_SET_ABSENCE                                         = 149,
		/// <summary>
		/// Подстрока названия остановки является пуcтoй cтpoкoй
		/// или состоит из oдниx пpoбeлoв
		/// </summary>
		EMPTY_STOP_NAME_SUBSTRING                                    = 157
	} // StoredProcedureErrorCause
} // CentralBusTerminalClient