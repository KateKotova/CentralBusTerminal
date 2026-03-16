using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Автобус
	/// </summary>
	public class Bus : Entity
	{
		#region Поля
		/// <summary>
		/// Заголовок сущности
		/// </summary>
		new public const string ENTITY_CAPTION = "Автобус";

		#region Названия хранимых процедур
		/// <summary>
		/// Название хранимой процедуры показа
		/// </summary>
		new public const string    SHOW_PROCEDURE_NAME   = "SP_ShowBuses";

		/// <summary>
		/// Название хранимой процедуры добавления
		/// </summary>
		new protected const string INSERT_PROCEDURE_NAME = "SP_InsertBus";
		/// <summary>
		/// Название хранимой процедуры обновления
		/// </summary>
		new protected const string UPDATE_PROCEDURE_NAME = "SP_UpdateBus";
		/// <summary>
		/// Название хранимой процедуры удаления
		/// </summary>
		new protected const string DELETE_PROCEDURE_NAME = "SP_DeleteBus";

		/// <summary>
		/// Название хранимой процедуры показа категорий автобусов
		/// </summary>
		protected const string SHOW_BUSES_CATEGORIES_PROCEDURE_NAME          =
			"SP_ShowBusesCategories";
		/// <summary>
		/// Название хранимой процедуры показа состояний исправностей автобусов
		/// </summary>
		protected const string SHOW_BUSES_SANITIES_STATES_PROCEDURE_NAME     =
			"SP_ShowBusesSanitiesStates";
		/// <summary>
		/// Название хранимой процедуры показа состояний активностей записей
		/// </summary>
		protected const string SHOW_RECORDS_ACTIVITIES_STATES_PROCEDURE_NAME =
			"SP_ShowRecordsActivitiesStates";
		#endregion Названия хранимых процедур

		#region Названия таблиц сущностей
		/// <summary>
		/// Название таблицы автобусов
		/// </summary>
		protected readonly string _BusesDataSetTableName;
		/// <summary>
		/// Название таблицы категорий автобусов
		/// </summary>
		protected readonly string _BusesCategoriesDataSetTableName;
		/// <summary>
		/// Название таблицы состояний исправностей автобусов
		/// </summary>
		protected readonly string _BusesSanitiesStatesDataSetTableName;
		/// <summary>
		/// Название таблицы состояний активностей записей
		/// </summary>
		protected readonly string _RecordsActivitiesStatesDataSetTableName;
		#endregion Названия таблиц сущностей

		#region Адаптеры Sql-данных
		/// <summary>
		/// Адаптер Sql-данных автобусов
		/// </summary>
		protected SqlDataAdapter _BusesSqlDataAdapter;
		/// <summary>
		/// Адаптер Sql-данных категорий автобусов
		/// </summary>
		protected SqlDataAdapter _BusesCategoriesSqlDataAdapter;
		/// <summary>
		/// Адаптер Sql-данных состояний исправностей автобусов
		/// </summary>
		protected SqlDataAdapter _BusesSanitiesStatesSqlDataAdapter;
		/// <summary>
		/// Адаптер Sql-данных состояний активностей записей
		/// </summary>
		protected SqlDataAdapter _RecordsActivitiesStatesSqlDataAdapter;
		#endregion Адаптеры Sql-данных

		#region Параметры
		/// <summary>
		/// Прежний автомобильный номер
		/// </summary>
		protected Parameter _OldCarCode     = new Parameter("@ioOldCarCode");
		/// <summary>
		/// Автомобильный номер
		/// </summary>
		protected Parameter _CarCode        = new Parameter("@ioCarCode");
		/// <summary>
		/// Категория
		/// </summary>
		protected Parameter _Category       = new Parameter("@ioCategoryName");
		/// <summary>
		/// Количество пассажирских мест
		/// </summary>
		protected Parameter _SeatsQuantity  = new Parameter("@ioSeatsQuantity");
		/// <summary>
		/// Год начала эксплуатации
		/// </summary>
		protected Parameter _UsageStartYear = new Parameter("@ioUsageStartYear");
		/// <summary>
		/// Состояние исправности
		/// </summary>
		protected Parameter _SanityState    = new Parameter("@ioSanityStateName");
		/// <summary>
		/// Состояние активности
		/// </summary>
		protected Parameter _ActivityState  =
			new Parameter("@ioActivityStateName");
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
					// Адаптер Sql-данных автобусов
					this._BusesSqlDataAdapter.Fill( parDataSet,
						this._BusesDataSetTableName );
					break;

				// Добавление
				case StoredProcedureAction.INSERT :
					// Адаптер Sql-данных автобусов
					this._BusesSqlDataAdapter.Fill                  ( parDataSet,
						this._BusesDataSetTableName );
					// Адаптер Sql-данных категорий автобусов
					this._BusesCategoriesSqlDataAdapter.Fill        ( parDataSet,
						this.BusesCategoriesDataSetTableName );
					// Адаптер Sql-данных состояний исправностей автобусов
					this._BusesSanitiesStatesSqlDataAdapter.Fill    ( parDataSet,
						this.BusesSanitiesStatesDataSetTableName );
					// Адаптер Sql-данных состояний активностей записей
					this._RecordsActivitiesStatesSqlDataAdapter.Fill( parDataSet,
						this.RecordsActivitiesStatesDataSetTableName );
					return;

				// Обновление
				case StoredProcedureAction.UPDATE :
					// Адаптер Sql-данных автобусов
					this._BusesSqlDataAdapter.Fill                  ( parDataSet,
						this._BusesDataSetTableName );
					// Адаптер Sql-данных категорий автобусов
					this._BusesCategoriesSqlDataAdapter.Fill        ( parDataSet,
						this.BusesCategoriesDataSetTableName );
					// Адаптер Sql-данных состояний исправностей автобусов
					this._BusesSanitiesStatesSqlDataAdapter.Fill    ( parDataSet,
						this.BusesSanitiesStatesDataSetTableName );
					// Адаптер Sql-данных состояний активностей записей
					this._RecordsActivitiesStatesSqlDataAdapter.Fill( parDataSet,
						this.RecordsActivitiesStatesDataSetTableName );
					return;

				// Удаление
				case StoredProcedureAction.DELETE :
					// Адаптер Sql-данных автобусов
					this._BusesSqlDataAdapter.Fill( parDataSet,
						this._BusesDataSetTableName );
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
					this._CarCode.InitializeNVarChar       ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._Category.InitializeNVarChar      ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._SeatsQuantity.InitializeTinyint  ( direction, isNullable,
						string.Empty );
					this._UsageStartYear.InitializeSmallint( direction, isNullable,
						string.Empty );
					this._SanityState.InitializeNVarChar   ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._ActivityState.InitializeNVarChar ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					return;

				// Обновление
				case StoredProcedureAction.UPDATE :
					this._OldCarCode.InitializeNVarChar    ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._CarCode.InitializeNVarChar       ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._Category.InitializeNVarChar      ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._SeatsQuantity.InitializeTinyint  ( direction, isNullable,
						string.Empty );
					this._UsageStartYear.InitializeSmallint( direction, isNullable,
						string.Empty );
					this._SanityState.InitializeNVarChar   ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					this._ActivityState.InitializeNVarChar ( direction, isNullable,
						DataContainer.SERVER_ERROR_MESSAGE_MAXIMUM_LENGTH, string.Empty );
					return;

				// Удаление
				case StoredProcedureAction.DELETE :
					this._CarCode.InitializeNVarChar( direction, isNullable,
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
					this._CarCode.Clear( );
					this._Category.Clear( );
					this._SeatsQuantity.Clear( );
					this._UsageStartYear.Clear( );
					this._SanityState.Clear( );
					this._ActivityState.Clear( );
					return;

				// Обновление
				case StoredProcedureAction.UPDATE :
					this._OldCarCode.Clear( );
					this._CarCode.Clear( );
					this._Category.Clear( );
					this._SeatsQuantity.Clear( );
					this._UsageStartYear.Clear( );
					this._SanityState.Clear( );
					this._ActivityState.Clear( );
					return;

				// Удаление
				case StoredProcedureAction.DELETE :
					this._CarCode.Clear( );
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
		/// <param name="parCarCode">Автомобильный номер</param>
		/// <param name="parCategory">Категория</param>
		/// <param name="parSeatsQuantity">Количество пассажирских мест</param>
		/// <param name="parUsageStartYear">Год начала эксплуатации</param>
		/// <param name="parSanityState">Состояние исправности</param>
		/// <param name="parActivityState">Состояние активности</param>
		/// <returns>Отчёт операции с результатами SUCCESSFUL,
		/// INVALID_BUS_CAR_CODE, INVALID_BUS_CATEGORY,
		/// INVALID_BUS_SEATS_QUANTITY, INVALID_BUS_USAGE_START_YEAR,
		/// INVALID_BUS_SANITY_STATE, INVALID_ACTIVITY_STATE</returns>
		public virtual OperationReport LoadInsertStoredProcedureParameters
		(
			string parCarCode,
			string parCategory,
			string parSeatsQuantity,
			string parUsageStartYear,
			string parSanityState,
			string parActivityState
		)
		{
			// Установка автомобильного номера
			if ( this._CarCode.SetValue( parCarCode )               !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_BUS_CAR_CODE,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка катогории
			if ( this._Category.SetValue( parCategory )             !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_BUS_CATEGORY,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка количества пассажирских мест
			if ( this._SeatsQuantity.SetValue( parSeatsQuantity )   !=
					OperationResult.SUCCESSFUL )
				return new OperationReport
					( OperationResult.INVALID_BUS_SEATS_QUANTITY,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка года начала эксплуатации
			if ( this._UsageStartYear.SetValue( parUsageStartYear ) !=
					OperationResult.SUCCESSFUL )
				return new OperationReport
					( OperationResult.INVALID_BUS_USAGE_START_YEAR,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка состояния исправности
			if ( this._SanityState.SetValue( parSanityState )       !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_BUS_SANITY_STATE,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка состояния активности
			if ( this._ActivityState.SetValue( parActivityState )   !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_BUS_SANITY_STATE,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Успешное завершение операции
			return new OperationReport( );
		} // LoadInsertStoredProcedureParameters

		/// <summary>
		/// Загрузка параметров хранимой процедуры обновления
		/// </summary>
		/// <param name="parOldCarCode">Прежний автомобильный номер</param>
		/// <param name="parCarCode">Автомобильный номер</param>
		/// <param name="parCategory">Категория</param>
		/// <param name="parSeatsQuantity">Количество пассажирских мест</param>
		/// <param name="parUsageStartYear">Год начала эксплуатации</param>
		/// <param name="parSanityState">Состояние исправности</param>
		/// <param name="parActivityState">Состояние активности</param>
		/// <returns>Отчёт операции с результатами SUCCESSFUL,
		/// INVALID_OLD_BUS_CAR_CODE, INVALID_BUS_CAR_CODE,
		/// INVALID_BUS_CATEGORY, INVALID_BUS_SEATS_QUANTITY,
		/// INVALID_BUS_USAGE_START_YEAR, INVALID_BUS_SANITY_STATE,
		/// INVALID_ACTIVITY_STATE</returns>
		public virtual OperationReport LoadUpdateStoredProcedureParameters
		(
			string parOldCarCode,
			string parCarCode,
			string parCategory,
			string parSeatsQuantity,
			string parUsageStartYear,
			string parSanityState,
			string parActivityState
		)
		{
			// Установка прежнего автомобильного номера
			if ( this._OldCarCode.SetValue( parOldCarCode )         !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_OLD_BUS_CAR_CODE,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка автомобильного номера
			if ( this._CarCode.SetValue( parCarCode )               !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_BUS_CAR_CODE,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка катогории
			if ( this._Category.SetValue( parCategory )             !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_BUS_CATEGORY,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка количества пассажирских мест
			if ( this._SeatsQuantity.SetValue( parSeatsQuantity )   !=
					OperationResult.SUCCESSFUL )
				return new OperationReport
					( OperationResult.INVALID_BUS_SEATS_QUANTITY,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка года начала эксплуатации
			if ( this._UsageStartYear.SetValue( parUsageStartYear ) !=
					OperationResult.SUCCESSFUL )
				return new OperationReport
					( OperationResult.INVALID_BUS_USAGE_START_YEAR,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка состояния исправности
			if ( this._SanityState.SetValue( parSanityState )       !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_BUS_SANITY_STATE,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка состояния активности
			if ( this._ActivityState.SetValue( parActivityState )   !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_BUS_SANITY_STATE,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Успешное завершение операции
			return new OperationReport( );
		} // LoadUpdateStoredProcedureParameters

		/// <summary>
		/// Загрузка параметров хранимой процедуры удаления
		/// </summary>
		/// <param name="parCarCode">Автомобильный номер</param>
		/// <returns>Отчёт операции с результатами SUCCESSFUL,
		/// INVALID_BUS_CAR_CODE</returns>
		public virtual OperationReport LoadDeleteStoredProcedureParameters
			( string parCarCode )
		{
			// Установка автомобильного номера
			if ( this._CarCode.SetValue( parCarCode ) !=
					OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_BUS_CAR_CODE,
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
					// Автомобильный номер
					parStoredProcedure.Parameters.Add( this._CarCode.SqlParameterView );
					// Категория
					parStoredProcedure.Parameters.Add
						( this._Category.SqlParameterView );
					// Количество пассажирских мест
					parStoredProcedure.Parameters.Add
						( this._SeatsQuantity.SqlParameterView );
					// Год начала эксплуатации
					parStoredProcedure.Parameters.Add
						( this._UsageStartYear.SqlParameterView );
					// Состояние исправности
					parStoredProcedure.Parameters.Add
						( this._SanityState.SqlParameterView );
					// Состояние активности
					parStoredProcedure.Parameters.Add
						( this._ActivityState.SqlParameterView );
					break;

				// Обновление
				case StoredProcedureAction.UPDATE :
					// Прежний автомобильный номер
					parStoredProcedure.Parameters.Add
						( this._OldCarCode.SqlParameterView );
					// Автомобильный номер
					parStoredProcedure.Parameters.Add( this._CarCode.SqlParameterView );
					// Категория
					parStoredProcedure.Parameters.Add
						( this._Category.SqlParameterView );
					// Количество пассажирских мест
					parStoredProcedure.Parameters.Add
						( this._SeatsQuantity.SqlParameterView );
					// Год начала эксплуатации
					parStoredProcedure.Parameters.Add
						( this._UsageStartYear.SqlParameterView );
					// Состояние исправности
					parStoredProcedure.Parameters.Add
						( this._SanityState.SqlParameterView );
					// Состояние активности
					parStoredProcedure.Parameters.Add
						( this._ActivityState.SqlParameterView );
					break;

				// Удаление
				case StoredProcedureAction.DELETE :
					// Автомобильный номер
					parStoredProcedure.Parameters.Add( this._CarCode.SqlParameterView );
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
					// Автомобильный номер
					this._CarCode.Value     = parStoredProcedure.Parameters[ 0 ].Value;
					// Категория
					this._Category.Value    = parStoredProcedure.Parameters[ 1 ].Value;
					// Количество пассажирских мест
					this._SeatsQuantity.Value  =
						parStoredProcedure.Parameters[ 2 ].Value;
					// Год начала эксплуатации
					this._UsageStartYear.Value =
						parStoredProcedure.Parameters[ 3 ].Value;
					// Состояние исправности
					this._SanityState.Value = parStoredProcedure.Parameters[ 4 ].Value;
					// Состояние активности
					this._ActivityState.Value  =
						parStoredProcedure.Parameters[ 5 ].Value;
					break;

				// Обновление
				case StoredProcedureAction.UPDATE :
					// Прежний автомобильный номер
					this._OldCarCode.Value  = parStoredProcedure.Parameters[ 0 ].Value;
					// Автомобильный номер
					this._CarCode.Value     = parStoredProcedure.Parameters[ 1 ].Value;
					// Категория
					this._Category.Value    = parStoredProcedure.Parameters[ 2 ].Value;
					// Количество пассажирских мест
					this._SeatsQuantity.Value  =
						parStoredProcedure.Parameters[ 3 ].Value;
					// Год начала эксплуатации
					this._UsageStartYear.Value =
						parStoredProcedure.Parameters[ 4 ].Value;
					// Состояние исправности
					this._SanityState.Value = parStoredProcedure.Parameters[ 5 ].Value;
					// Состояние активности
					this._ActivityState.Value  =
						parStoredProcedure.Parameters[ 6 ].Value;
					break;

				// Удаление
				case StoredProcedureAction.DELETE :
					// Автомобильный номер
					this._CarCode.Value = parStoredProcedure.Parameters[ 0 ].Value;
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
		/// Создание автобуса по умолчанию
		/// </summary>
		public Bus( )
		{
			// Установка неизвестного текущего действия
			this._CurrentAction = StoredProcedureAction.UNKNOWN;
			// Пустые названия таблиц сущностей
			this._BusesDataSetTableName                   = string.Empty;
			this._BusesCategoriesDataSetTableName         = string.Empty;
			this._BusesSanitiesStatesDataSetTableName     = string.Empty;
			this._RecordsActivitiesStatesDataSetTableName = string.Empty;
		} // Bus

		/// <summary>
		/// Создание автобуса c заданным действием хранимой процедуры
		/// и названиями таблиц сущностей
		/// </summary>
		/// <param name="parAction">Действие</param>
		/// <param name="parDataSet">Множество данных</param>
		/// <param name="parBusesDataSetTableName">
		/// Название таблицы автобусов</param>
		/// <param name="parBusesCategoriesDataSetTableName">
		/// Название таблицы категорий автобусов</param>
		/// <param name="parBusesSanitiesStatesDataSetTableName">
		/// Название таблицы состояний исправностей автобусов</param>
		/// <param name="parRecordsActivitiesStatesDataSetTableName">
		/// Название таблицы состояний активностей записей</param>
		public Bus
		(
			StoredProcedureAction         parAction,
			ref CentralBusTerminalDataSet parDataSet,
			string                        parBusesDataSetTableName,
			string                        parBusesCategoriesDataSetTableName,
			string                        parBusesSanitiesStatesDataSetTableName,
			string                        parRecordsActivitiesStatesDataSetTableName
		)
		{
			// Установка текущего действия
			this._CurrentAction = parAction;
			// Инициализация названий таблиц сущностей
			this._BusesDataSetTableName                   =
				parBusesDataSetTableName;
			this._BusesCategoriesDataSetTableName         =
				parBusesCategoriesDataSetTableName;
			this._BusesSanitiesStatesDataSetTableName     =
				parBusesSanitiesStatesDataSetTableName;
			this._RecordsActivitiesStatesDataSetTableName =
				parRecordsActivitiesStatesDataSetTableName;

			// Инициализация адаптеров Sql-данных в зависимости
			// от текущего действия хранимой процедуры
			switch ( this._CurrentAction )
			{
				// Показ
				case StoredProcedureAction.SHOW :
					// Адаптер Sql-данных автобусов
					this._BusesSqlDataAdapter = new SqlDataAdapter
						( new SqlCommand( Bus.SHOW_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					break;

				// Добавление
				case StoredProcedureAction.INSERT :
					// Адаптер Sql-данных автобусов
					this._BusesSqlDataAdapter                   = new SqlDataAdapter
						( new SqlCommand( Bus.SHOW_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных категорий автобусов
					this._BusesCategoriesSqlDataAdapter         = new SqlDataAdapter
						( new SqlCommand( Bus.SHOW_BUSES_CATEGORIES_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных состояний исправностей автобусов
					this._BusesSanitiesStatesSqlDataAdapter     = new SqlDataAdapter
						( new SqlCommand( Bus.SHOW_BUSES_SANITIES_STATES_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных состояний активностей записей
					this._RecordsActivitiesStatesSqlDataAdapter = new SqlDataAdapter
						( new SqlCommand
						( Bus.SHOW_RECORDS_ACTIVITIES_STATES_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );

					// Адаптер Sql-данных категорий автобусов
					this._BusesCategoriesSqlDataAdapter.Fill        ( parDataSet,
						this.BusesCategoriesDataSetTableName );
					// Адаптер Sql-данных состояний исправностей автобусов
					this._BusesSanitiesStatesSqlDataAdapter.Fill    ( parDataSet,
						this.BusesSanitiesStatesDataSetTableName );
					// Адаптер Sql-данных состояний активностей записей
					this._RecordsActivitiesStatesSqlDataAdapter.Fill( parDataSet,
						this.RecordsActivitiesStatesDataSetTableName );
					break;

				// Обновление
				case StoredProcedureAction.UPDATE :
					// Адаптер Sql-данных автобусов
					this._BusesSqlDataAdapter                   = new SqlDataAdapter
						( new SqlCommand( Bus.SHOW_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных категорий автобусов
					this._BusesCategoriesSqlDataAdapter         = new SqlDataAdapter
						( new SqlCommand( Bus.SHOW_BUSES_CATEGORIES_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных состояний исправностей автобусов
					this._BusesSanitiesStatesSqlDataAdapter     = new SqlDataAdapter
						( new SqlCommand( Bus.SHOW_BUSES_SANITIES_STATES_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных состояний активностей записей
					this._RecordsActivitiesStatesSqlDataAdapter = new SqlDataAdapter
						( new SqlCommand
						( Bus.SHOW_RECORDS_ACTIVITIES_STATES_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
/*
					// Адаптер Sql-данных категорий автобусов
					this._BusesCategoriesSqlDataAdapter.Fill        ( parDataSet,
						this.BusesCategoriesDataSetTableName );
					// Адаптер Sql-данных состояний исправностей автобусов
					this._BusesSanitiesStatesSqlDataAdapter.Fill    ( parDataSet,
						this.BusesSanitiesStatesDataSetTableName );
					// Адаптер Sql-данных состояний активностей записей
					this._RecordsActivitiesStatesSqlDataAdapter.Fill( parDataSet,
						this.RecordsActivitiesStatesDataSetTableName );
*/
					break;

				// Удаление
				case StoredProcedureAction.DELETE :
					// Адаптер Sql-данных автобусов
					this._BusesSqlDataAdapter = new SqlDataAdapter
						( new SqlCommand( Bus.SHOW_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					break;

				// Прочие непредусмотренные процедуры
				default :
					break;
			} // switch

			// Инициализация
			this.Initialize( ref parDataSet );
		} // Bus
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
						return Bus.SHOW_PROCEDURE_NAME;

					// Установка
					case StoredProcedureAction.SET :
						return Bus.SET_PROCEDURE_NAME;

					// Добавление
					case StoredProcedureAction.INSERT :
						return Bus.INSERT_PROCEDURE_NAME;

					// Обновление
					case StoredProcedureAction.UPDATE :
						return Bus.UPDATE_PROCEDURE_NAME;

					// Удаление
					case StoredProcedureAction.DELETE :
						return Bus.DELETE_PROCEDURE_NAME;

					// Прочие непредусмотренные процедуры
					default :
						return string.Empty;
				} // switch
			} // get
		} // CurrentActionStoredProcedureName

		#region Названия таблиц сущностей
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
		/// Название таблицы состояний исправностей автобусов
		/// </summary>
		public virtual string BusesSanitiesStatesDataSetTableName
		{
			get
			{
				return this._BusesSanitiesStatesDataSetTableName;
			} // get
		} // BusesSanitiesStatesDataSetTableName

		/// <summary>
		/// Название таблицы состояний исправностей автобусов
		/// </summary>
		public virtual string RecordsActivitiesStatesDataSetTableName
		{
			get
			{
				return this._RecordsActivitiesStatesDataSetTableName;
			} // get
		} // RecordsActivitiesStatesDataSetTableName
		#endregion Названия таблиц сущностей

		#region Строки значений Sql-параметров
		/// <summary>
		/// Прежний автомобильный номер
		/// </summary>
		public virtual string OldCarCode
		{
			get
			{
				return this._OldCarCode.ValueString;
			} // get
		} // OldCarCode

		/// <summary>
		/// Автомобильный номер
		/// </summary>
		public virtual string CarCode
		{
			get
			{
				return this._CarCode.ValueString;
			} // get
		} // CarCode

		/// <summary>
		/// Категория
		/// </summary>
		public virtual string Category
		{
			get
			{
				return this._Category.ValueString;
			} // get
		} // Category

		/// <summary>
		/// Количество пассажирских мест
		/// </summary>
		public virtual string SeatsQuantity
		{
			get
			{
				return this._SeatsQuantity.ValueString;
			} // get
		} // SeatsQuantity

		/// <summary>
		/// Год начала эксплуатации
		/// </summary>
		public virtual string UsageStartYear
		{
			get
			{
				return this._UsageStartYear.ValueString;
			} // get
		} // UsageStartYear

		/// <summary>
		/// Состояние исправности
		/// </summary>
		public virtual string SanityState
		{
			get
			{
				return this._SanityState.ValueString;
			} // get
		} // SanityState

		/// <summary>
		/// Состояние активности
		/// </summary>
		public virtual string ActivityState
		{
			get
			{
				return this._ActivityState.ValueString;
			} // get
		} // ActivityState
		#endregion Строки значений Sql-параметров
		#endregion Свойства
	} // Bus
} // CentralBusTerminalClient