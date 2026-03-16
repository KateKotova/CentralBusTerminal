using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Выполнение рейса
	/// </summary>
	public class RunExecution : Entity
	{
		#region Поля
		/// <summary>
		/// Заголовок сущности
		/// </summary>
		new public const string ENTITY_CAPTION = "Выполнение рейса";

		#region Названия хранимых процедур
		/// <summary>
		/// Название хранимой процедуры показа
		/// </summary>
		new public const string    SHOW_PROCEDURE_NAME = "SP_ShowRunsExecutions";

		/// <summary>
		/// Название хранимой процедуры добавления
		/// </summary>
		new protected const string INSERT_PROCEDURE_NAME =
			"SP_InsertRunExecution";
		/// <summary>
		/// Название хранимой процедуры обновления
		/// </summary>
		new protected const string UPDATE_PROCEDURE_NAME =
			"SP_UpdateRunExecution";
		/// <summary>
		/// Название хранимой процедуры удаления
		/// </summary>
		new protected const string DELETE_PROCEDURE_NAME =
			"SP_DeleteRunExecution";

		/// <summary>
		/// Название хранимой процедуры показа маршрутов
		/// </summary>
		protected const string SHOW_PATHS_PROCEDURE_NAME    = "SP_ShowPaths";
		/// <summary>
		/// Название хранимой процедуры показа категорий автобусов
		/// </summary>
		protected const string SHOW_BUSES_CATEGORIES_PROCEDURE_NAME =
			"SP_ShowBusesCategories";
		/// <summary>
		/// Название хранимой процедуры показа дней недели
		/// </summary>
		protected const string SHOW_WEEKDAYS_PROCEDURE_NAME = "SP_ShowWeekdays";
		/// <summary>
		/// Название хранимой процедуры показа автобусов
		/// </summary>
		protected const string SHOW_BUSES_PROCEDURE_NAME    = "SP_ShowBuses";
		/// <summary>
		/// Название хранимой процедуры показа водителей автобусов
		/// </summary>
		protected const string SHOW_DRIVERS_PROCEDURE_NAME  = "SP_ShowDrivers";
		#endregion Названия хранимых процедур

		#region Названия таблиц сущностей
		/// <summary>
		/// Название таблицы выполнений рейсов
		/// </summary>
		protected readonly string _RunsExecutionsDataSetTableName;
		/// <summary>
		/// Название таблицы маршрутов
		/// </summary>
		protected readonly string _PathsDataSetTableName;
		/// <summary>
		/// Название таблицы категорий автобусов
		/// </summary>
		protected readonly string _BusesCategoriesDataSetTableName;
		/// <summary>
		/// Название таблицы дней недели
		/// </summary>
		protected readonly string _WeekdaysDataSetTableName;
		/// <summary>
		/// Название таблицы автобусов
		/// </summary>
		protected readonly string _BusesDataSetTableName;
		/// <summary>
		/// Название таблицы водителей автобусов
		/// </summary>
		protected readonly string _DriversDataSetTableName;
		#endregion Названия таблиц сущностей

		#region Адаптеры Sql-данных
		/// <summary>
		/// Адаптер Sql-данных выполнений рейсов
		/// </summary>
		protected SqlDataAdapter _RunsExecutionsSqlDataAdapter;
		/// <summary>
		/// Адаптер Sql-данных маршрутов
		/// </summary>
		protected SqlDataAdapter _PathsSqlDataAdapter;
		/// <summary>
		/// Адаптер Sql-данных категорий автобусов
		/// </summary>
		protected SqlDataAdapter _BusesCategoriesSqlDataAdapter;
		/// <summary>
		/// Адаптер Sql-данных дней недели
		/// </summary>
		protected SqlDataAdapter _WeekdaysSqlDataAdapter;
		/// <summary>
		/// Адаптер Sql-данных автобусов
		/// </summary>
		protected SqlDataAdapter _BusesSqlDataAdapter;
		/// <summary>
		/// Адаптер Sql-данных водителей автобусов
		/// </summary>
		protected SqlDataAdapter _DriversSqlDataAdapter;
		#endregion Адаптеры Sql-данных

		#region Параметры
		/// <summary>
		/// Прежний гoд
		/// </summary>
		protected Parameter _OldYear       = new Parameter("@ioOldYear");
		/// <summary>
		/// Прежний мecяц
		/// </summary>
		protected Parameter _OldMonth      = new Parameter("@ioOldMonth");
		/// <summary>
		/// Прежний дeнь
		/// </summary>
		protected Parameter _OldDay        = new Parameter("@ioOldDay");
		/// <summary>
		/// Прежний маршрут
		/// </summary>
		protected Parameter _OldPath       = new Parameter("@ioOldPathName");
		/// <summary>
		/// Прежняя категория автобуса
		/// </summary>
		protected Parameter _OldBusCategory        =
			new Parameter("@ioOldBusCategoryName");
		/// <summary>
		/// Прежний день недели
		/// </summary>
		protected Parameter _OldWeekday    = new Parameter("@ioOldWeekdayName");
		/// <summary>
		/// Прежние часы
		/// </summary>
		protected Parameter _OldHour       = new Parameter("@ioOldHour");
		/// <summary>
		/// Прежние минуты
		/// </summary>
		protected Parameter _OldMinute     = new Parameter("@ioOldMinute");
		/// <summary>
		/// Прежний автомобильный номер автобуса
		/// </summary>
		protected Parameter _OldBusCarCode = new Parameter("@ioOldBusCarCode");
		/// <summary>
		/// Прежние паспортные данные водителя автобуса
		/// </summary>
		protected Parameter _OldDriverPassportData =
			new Parameter("@ioOldDriverPassportData");
		/// <summary>
		/// Гoд
		/// </summary>
		protected Parameter _Year          = new Parameter("@ioYear");
		/// <summary>
		/// Мecяц
		/// </summary>
		protected Parameter _Month         = new Parameter("@ioMonth");
		/// <summary>
		/// Дeнь
		/// </summary>
		protected Parameter _Day           = new Parameter("@ioDay");
		/// <summary>
		/// Маршрут
		/// </summary>
		protected Parameter _Path          = new Parameter("@ioPathName");
		/// <summary>
		/// Категория автобуса
		/// </summary>
		protected Parameter _BusCategory   = new Parameter("@ioBusCategoryName");
		/// <summary>
		/// День недели
		/// </summary>
		protected Parameter _Weekday       = new Parameter("@ioWeekdayName");
		/// <summary>
		/// Часы
		/// </summary>
		protected Parameter _Hour          = new Parameter("@ioHour");
		/// <summary>
		/// Минуты
		/// </summary>
		protected Parameter _Minute        = new Parameter("@ioMinute");
		/// <summary>
		/// Автомобильный номер автобуса
		/// </summary>
		protected Parameter _BusCarCode    = new Parameter("@ioBusCarCode");
		/// <summary>
		/// Паспортные данные водителя автобуса
		/// </summary>
		protected Parameter _DriverPassportData    =
			new Parameter("@ioDriverPassportData");
		#endregion Параметры
		#endregion Поля

		#region Методы
		#region Методы инициализации и очистки
		/// <summary>
		/// Заполнение адаптера Sql-данных сущности
		/// </summary>
		/// <param name="parDataSet">Множество данных</param>
		public override void FillEntitySqlDataAdapter
			( ref CentralBusTerminalDataSet parDataSet )
		{
			// Заполнение адаптеров Sql-данных в зависимости
			// от текущего действия хранимой процедуры
			switch ( this._CurrentAction )
			{
				// Показ
				case StoredProcedureAction.SHOW :
					// Адаптер Sql-данных выполнений рейсов
					this._RunsExecutionsSqlDataAdapter.Fill( parDataSet,
						this._RunsExecutionsDataSetTableName );
					break;

				// Добавление
				case StoredProcedureAction.INSERT :
					// Адаптер Sql-данных выполнений рейсов
					this._RunsExecutionsSqlDataAdapter.Fill ( parDataSet,
						this._RunsExecutionsDataSetTableName );
					// Адаптер Sql-данных маршрутов
					this._PathsSqlDataAdapter.Fill          ( parDataSet,
						this._PathsDataSetTableName );
					// Адаптер Sql-данных категорий автобусов
					this._BusesCategoriesSqlDataAdapter.Fill( parDataSet,
						this._BusesCategoriesDataSetTableName );
					// Адаптер Sql-данных дней недели
					this._WeekdaysSqlDataAdapter.Fill       ( parDataSet,
						this._WeekdaysDataSetTableName );
					// Адаптер Sql-данных автобусов
					this._BusesSqlDataAdapter.Fill          ( parDataSet,
						this._BusesDataSetTableName );
					// Адаптер Sql-данных водителей автобусов
					this._DriversSqlDataAdapter.Fill        ( parDataSet,
						this._DriversDataSetTableName );
					return;

				// Обновление
				case StoredProcedureAction.UPDATE :
					// Адаптер Sql-данных выполнений рейсов
					this._RunsExecutionsSqlDataAdapter.Fill ( parDataSet,
						this._RunsExecutionsDataSetTableName );
					// Адаптер Sql-данных маршрутов
					this._PathsSqlDataAdapter.Fill          ( parDataSet,
						this._PathsDataSetTableName );
					// Адаптер Sql-данных категорий автобусов
					this._BusesCategoriesSqlDataAdapter.Fill( parDataSet,
						this._BusesCategoriesDataSetTableName );
					// Адаптер Sql-данных дней недели
					this._WeekdaysSqlDataAdapter.Fill       ( parDataSet,
						this._WeekdaysDataSetTableName );
					// Адаптер Sql-данных автобусов
					this._BusesSqlDataAdapter.Fill          ( parDataSet,
						this._BusesDataSetTableName );
					// Адаптер Sql-данных водителей автобусов
					this._DriversSqlDataAdapter.Fill        ( parDataSet,
						this._DriversDataSetTableName );
					return;

				// Удаление
				case StoredProcedureAction.DELETE :
					// Адаптер Sql-данных выполнений рейсов
					this._RunsExecutionsSqlDataAdapter.Fill ( parDataSet,
						this._RunsExecutionsDataSetTableName );
					// Адаптер Sql-данных маршрутов
					this._PathsSqlDataAdapter.Fill          ( parDataSet,
						this._PathsDataSetTableName );
					// Адаптер Sql-данных категорий автобусов
					this._BusesCategoriesSqlDataAdapter.Fill( parDataSet,
						this._BusesCategoriesDataSetTableName );
					// Адаптер Sql-данных дней недели
					this._WeekdaysSqlDataAdapter.Fill       ( parDataSet,
						this._WeekdaysDataSetTableName );
					// Адаптер Sql-данных автобусов
					this._BusesSqlDataAdapter.Fill          ( parDataSet,
						this._BusesDataSetTableName );
					// Адаптер Sql-данных водителей автобусов
					this._DriversSqlDataAdapter.Fill        ( parDataSet,
						this._DriversDataSetTableName );
					return;

				// Прочие непредусмотренные процедуры
				default :
					return;
			} // switch
		} // FillSqlDataAdapters

		/// <summary>
		/// Инициализация
		/// </summary>
		/// <param name="parDataSet">Множество данных</param>
		public override void Initialize
			( ref CentralBusTerminalDataSet parDataSet )
		{
			// Заполнение адаптеров Sql-данных
			base.Initialize( ref parDataSet );
			// Направление параметров
			ParameterDirection direction  = ParameterDirection.InputOutput;
			// Допустимость неопределённого значения параметров
			bool               isNullable = true;

			// Инициализация параметров в зависимости
			// от текущего действия хранимой процедуры
			switch ( this._CurrentAction )
			{
				// Добавление
				case StoredProcedureAction.INSERT :
					this._Year.InitializeSmallint              ( direction, isNullable,
						string.Empty );
					this._Month.InitializeTinyint              ( direction, isNullable,
						string.Empty );
					this._Day.InitializeTinyint                ( direction, isNullable,
						string.Empty );
					this._Path.InitializeNVarChar              ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._BusCategory.InitializeNVarChar       ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._Weekday.InitializeNVarChar           ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._Hour.InitializeTinyint               ( direction, isNullable,
						string.Empty );
					this._Minute.InitializeTinyint             ( direction, isNullable,
						string.Empty );
					this._BusCarCode.InitializeNVarChar        ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._DriverPassportData.InitializeNVarChar( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					return;

				// Обновление
				case StoredProcedureAction.UPDATE :
					this._OldYear.InitializeSmallint       ( direction, isNullable,
						string.Empty );
					this._OldMonth.InitializeTinyint       ( direction, isNullable,
						string.Empty );
					this._OldDay.InitializeTinyint         ( direction, isNullable,
						string.Empty );
					this._OldPath.InitializeNVarChar       ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._OldBusCategory.InitializeNVarChar( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._OldWeekday.InitializeNVarChar    ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._OldHour.InitializeTinyint        ( direction, isNullable,
						string.Empty );
					this._OldMinute.InitializeTinyint      ( direction, isNullable,
						string.Empty );
					this._OldBusCarCode.InitializeNVarChar ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._OldDriverPassportData.InitializeNVarChar( direction,
						isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._Year.InitializeSmallint          ( direction, isNullable,
						string.Empty );
					this._Month.InitializeTinyint          ( direction, isNullable,
						string.Empty );
					this._Day.InitializeTinyint            ( direction, isNullable,
						string.Empty );
					this._Path.InitializeNVarChar          ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._BusCategory.InitializeNVarChar   ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._Weekday.InitializeNVarChar       ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._Hour.InitializeTinyint           ( direction, isNullable,
						string.Empty );
					this._Minute.InitializeTinyint         ( direction, isNullable,
						string.Empty );
					this._BusCarCode.InitializeNVarChar    ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._DriverPassportData.InitializeNVarChar   ( direction,
						isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					return;

				// Удаление
				case StoredProcedureAction.DELETE :
					this._Year.InitializeSmallint              ( direction, isNullable,
						string.Empty );
					this._Month.InitializeTinyint              ( direction, isNullable,
						string.Empty );
					this._Day.InitializeTinyint                ( direction, isNullable,
						string.Empty );
					this._Path.InitializeNVarChar              ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._BusCategory.InitializeNVarChar       ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._Weekday.InitializeNVarChar           ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._Hour.InitializeTinyint               ( direction, isNullable,
						string.Empty );
					this._Minute.InitializeTinyint             ( direction, isNullable,
						string.Empty );
					this._BusCarCode.InitializeNVarChar        ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._DriverPassportData.InitializeNVarChar( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					return;

				// Прочие непредусмотренные процедуры
				default :
					return;
			} // switch
		} // Initialize

		/// <summary>
		/// Очистка
		/// </summary>
		public override void Clear( )
		{
			// Очистка параметров в зависимости
			// от текущего действия хранимой процедуры
			switch ( this._CurrentAction )
			{
				// Добавление
				case StoredProcedureAction.INSERT :
					this._Year.Clear( );
					this._Month.Clear( );
					this._Day.Clear( );
					this._Path.Clear( );
					this._BusCategory.Clear( );
					this._Weekday.Clear( );
					this._Hour.Clear( );
					this._Minute.Clear( );
					this._BusCarCode.Clear( );
					this._DriverPassportData.Clear( );
					return;

				// Обновление
				case StoredProcedureAction.UPDATE :
					this._OldYear.Clear( );
					this._OldMonth.Clear( );
					this._OldDay.Clear( );
					this._OldPath.Clear( );
					this._OldBusCategory.Clear( );
					this._OldWeekday.Clear( );
					this._OldHour.Clear( );
					this._OldMinute.Clear( );
					this._OldBusCarCode.Clear( );
					this._OldDriverPassportData.Clear( );
					this._Year.Clear( );
					this._Month.Clear( );
					this._Day.Clear( );
					this._Path.Clear( );
					this._BusCategory.Clear( );
					this._Weekday.Clear( );
					this._Hour.Clear( );
					this._Minute.Clear( );
					this._BusCarCode.Clear( );
					this._DriverPassportData.Clear( );
					return;

				// Удаление
				case StoredProcedureAction.DELETE :
					this._Year.Clear( );
					this._Month.Clear( );
					this._Day.Clear( );
					this._Path.Clear( );
					this._BusCategory.Clear( );
					this._Weekday.Clear( );
					this._Hour.Clear( );
					this._Minute.Clear( );
					this._BusCarCode.Clear( );
					this._DriverPassportData.Clear( );
					return;

				// Прочие непредусмотренные процедуры
				default :
					return;
			} // switch
		} // Clear
		#endregion Методы инициализации и очистки

		#region Методы загрузки параметров хранимых процедур
		/// <summary>
		/// Загрузка параметров хранимой процедуры добавления
		/// </summary>
		/// <param name="parYear">Гoд</param>
		/// <param name="parMonth">Мecяц</param>
		/// <param name="parDay">Дeнь</param>
		/// <param name="parPath">Маршрут</param>
		/// <param name="parBusCategory">Категория автобуса</param>
		/// <param name="parWeekday">День недели</param>
		/// <param name="parHour">Часы</param>
		/// <param name="parMinute">Минуты</param>
		/// <param name="parBusCarCode">Автомобильный номер автобуса</param>
		/// <param name="parDriverPassportData">
		/// Паспортные данные водителя автобуса</param>
		/// <returns>Отчёт операции с результатами SUCCESSFUL,
		/// INVALID_RUN_EXECUTION_YEAR, INVALID_RUN_EXECUTION_MONTH,
		/// INVALID_RUN_EXECUTION_DAY, INVALID_PATH, INVALID_BUS_CATEGORY,
		/// INVALID_WEEKDAY, INVALID_RUN_HOUR, INVALID_RUN_MINUTE,
		/// INVALID_BUS_CAR_CODE, INVALID_DRIVER_PASSPORT_DATA</returns>
		public virtual OperationReport LoadInsertStoredProcedureParameters
		(
			string parYear,
			string parMonth,
			string parDay,
			string parPath,
			string parBusCategory,
			string parWeekday,
			string parHour,
			string parMinute,
			string parBusCarCode,
			string parDriverPassportData
		)
		{
			// Установка года
			if ( this._Year.SetValue( parYear )                             !=
					OperationResult.SUCCESSFUL )
				return new OperationReport
					( OperationResult.INVALID_RUN_EXECUTION_YEAR,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка месяца
			if ( this._Month.SetValue( parMonth )                           !=
					OperationResult.SUCCESSFUL )
				return new OperationReport
					( OperationResult.INVALID_RUN_EXECUTION_MONTH,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка дня
			if ( this._Day.SetValue( parDay )                               !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_RUN_EXECUTION_DAY,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка маршрута
			if ( this._Path.SetValue( parPath )                             !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_PATH,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка категории автобуса
			if ( this._BusCategory.SetValue( parBusCategory )               !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_BUS_CATEGORY,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка дня недели
			if ( this._Weekday.SetValue( parWeekday )                       !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_WEEKDAY,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка часов
			if ( this._Hour.SetValue( parHour )                             !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_RUN_HOUR,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка минут
			if ( this._Minute.SetValue( parMinute )                         !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_RUN_MINUTE,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка автомобильного номера автобуса
			if ( this._BusCarCode.SetValue( parBusCarCode )                 !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_BUS_CAR_CODE,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка паспортных данных водителя автобуса
			if ( this._DriverPassportData.SetValue( parDriverPassportData ) !=
					OperationResult.SUCCESSFUL )
				return new OperationReport
					( OperationResult.INVALID_DRIVER_PASSPORT_DATA,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Успешное завершение операции
			return new OperationReport( );
		} // LoadInsertStoredProcedureParameters

		/// <summary>
		/// Загрузка параметров хранимой процедуры обновления
		/// </summary>
		/// <param name="parOldYear">Прежний гoд</param>
		/// <param name="parOldMonth">Прежний мecяц</param>
		/// <param name="parOldDay">Прежний дeнь</param>
		/// <param name="parOldPath">Прежний маршрут</param>
		/// <param name="parOldBusCategory">Прежняя категория автобуса</param>
		/// <param name="parOldWeekday">Прежний день недели</param>
		/// <param name="parOldHour">Прежние часы</param>
		/// <param name="parOldMinute">Прежние минуты</param>
		/// <param name="parOldBusCarCode">
		/// Прежний автомобильный номер автобуса</param>
		/// <param name="parOldDriverPassportData">
		/// Прежние паспортные данные водителя автобуса</param>
		/// <param name="parYear">Гoд</param>
		/// <param name="parMonth">Мecяц</param>
		/// <param name="parDay">Дeнь</param>
		/// <param name="parPath">Маршрут</param>
		/// <param name="parBusCategory">Категория автобуса</param>
		/// <param name="parWeekday">День недели</param>
		/// <param name="parHour">Часы</param>
		/// <param name="parMinute">Минуты</param>
		/// <param name="parBusCarCode">Автомобильный номер автобуса</param>
		/// <param name="parDriverPassportData">
		/// Паспортные данные водителя автобуса</param>
		/// <returns>Отчёт операции с результатами SUCCESSFUL,
		/// INVALID_OLD_RUN_EXECUTION_YEAR, INVALID_OLD_RUN_EXECUTION_MONTH,
		/// INVALID_OLD_RUN_EXECUTION_DAY, INVALID_OLD_PATH,
		/// INVALID_OLD_BUS_CATEGORY, INVALID_OLD_WEEKDAY, INVALID_OLD_RUN_HOUR,
		/// INVALID_OLD_RUN_MINUTE, INVALID_OLD_BUS_CAR_CODE,
		/// INVALID_OLD_DRIVER_PASSPORT_DATA, INVALID_RUN_EXECUTION_YEAR,
		/// INVALID_RUN_EXECUTION_MONTH, INVALID_RUN_EXECUTION_DAY,
		/// INVALID_PATH, INVALID_BUS_CATEGORY, INVALID_WEEKDAY, INVALID_RUN_HOUR,
		/// INVALID_RUN_MINUTE, INVALID_BUS_CAR_CODE,
		/// INVALID_DRIVER_PASSPORT_DATA</returns>
		public virtual OperationReport LoadUpdateStoredProcedureParameters
		(
			string parOldYear,
			string parOldMonth,
			string parOldDay,
			string parOldPath,
			string parOldBusCategory,
			string parOldWeekday,
			string parOldHour,
			string parOldMinute,
			string parOldBusCarCode,
			string parOldDriverPassportData,
			string parYear,
			string parMonth,
			string parDay,
			string parPath,
			string parBusCategory,
			string parWeekday,
			string parHour,
			string parMinute,
			string parBusCarCode,
			string parDriverPassportData
		)
		{
			// Установка прежнего года
			if ( this._OldYear.SetValue( parOldYear )                             !=
					OperationResult.SUCCESSFUL )
				return new OperationReport
					( OperationResult.INVALID_OLD_RUN_EXECUTION_YEAR,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка прежнего месяца
			if ( this._OldMonth.SetValue( parOldMonth )                           !=
					OperationResult.SUCCESSFUL )
				return new OperationReport
					( OperationResult.INVALID_OLD_RUN_EXECUTION_MONTH,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка прежнего дня
			if ( this._OldDay.SetValue( parOldDay )                               !=
					OperationResult.SUCCESSFUL )
				return new OperationReport
					( OperationResult.INVALID_OLD_RUN_EXECUTION_DAY,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка прежнего маршрута
			if ( this._OldPath.SetValue( parOldPath )                             !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_OLD_PATH,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка прежней категории автобуса
			if ( this._OldBusCategory.SetValue( parOldBusCategory )               !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_OLD_BUS_CATEGORY,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка прежнего дня недели
			if ( this._OldWeekday.SetValue( parOldWeekday )                       !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_OLD_WEEKDAY,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка прежних часов
			if ( this._OldHour.SetValue( parOldHour )                             !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_OLD_RUN_HOUR,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка прежних минут
			if ( this._OldMinute.SetValue( parOldMinute )                         !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_OLD_RUN_MINUTE,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка прежнего автомобильного номера автобуса
			if ( this._OldBusCarCode.SetValue( parOldBusCarCode )                 !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_OLD_BUS_CAR_CODE,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка прежних паспортных данных водителя автобуса
			if ( this._OldDriverPassportData.SetValue( parOldDriverPassportData ) !=
					OperationResult.SUCCESSFUL )
				return new OperationReport
					( OperationResult.INVALID_OLD_DRIVER_PASSPORT_DATA,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка года
			if ( this._Year.SetValue( parYear )                                   !=
					OperationResult.SUCCESSFUL )
				return new OperationReport
					( OperationResult.INVALID_RUN_EXECUTION_YEAR,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка месяца
			if ( this._Month.SetValue( parMonth )                                 !=
					OperationResult.SUCCESSFUL )
				return new OperationReport
					( OperationResult.INVALID_RUN_EXECUTION_MONTH,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка дня
			if ( this._Day.SetValue( parDay )                                     !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_RUN_EXECUTION_DAY,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка маршрута
			if ( this._Path.SetValue( parPath )                                   !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_PATH,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка категории автобуса
			if ( this._BusCategory.SetValue( parBusCategory )                     !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_BUS_CATEGORY,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка дня недели
			if ( this._Weekday.SetValue( parWeekday )                             !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_WEEKDAY,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка часов
			if ( this._Hour.SetValue( parHour )                                   !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_RUN_HOUR,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка минут
			if ( this._Minute.SetValue( parMinute )                               !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_RUN_MINUTE,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка автомобильного номера автобуса
			if ( this._BusCarCode.SetValue( parBusCarCode )                       !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_BUS_CAR_CODE,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка паспортных данных водителя автобуса
			if ( this._DriverPassportData.SetValue( parDriverPassportData )       !=
					OperationResult.SUCCESSFUL )
				return new OperationReport
					( OperationResult.INVALID_DRIVER_PASSPORT_DATA,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Успешное завершение операции
			return new OperationReport( );
		} // LoadUpdateStoredProcedureParameters

		/// <summary>
		/// Загрузка параметров хранимой процедуры удаления
		/// </summary>
		/// <param name="parYear">Гoд</param>
		/// <param name="parMonth">Мecяц</param>
		/// <param name="parDay">Дeнь</param>
		/// <param name="parPath">Маршрут</param>
		/// <param name="parBusCategory">Категория автобуса</param>
		/// <param name="parWeekday">День недели</param>
		/// <param name="parHour">Часы</param>
		/// <param name="parMinute">Минуты</param>
		/// <param name="parBusCarCode">Автомобильный номер автобуса</param>
		/// <param name="parDriverPassportData">
		/// Паспортные данные водителя автобуса</param>
		/// <returns>Отчёт операции с результатами SUCCESSFUL,
		/// INVALID_RUN_EXECUTION_YEAR, INVALID_RUN_EXECUTION_MONTH,
		/// INVALID_RUN_EXECUTION_DAY, INVALID_PATH, INVALID_BUS_CATEGORY,
		/// INVALID_WEEKDAY, INVALID_RUN_HOUR, INVALID_RUN_MINUTE,
		/// INVALID_BUS_CAR_CODE, INVALID_DRIVER_PASSPORT_DATA</returns>
		public virtual OperationReport LoadDeleteStoredProcedureParameters
		(
			string parYear,
			string parMonth,
			string parDay,
			string parPath,
			string parBusCategory,
			string parWeekday,
			string parHour,
			string parMinute,
			string parBusCarCode,
			string parDriverPassportData
		)
		{
			// Установка года
			if ( this._Year.SetValue( parYear )                             !=
					OperationResult.SUCCESSFUL )
				return new OperationReport
					( OperationResult.INVALID_RUN_EXECUTION_YEAR,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка месяца
			if ( this._Month.SetValue( parMonth )                           !=
					OperationResult.SUCCESSFUL )
				return new OperationReport
					( OperationResult.INVALID_RUN_EXECUTION_MONTH,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка дня
			if ( this._Day.SetValue( parDay )                               !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_RUN_EXECUTION_DAY,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка маршрута
			if ( this._Path.SetValue( parPath )                             !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_PATH,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка категории автобуса
			if ( this._BusCategory.SetValue( parBusCategory )               !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_BUS_CATEGORY,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка дня недели
			if ( this._Weekday.SetValue( parWeekday )                       !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_WEEKDAY,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка часов
			if ( this._Hour.SetValue( parHour )                             !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_RUN_HOUR,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка минут
			if ( this._Minute.SetValue( parMinute )                         !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_RUN_MINUTE,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка автомобильного номера автобуса
			if ( this._BusCarCode.SetValue( parBusCarCode )                 !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_BUS_CAR_CODE,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка паспортных данных водителя автобуса
			if ( this._DriverPassportData.SetValue( parDriverPassportData ) !=
					OperationResult.SUCCESSFUL )
				return new OperationReport
					( OperationResult.INVALID_DRIVER_PASSPORT_DATA,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Успешное завершение операции
			return new OperationReport( );
		} // LoadDeleteStoredProcedureParameters
		#endregion Методы загрузки параметров хранимых процедур

		#region Методы добавления и вывода параметров хранимых процедур
		/// <summary>
		/// Добавление параметров хранимой процедуры
		/// </summary>
		/// <param name="parStoredProcedure">Хранимая процедура</param>
		protected override void AddStoredProcedureParameters
			( ref SqlCommand parStoredProcedure )
		{
			switch ( this._CurrentAction )
			{
				// Добавление
				case StoredProcedureAction.INSERT :
					// Гoд
					parStoredProcedure.Parameters.Add( this._Year.SqlParameterView );
					// Мecяц
					parStoredProcedure.Parameters.Add( this._Month.SqlParameterView );
					// Дeнь
					parStoredProcedure.Parameters.Add( this._Day.SqlParameterView );
					// Маршрут
					parStoredProcedure.Parameters.Add( this._Path.SqlParameterView );
					// Категория автобуса
					parStoredProcedure.Parameters.Add
						( this._BusCategory.SqlParameterView );
					// День недели
					parStoredProcedure.Parameters.Add( this._Weekday.SqlParameterView );
					// Часы
					parStoredProcedure.Parameters.Add( this._Hour.SqlParameterView );
					// Минуты
					parStoredProcedure.Parameters.Add( this._Minute.SqlParameterView );
					// Автомобильный номер автобуса
					parStoredProcedure.Parameters.Add
						( this._BusCarCode.SqlParameterView );
					// Паспортные данные водителя автобуса
					parStoredProcedure.Parameters.Add
						( this._DriverPassportData.SqlParameterView );
					break;

				// Обновление
				case StoredProcedureAction.UPDATE :
					// Прежний гoд
					parStoredProcedure.Parameters.Add( this._OldYear.SqlParameterView );
					// Прежний мecяц
					parStoredProcedure.Parameters.Add
						( this._OldMonth.SqlParameterView );
					// Прежний дeнь
					parStoredProcedure.Parameters.Add( this._OldDay.SqlParameterView );
					// Прежний маршрут
					parStoredProcedure.Parameters.Add( this._OldPath.SqlParameterView );
					// Прежняя категория автобуса
					parStoredProcedure.Parameters.Add
						( this._OldBusCategory.SqlParameterView );
					// Прежний день недели
					parStoredProcedure.Parameters.Add
						( this._OldWeekday.SqlParameterView );
					// Прежние часы
					parStoredProcedure.Parameters.Add( this._OldHour.SqlParameterView );
					// Прежние минуты
					parStoredProcedure.Parameters.Add
						( this._OldMinute.SqlParameterView );
					// Прежний автомобильный номер автобуса
					parStoredProcedure.Parameters.Add
						( this._OldBusCarCode.SqlParameterView );
					// Прежние паспортные данные водителя автобуса
					parStoredProcedure.Parameters.Add
						( this._OldDriverPassportData.SqlParameterView );
					// Гoд
					parStoredProcedure.Parameters.Add( this._Year.SqlParameterView );
					// Мecяц
					parStoredProcedure.Parameters.Add( this._Month.SqlParameterView );
					// Дeнь
					parStoredProcedure.Parameters.Add( this._Day.SqlParameterView );
					// Маршрут
					parStoredProcedure.Parameters.Add( this._Path.SqlParameterView );
					// Категория автобуса
					parStoredProcedure.Parameters.Add
						( this._BusCategory.SqlParameterView );
					// День недели
					parStoredProcedure.Parameters.Add( this._Weekday.SqlParameterView );
					// Часы
					parStoredProcedure.Parameters.Add( this._Hour.SqlParameterView );
					// Минуты
					parStoredProcedure.Parameters.Add( this._Minute.SqlParameterView );
					// Автомобильный номер автобуса
					parStoredProcedure.Parameters.Add
						( this._BusCarCode.SqlParameterView );
					// Паспортные данные водителя автобуса
					parStoredProcedure.Parameters.Add
						( this._DriverPassportData.SqlParameterView );
					break;

				// Удаление
				case StoredProcedureAction.DELETE :
					// Гoд
					parStoredProcedure.Parameters.Add( this._Year.SqlParameterView );
					// Мecяц
					parStoredProcedure.Parameters.Add( this._Month.SqlParameterView );
					// Дeнь
					parStoredProcedure.Parameters.Add( this._Day.SqlParameterView );
					// Маршрут
					parStoredProcedure.Parameters.Add( this._Path.SqlParameterView );
					// Категория автобуса
					parStoredProcedure.Parameters.Add
						( this._BusCategory.SqlParameterView );
					// День недели
					parStoredProcedure.Parameters.Add( this._Weekday.SqlParameterView );
					// Часы
					parStoredProcedure.Parameters.Add( this._Hour.SqlParameterView );
					// Минуты
					parStoredProcedure.Parameters.Add( this._Minute.SqlParameterView );
					// Автомобильный номер автобуса
					parStoredProcedure.Parameters.Add
						( this._BusCarCode.SqlParameterView );
					// Паспортные данные водителя автобуса
					parStoredProcedure.Parameters.Add
						( this._DriverPassportData.SqlParameterView );
					break;

				// Прочие непредусмотренные процедуры
				default:
					break;
			} // switch
		} // AddStoredProcedureParameters

		/// <summary>
		/// Вывод параметров хранимой процедуры
		/// </summary>
		/// <param name="parStoredProcedure">Хранимая процедура</param>
		protected override void OutputStoredProcedureParameters
			( SqlCommand parStoredProcedure )
		{
			switch ( this._CurrentAction )
			{
				// Добавление
				case StoredProcedureAction.INSERT :
					// Гoд
					this._Year.Value        = parStoredProcedure.Parameters[ 0 ].Value;
					// Мecяц
					this._Month.Value       = parStoredProcedure.Parameters[ 1 ].Value;
					// Дeнь
					this._Day.Value         = parStoredProcedure.Parameters[ 2 ].Value;
					// Маршрут
					this._Path.Value        = parStoredProcedure.Parameters[ 3 ].Value;
					// Категория автобуса
					this._BusCategory.Value = parStoredProcedure.Parameters[ 4 ].Value;
					// День недели
					this._Weekday.Value     = parStoredProcedure.Parameters[ 5 ].Value;
					// Часы
					this._Hour.Value        = parStoredProcedure.Parameters[ 6 ].Value;
					// Минуты
					this._Minute.Value      = parStoredProcedure.Parameters[ 7 ].Value;
					// Автомобильный номер автобуса
					this._BusCarCode.Value  = parStoredProcedure.Parameters[ 8 ].Value;
					// Паспортные данные водителя автобуса
					this._DriverPassportData.Value =
						parStoredProcedure.Parameters[ 9 ].Value;
					break;

				// Обновление
				case StoredProcedureAction.UPDATE :
					// Прежний гoд
					this._OldYear.Value     = parStoredProcedure.Parameters[  0 ].Value;
					// Прежний мecяц
					this._OldMonth.Value    = parStoredProcedure.Parameters[  1 ].Value;
					// Прежний дeнь
					this._OldDay.Value      = parStoredProcedure.Parameters[  2 ].Value;
					// Прежний маршрут
					this._OldPath.Value     = parStoredProcedure.Parameters[  3 ].Value;
					// Прежняя категория автобуса
					this._OldBusCategory.Value        =
						parStoredProcedure.Parameters[  4 ].Value;
					// Прежний день недели
					this._OldWeekday.Value  = parStoredProcedure.Parameters[  5 ].Value;
					// Прежние часы
					this._OldHour.Value     = parStoredProcedure.Parameters[  6 ].Value;
					// Прежние минуты
					this._OldMinute.Value   = parStoredProcedure.Parameters[  7 ].Value;
					// Прежний автомобильный номер автобуса
					this._OldBusCarCode.Value         =
						parStoredProcedure.Parameters[  8 ].Value;
					// Прежние паспортные данные водителя автобуса
					this._OldDriverPassportData.Value =
						parStoredProcedure.Parameters[  9 ].Value;
					// Гoд
					this._Year.Value        = parStoredProcedure.Parameters[ 10 ].Value;
					// Мecяц
					this._Month.Value       = parStoredProcedure.Parameters[ 11 ].Value;
					// Дeнь
					this._Day.Value         = parStoredProcedure.Parameters[ 12 ].Value;
					// Маршрут
					this._Path.Value        = parStoredProcedure.Parameters[ 13 ].Value;
					// Категория автобуса
					this._BusCategory.Value = parStoredProcedure.Parameters[ 14 ].Value;
					// День недели
					this._Weekday.Value     = parStoredProcedure.Parameters[ 15 ].Value;
					// Часы
					this._Hour.Value        = parStoredProcedure.Parameters[ 16 ].Value;
					// Минуты
					this._Minute.Value      = parStoredProcedure.Parameters[ 17 ].Value;
					// Автомобильный номер автобуса
					this._BusCarCode.Value  = parStoredProcedure.Parameters[ 18 ].Value;
					// Паспортные данные водителя автобуса
					this._DriverPassportData.Value    =
						parStoredProcedure.Parameters[ 19 ].Value;
					break;

				// Удаление
				case StoredProcedureAction.DELETE :
					// Гoд
					this._Year.Value        = parStoredProcedure.Parameters[ 0 ].Value;
					// Мecяц
					this._Month.Value       = parStoredProcedure.Parameters[ 1 ].Value;
					// Дeнь
					this._Day.Value         = parStoredProcedure.Parameters[ 2 ].Value;
					// Маршрут
					this._Path.Value        = parStoredProcedure.Parameters[ 3 ].Value;
					// Категория автобуса
					this._BusCategory.Value = parStoredProcedure.Parameters[ 4 ].Value;
					// День недели
					this._Weekday.Value     = parStoredProcedure.Parameters[ 5 ].Value;
					// Часы
					this._Hour.Value        = parStoredProcedure.Parameters[ 6 ].Value;
					// Минуты
					this._Minute.Value      = parStoredProcedure.Parameters[ 7 ].Value;
					// Автомобильный номер автобуса
					this._BusCarCode.Value  = parStoredProcedure.Parameters[ 8 ].Value;
					// Паспортные данные водителя автобуса
					this._DriverPassportData.Value =
						parStoredProcedure.Parameters[ 9 ].Value;
					break;

				// Прочие непредусмотренные процедуры
				default:
					break;
			} // switch
		} // OutputStoredProcedureParameters
		#endregion Методы добавления и вывода параметров хранимых процедур
		#endregion Методы

		#region Конструкторы
		/// <summary>
		/// Создание выполнения рейса по умолчанию
		/// </summary>
		public RunExecution( )
		{
			// Установка неизвестного текущего действия
			this._CurrentAction = StoredProcedureAction.UNKNOWN;
			// Пустые названия таблиц сущностей
			this._RunsExecutionsDataSetTableName  = string.Empty;
			this._PathsDataSetTableName           = string.Empty;
			this._BusesCategoriesDataSetTableName = string.Empty;
			this._WeekdaysDataSetTableName        = string.Empty;
			this._BusesDataSetTableName           = string.Empty;
			this._DriversDataSetTableName         = string.Empty;
		} // RunExecution

		/// <summary>
		/// Создание выполнения рейса c заданным действием хранимой процедуры
		/// и названиями таблиц сущностей
		/// </summary>
		/// <param name="parAction">Действие</param>
		/// <param name="parDataSet">Множество данных</param>
		/// <param name="parRunsExecutionsDataSetTableName">
		/// Название таблицы выполнений рейсов</param>
		/// <param name="parPathsDataSetTableName">
		/// Название таблицы маршрутов</param>
		/// <param name="parBusesCategoriesDataSetTableName">
		/// Название таблицы категорий автобусов</param>
		/// <param name="parWeekdaysDataSetTableName">
		/// Название таблицы дней недели</param>
		/// <param name="parBusesDataSetTableName">
		/// Название таблицы автобусов</param>
		/// <param name="parDriversDataSetTableName">
		/// Название таблицы водителей автобусов</param>
		public RunExecution
		(
			StoredProcedureAction         parAction,
			ref CentralBusTerminalDataSet parDataSet,
			string                        parRunsExecutionsDataSetTableName,
			string                        parPathsDataSetTableName,
			string                        parBusesCategoriesDataSetTableName,
			string                        parWeekdaysDataSetTableName,
			string                        parBusesDataSetTableName,
			string                        parDriversDataSetTableName
		)
		{
			// Установка текущего действия
			this._CurrentAction = parAction;
			// Инициализация названий таблиц сущностей
			this._RunsExecutionsDataSetTableName  =
				parRunsExecutionsDataSetTableName;
			this._PathsDataSetTableName    = parPathsDataSetTableName;
			this._BusesCategoriesDataSetTableName =
				parBusesCategoriesDataSetTableName;
			this._WeekdaysDataSetTableName = parWeekdaysDataSetTableName;
			this._BusesDataSetTableName    = parBusesDataSetTableName;
			this._DriversDataSetTableName  = parDriversDataSetTableName;

			// Инициализация адаптеров Sql-данных в зависимости
			// от текущего действия хранимой процедуры
			switch ( this._CurrentAction )
			{
				// Показ
				case StoredProcedureAction.SHOW :
					// Адаптер Sql-данных выполнений рейсов
					this._RunsExecutionsSqlDataAdapter  = new SqlDataAdapter
						( new SqlCommand( RunExecution.SHOW_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					break;

				// Добавление
				case StoredProcedureAction.INSERT :
					// Адаптер Sql-данных выполнений рейсов
					this._RunsExecutionsSqlDataAdapter  = new SqlDataAdapter
						( new SqlCommand( RunExecution.SHOW_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных маршрутов
					this._PathsSqlDataAdapter           = new SqlDataAdapter
						( new SqlCommand( RunExecution.SHOW_PATHS_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных категорий автобусов
					this._BusesCategoriesSqlDataAdapter = new SqlDataAdapter
						( new SqlCommand
						( RunExecution.SHOW_BUSES_CATEGORIES_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных дней недели
					this._WeekdaysSqlDataAdapter        = new SqlDataAdapter
						( new SqlCommand( RunExecution.SHOW_WEEKDAYS_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных автобусов
					this._BusesSqlDataAdapter           = new SqlDataAdapter
						( new SqlCommand( RunExecution.SHOW_BUSES_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных водителей автобусов
					this._DriversSqlDataAdapter         = new SqlDataAdapter
						( new SqlCommand( RunExecution.SHOW_DRIVERS_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					break;

				// Обновление
				case StoredProcedureAction.UPDATE :
					// Адаптер Sql-данных выполнений рейсов
					this._RunsExecutionsSqlDataAdapter  = new SqlDataAdapter
						( new SqlCommand( RunExecution.SHOW_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных маршрутов
					this._PathsSqlDataAdapter           = new SqlDataAdapter
						( new SqlCommand( RunExecution.SHOW_PATHS_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных категорий автобусов
					this._BusesCategoriesSqlDataAdapter = new SqlDataAdapter
						( new SqlCommand
						( RunExecution.SHOW_BUSES_CATEGORIES_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных дней недели
					this._WeekdaysSqlDataAdapter        = new SqlDataAdapter
						( new SqlCommand( RunExecution.SHOW_WEEKDAYS_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных автобусов
					this._BusesSqlDataAdapter           = new SqlDataAdapter
						( new SqlCommand( RunExecution.SHOW_BUSES_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных водителей автобусов
					this._DriversSqlDataAdapter         = new SqlDataAdapter
						( new SqlCommand( RunExecution.SHOW_DRIVERS_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					break;

				// Удаление
				case StoredProcedureAction.DELETE :
					// Адаптер Sql-данных выполнений рейсов
					this._RunsExecutionsSqlDataAdapter  = new SqlDataAdapter
						( new SqlCommand( RunExecution.SHOW_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных маршрутов
					this._PathsSqlDataAdapter           = new SqlDataAdapter
						( new SqlCommand( RunExecution.SHOW_PATHS_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных категорий автобусов
					this._BusesCategoriesSqlDataAdapter = new SqlDataAdapter
						( new SqlCommand
						( RunExecution.SHOW_BUSES_CATEGORIES_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных дней недели
					this._WeekdaysSqlDataAdapter        = new SqlDataAdapter
						( new SqlCommand( RunExecution.SHOW_WEEKDAYS_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных автобусов
					this._BusesSqlDataAdapter           = new SqlDataAdapter
						( new SqlCommand( RunExecution.SHOW_BUSES_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных водителей автобусов
					this._DriversSqlDataAdapter         = new SqlDataAdapter
						( new SqlCommand( RunExecution.SHOW_DRIVERS_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					break;

				// Прочие непредусмотренные процедуры
				default :
					break;
			} // switch

			// Инициализация
			this.Initialize( ref parDataSet );
		} // RunExecution
		#endregion Конструкторы

		#region Свойства
		/// <summary>
		/// Название хранимой процедуры текущего действия
		/// </summary>
		public override string CurrentActionStoredProcedureName
		{
			get
			{
				switch ( this._CurrentAction )
				{
					// Показ
					case StoredProcedureAction.SHOW :
						return RunExecution.SHOW_PROCEDURE_NAME;

					// Установка
					case StoredProcedureAction.SET :
						return RunExecution.SET_PROCEDURE_NAME;

					// Добавление
					case StoredProcedureAction.INSERT :
						return RunExecution.INSERT_PROCEDURE_NAME;

					// Обновление
					case StoredProcedureAction.UPDATE :
						return RunExecution.UPDATE_PROCEDURE_NAME;

					// Удаление
					case StoredProcedureAction.DELETE :
						return RunExecution.DELETE_PROCEDURE_NAME;

					// Прочие непредусмотренные процедуры
					default :
						return string.Empty;
				} // switch
			} // get
		} // CurrentActionStoredProcedureName

		#region Названия таблиц сущностей
		/// <summary>
		/// Название таблицы выполнений рейсов
		/// </summary>
		public virtual string RunsExecutionsDataSetTableName
		{
			get
			{
				return this._RunsExecutionsDataSetTableName;
			} // get
		} // RunsExecutionsDataSetTableName

		/// <summary>
		/// Название таблицы маршрутов
		/// </summary>
		public virtual string PathsDataSetTableName
		{
			get
			{
				return this._PathsDataSetTableName;
			} // get
		} // PathsDataSetTableName

		/// <summary>
		/// Название таблицы категорий автобусов
		/// </summary>
		public virtual string BusesCategoriesDataSetTableName
		{
			get
			{
				return this._BusesCategoriesDataSetTableName;
			} // get
		} // BusesCategoriesDataSetTableName

		/// <summary>
		/// Название таблицы дней недели
		/// </summary>
		public virtual string WeekdaysDataSetTableName
		{
			get
			{
				return this._WeekdaysDataSetTableName;
			} // get
		} // WeekdaysDataSetTableName

		/// <summary>
		/// Название таблицы автобусов
		/// </summary>
		public virtual string BusesDataSetTableName
		{
			get
			{
				return this._BusesDataSetTableName;
			} // get
		} // BusesDataSetTableName

		/// <summary>
		/// Название таблицы водителей автобусов
		/// </summary>
		public virtual string DriversDataSetTableName
		{
			get
			{
				return this._DriversDataSetTableName;
			} // get
		} // DriversDataSetTableName
		#endregion Названия таблиц сущностей

		#region Строки значений Sql-параметров
		/// <summary>
		/// Прежний гoд
		/// </summary>
		public virtual string OldYear
		{
			get
			{
				return this._OldYear.ValueString;
			} // get
		} // OldYear

		/// <summary>
		/// Прежний мecяц
		/// </summary>
		public virtual string OldMonth
		{
			get
			{
				return this._OldMonth.ValueString;
			} // get
		} // OldMonth

		/// <summary>
		/// Прежний дeнь
		/// </summary>
		public virtual string OldDay
		{
			get
			{
				return this._OldDay.ValueString;
			} // get
		} // OldDay

		/// <summary>
		/// Старая дата
		/// </summary>
		public virtual DateTime OldDate
		{
			get
			{
				return new DateTime
				(
					Convert.ToInt16( this._OldYear.SqlParameterView.Value  ),
					Convert.ToInt16( this._OldMonth.SqlParameterView.Value ),
					Convert.ToInt16( this._OldDay.SqlParameterView.Value   )
				);
			} // get
		} // OldDate

		/// <summary>
		/// Прежний маршрут
		/// </summary>
		public virtual string OldPath
		{
			get
			{
				return this._OldPath.ValueString;
			} // get
		} // OldPath

		/// <summary>
		/// Прежняя категория автобуса
		/// </summary>
		public virtual string OldBusCategory
		{
			get
			{
				return this._OldBusCategory.ValueString;
			} // get
		} // OldBusCategory

		/// <summary>
		/// Прежний день недели
		/// </summary>
		public virtual string OldWeekday
		{
			get
			{
				return this._OldWeekday.ValueString;
			} // get
		} // OldWeekday

		/// <summary>
		/// Прежние часы
		/// </summary>
		public virtual string OldHour
		{
			get
			{
				return this._OldHour.ValueString;
			} // get
		} // OldHour

		/// <summary>
		/// Прежние минуты
		/// </summary>
		public virtual string OldMinute
		{
			get
			{
				return this._OldMinute.ValueString;
			} // get
		} // OldMinute

		/// <summary>
		/// Старое время
		/// </summary>
		public virtual DateTime OldTime
		{
			get
			{
				return new DateTime
				(
					DataContainer.DATE_TIME_PICKER_MINIMUM_YEAR,
					1,
					1,
					Convert.ToInt16( this._OldHour.SqlParameterView.Value   ),
					Convert.ToInt16( this._OldMinute.SqlParameterView.Value ),
					0
				);
			} // get
		} // OldTime

		/// <summary>
		/// Прежний автомобильный номер автобуса
		/// </summary>
		public virtual string OldBusCarCode
		{
			get
			{
				return this._OldBusCarCode.ValueString;
			} // get
		} // OldBusCarCode

		/// <summary>
		/// Прежние паспортные данные водителя автобуса
		/// </summary>
		public virtual string OldDriverPassportData
		{
			get
			{
				return this._OldDriverPassportData.ValueString;
			} // get
		} // OldDriverPassportData

		/// <summary>
		/// Гoд
		/// </summary>
		public virtual string Year
		{
			get
			{
				return this._Year.ValueString;
			} // get
		} // Year

		/// <summary>
		/// Мecяц
		/// </summary>
		public virtual string Month
		{
			get
			{
				return this._Month.ValueString;
			} // get
		} // Month

		/// <summary>
		/// Дeнь
		/// </summary>
		public virtual string Day
		{
			get
			{
				return this._Day.ValueString;
			} // get
		} // Day

		/// <summary>
		/// Дата
		/// </summary>
		public virtual DateTime Date
		{
			get
			{
				return new DateTime
				(
					Convert.ToInt16( this._Year.SqlParameterView.Value  ),
					Convert.ToInt16( this._Month.SqlParameterView.Value ),
					Convert.ToInt16( this._Day.SqlParameterView.Value   )
				);
			} // get
		} // Date

		/// <summary>
		/// Маршрут
		/// </summary>
		public virtual string Path
		{
			get
			{
				return this._Path.ValueString;
			} // get
		} // Path

		/// <summary>
		/// Категория автобуса
		/// </summary>
		public virtual string BusCategory
		{
			get
			{
				return this._BusCategory.ValueString;
			} // get
		} // BusCategory

		/// <summary>
		/// День недели
		/// </summary>
		public virtual string Weekday
		{
			get
			{
				return this._Weekday.ValueString;
			} // get
		} // Weekday

		/// <summary>
		/// Часы
		/// </summary>
		public virtual string Hour
		{
			get
			{
				return this._Hour.ValueString;
			} // get
		} // Hour

		/// <summary>
		/// Минуты
		/// </summary>
		public virtual string Minute
		{
			get
			{
				return this._Minute.ValueString;
			} // get
		} // Minute

		/// <summary>
		/// Время
		/// </summary>
		public virtual DateTime Time
		{
			get
			{
				return new DateTime
				(
					DataContainer.DATE_TIME_PICKER_MINIMUM_YEAR,
					1,
					1,
					Convert.ToInt16( this._Hour.SqlParameterView.Value   ),
					Convert.ToInt16( this._Minute.SqlParameterView.Value ),
					0
				);
			} // get
		} // Time

		/// <summary>
		/// Автомобильный номер автобуса
		/// </summary>
		public virtual string BusCarCode
		{
			get
			{
				return this._BusCarCode.ValueString;
			} // get
		} // BusCarCode

		/// <summary>
		/// Паспортные данные водителя автобуса
		/// </summary>
		public virtual string DriverPassportData
		{
			get
			{
				return this._DriverPassportData.ValueString;
			} // get
		} // DriverPassportData
		#endregion Строки значений Sql-параметров
		#endregion Свойства
	} // RunExecution
} // CentralBusTerminalClient