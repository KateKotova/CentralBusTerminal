using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Windows.Forms;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Найденные координаты остановки карты маршрута
	/// </summary>
	public class FoundPathMapStopCoordinates : Entity
	{
		#region Поля
		/// <summary>
		/// Заголовок сущности
		/// </summary>
		new public const string ENTITY_CAPTION =
			"Найденные координаты остановки карты маршрута";

		#region Названия хранимых процедур
		/// <summary>
		/// Название хранимой процедуры показа
		/// </summary>
		new public const string SHOW_PROCEDURE_NAME   =
			"SP_ShowFoundPathMapStopsCoordinates";
		/// <summary>
		/// Название хранимой процедуры установки
		/// </summary>
		new protected const string SET_PROCEDURE_NAME =
			"SP_SetPathMapStopsCoordinatesSearch";

		/// <summary>
		/// Название хранимой процедуры показа маршрутов
		/// </summary>
		protected  const string SHOW_PATHS_PROCEDURE_NAME = "SP_ShowPaths";
		/// <summary>
		/// Название хранимой процедуры показа карт
		/// </summary>
		protected  const string SHOW_MAPS_PROCEDURE_NAME = "SP_ShowMaps";
		#endregion Названия хранимых процедур

		#region Названия таблиц сущностей
		/// <summary>
		/// Название таблицы найденных координат остановок карты маршрута
		/// </summary>
		protected readonly string _FoundPathMapStopsCoordinatesDataSetTableName;
		/// <summary>
		/// Название таблицы маршрутов
		/// </summary>
		protected readonly string _PathsDataSetTableName;
		/// <summary>
		/// Название таблицы карт
		/// </summary>
		protected readonly string _MapsDataSetTableName;
		#endregion Названия таблиц сущностей

		#region Адаптеры Sql-данных
		/// <summary>
		/// Адаптер Sql-данных найденных координат остановок карты маршрута
		/// </summary>
		protected SqlDataAdapter _FoundPathMapStopsCoordinatesSqlDataAdapter;
		/// <summary>
		/// Адаптер Sql-данных маршрутов
		/// </summary>
		protected SqlDataAdapter _PathsSqlDataAdapter;
		/// <summary>
		/// Адаптер Sql-данных карт
		/// </summary>
		protected SqlDataAdapter _MapsSqlDataAdapter;
		#endregion Адаптеры Sql-данных

		#region Параметры
		/// <summary>
		/// Маршрут
		/// </summary>
		protected Parameter _Path = new Parameter("@ioPathName");
		/// <summary>
		/// Карта
		/// </summary>
		protected Parameter _Map  = new Parameter("@ioMapName");
		#endregion Параметры

		#region Координаты остановок на карте маршрута
		/// <summary>
		/// Заголовок столбца номера остановки в пределах маршрута
		/// </summary>
		protected const string PATH_STOP_NUMBER_COLUMN_CAPTION = "PathStopNumber";
		/// <summary>
		/// Заголовок столбца остановки
		/// </summary>
		protected const string STOP_COLUMN_CAPTION             = "Stop";
		/// <summary>
		/// Заголовок столбца абсциссы остановки
		/// </summary>
		protected const string STOP_X_COLUMN_CAPTION           = "StopX";
		/// <summary>
		/// Заголовок столбца ординаты остановки
		/// </summary>
		protected const string STOP_Y_COLUMN_CAPTION           = "StopY";

		/// <summary>
		/// Координаты остановок на карте маршрута
		/// </summary>
		protected List< PathMapStopCoordinatesItem > _PathMapStopsCoordinates =
			new List< PathMapStopCoordinatesItem >( );
		#endregion Координаты остановок на карте маршрута
		#endregion Поля

		#region Методы
		#region Методы инициализации и очистки
		/// <summary>
		/// Заполнение адаптера Sql-данных
		/// найденных координат остановок карты маршрута
		/// </summary>
		/// <param name="parDataSet">Множество данных</param>
		/// <returns>Отчёт операции с результатами: SUCCESSFUL, VOID</returns>
		protected virtual OperationResult
			FillFoundPathMapStopsCoordinatesSqlDataAdapter
			( ref CentralBusTerminalDataSet parDataSet )
		{
			// Открытие соединения в случае его непреднамеренного закрытия
			if ( DataContainer.Instance( ).CurrentSqlConnection.State !=
					ConnectionState.Open )
				DataContainer.Instance( ).CurrentSqlConnection.Open( );

			using ( SqlCommand command = new SqlCommand
				( FoundPathMapStopCoordinates.SHOW_PROCEDURE_NAME,
				DataContainer.Instance( ).CurrentSqlConnection ) )
			{
				// Команда выполняет хранимую процедуру
				command.CommandType               = CommandType.StoredProcedure;
				// Хранимая процедура
				SqlCommand storedProcedureCommand = command;

				try
				{
					// Запись параметров
					this.AddStoredProcedureParameters( ref storedProcedureCommand );

					// Очистка списка координат остановок на карте маршрута
					this._PathMapStopsCoordinates.Clear( );
					// Выполенине команды
					using ( SqlDataReader reader =
						storedProcedureCommand.ExecuteReader( ) )
					{
						// Порядковый номер столбца номера остановки в пределах маршрута
						int pathStopNumberColumnOrdinal = reader.GetOrdinal
							( FoundPathMapStopCoordinates.PATH_STOP_NUMBER_COLUMN_CAPTION );
						// Порядковый номер столбца остановки
						int stopColumnOrdinal           = reader.GetOrdinal
							( FoundPathMapStopCoordinates.STOP_COLUMN_CAPTION );
						// Порядковый номер столбца абсциссы остановки
						int stopXColumnOrdinal          = reader.GetOrdinal
							( FoundPathMapStopCoordinates.STOP_X_COLUMN_CAPTION );
						// Порядковый номер столбца ординаты остановки
						int stopYColumnOrdinal          = reader.GetOrdinal
							( FoundPathMapStopCoordinates.STOP_Y_COLUMN_CAPTION );

						// Пока не просмотрены все записи
						while( reader.Read( ) )
						{
							// Текущие координаты остановки на карте маршрута
							PathMapStopCoordinatesItem currentPathMapStopCoordinates =
								new PathMapStopCoordinatesItem
								(
									reader.GetByte  ( pathStopNumberColumnOrdinal ),
									reader.GetString( stopColumnOrdinal ),
									reader.GetDouble( stopXColumnOrdinal ),
									reader.GetDouble( stopYColumnOrdinal )
								);

							// Добавление текущих координат остановки на карте маршрута
							// в список
							this._PathMapStopsCoordinates.Add
								( currentPathMapStopCoordinates );
						} // while

						// Окончание чтения
						reader.Close( );
					} // using

					// Удаление прежнего адаптера Sql-данных
					// найденных координат остановок карты маршрута
					if ( this._FoundPathMapStopsCoordinatesSqlDataAdapter != null )
						this._FoundPathMapStopsCoordinatesSqlDataAdapter.Dispose( );
					// Установка нового адаптера Sql-данных
					// найденных координат остановок карты маршрута
					this._FoundPathMapStopsCoordinatesSqlDataAdapter =
						new SqlDataAdapter( storedProcedureCommand );
					// Заплнение адаптера Sql-данных
					// найденных координат остановок карты маршрута
					this._FoundPathMapStopsCoordinatesSqlDataAdapter.Fill( parDataSet,
						this._FoundPathMapStopsCoordinatesDataSetTableName );

					// Очистка параметров команды необходима, ибо при повторной
					// попытке будет сигнал существования вышеуказанных параметров
					storedProcedureCommand.Parameters.Clear( );
					storedProcedureCommand.Dispose( );
				} // try

				// Недействительная операция
				catch ( Exception e )
				{
					// Очистка параметров команды необходима, ибо при повторной
					// попытке будет сигнал существования вышеуказанных параметров
					if ( storedProcedureCommand.Parameters.Count != 0 )
					{
						storedProcedureCommand.Parameters.Clear( );
						storedProcedureCommand.Dispose( );
					} // if

					MessageBox.Show( DataContainer.VOID_OPERATION_ERROR_MESSAGE +
						DataContainer.COLON_STRING + e.Message,
						DataContainer.ERROR_MESSAGE_CAPTION, MessageBoxButtons.OK,
						MessageBoxIcon.Error );
					// Неуспешное выполнение операции
					return OperationResult.VOID;
				} // catch
			} // using

			// Успешное выполнение операции
			return OperationResult.SUCCESSFUL;
		} // FillFoundPathMapStopsCoordinatesSqlDataAdapter

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
				// Установка
				case StoredProcedureAction.SET :
					// Смена направления параметров для устновки - входные параметры
					this.ChangeStoredProcedureParametersDirection
						( ParameterDirection.Input );
					// Заполнение адаптера Sql-данных
					// найденных координат остановок карты маршрута
					this.FillFoundPathMapStopsCoordinatesSqlDataAdapter
						( ref parDataSet );

					// Адаптер Sql-данных маршрутов
					this._PathsSqlDataAdapter.Fill( parDataSet,
						this._PathsDataSetTableName );
					// Адаптер Sql-данных карт
					this._MapsSqlDataAdapter.Fill( parDataSet,
						this._MapsDataSetTableName );
					break;

				// Прочие непредусмотренные процедуры
				default :
					return;
			} // switch
		} // FillSqlDataAdapters

		/// <summary>
		/// Инициализация параметров с заднным направлением
		/// </summary>
		/// <param name="parDirection">Направление</param>
		public virtual void Initialize( ParameterDirection parDirection )
		{
			// Направление параметров
			ParameterDirection direction  = parDirection;
			// Допустимость неопределённого значения параметров
			bool               isNullable = false;

			// Инициализация параметров в зависимости
			// от текущего действия хранимой процедуры
			switch ( this._CurrentAction )
			{
				// Установка
				case StoredProcedureAction.SET :
					this._Path.InitializeNVarChar( direction, isNullable,
						50, string.Empty );
					this._Map.InitializeNVarChar  ( direction, isNullable,
						50, string.Empty );
					return;

				// Прочие непредусмотренные процедуры
				default :
					return;
			} // switch
		} // Initialize

		/// <summary>
		/// Инициализация параметров ввода-вывода
		/// </summary>
		public virtual void Initialize( )
		{
			this.Initialize( ParameterDirection.InputOutput );
		} // Initialize

		/// <summary>
		/// Очистка
		/// </summary>
		public override void Clear( )
		{
			// Очистка списка координат остановок на карте маршрута
			this._PathMapStopsCoordinates.Clear( );

			// Очистка параметров в зависимости
			// от текущего действия хранимой процедуры
			switch ( this._CurrentAction )
			{
				// Установка
				case StoredProcedureAction.SET :
					this._Path.Clear( );
					this._Map.Clear( );
					return;

				// Прочие непредусмотренные процедуры
				default :
					return;
			} // switch
		} // Clear
		#endregion Методы инициализации и очистки

		#region Методы загрузки параметров хранимых процедур
		/// <summary>
		/// Загрузка параметров хранимой процедуры установки
		/// </summary>
		/// <param name="parPath">Маршрут</param>
		/// <param name="parMap">Карта</param>
		/// <returns>Отчёт операции с результатами SUCCESSFUL, INVALID_PATH,
		/// INVALID_MAP</returns>
		public virtual OperationReport LoadSetStoredProcedureParameters
		(
			string parPath,
			string parMap
		)
		{
			// Установка подстроки маршрута
			if ( this._Path.SetValue( parPath ) != OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_PATH,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Установка подстроки карты
			if ( this._Map.SetValue( parMap ) != OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_MAP,
					DataContainer.INVALID_DATA_TYPE_ERROR_MESSAGE );

			// Успешное завершение операции
			return new OperationReport( );
		} // LoadSetStoredProcedureParameters

		/// <summary>
		/// Смена направления параметров хранимой процедуры
		/// </summary>
		/// <param name="parDirection">Направление параметра</param>
		public virtual void ChangeStoredProcedureParametersDirection
			( ParameterDirection parDirection )
		{
			// Сохранние значений параметров
			string path = this._Path.ValueString;
			string map  = this._Map.ValueString;

			// Инициализация параметров с прежними знчениями и новым направлением
			this.Initialize( parDirection );
			this.LoadSetStoredProcedureParameters( path, map );
		} // ChangeStoredProcedureParametersDirection
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
				// Установка
				case StoredProcedureAction.SET :
					// Маршрут
					parStoredProcedure.Parameters.Add( this._Path.SqlParameterView );
					// Карта
					parStoredProcedure.Parameters.Add( this._Map.SqlParameterView );
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
				// Установка
				case StoredProcedureAction.SET :
					// Маршрут
					this._Path.Value = parStoredProcedure.Parameters[ 0 ].Value;
					// Карта
					this._Map.Value  = parStoredProcedure.Parameters[ 1 ].Value;
					break;

				// Прочие непредусмотренные процедуры
				default:
					break;
			} // switch
		} // OutputStoredProcedureParameters
		#endregion Методы добавления и вывода параметров хранимых процедур

		#region Методы выполнения хранимых процедур
		/// <summary>
		/// Выполнение хранимой процедуры
		/// </summary>
		/// <param name="parDataSet">Множество данных</param>
		/// <param name="parErrorsMessagesAreUsed">
		/// Признак использования сообщений об ошибках</param>
		/// <param name="parSystemErrorMessageIsUsed">
		/// Признак использования системного сообщения об ошибке</param>
		public override void ExecuteStoredProcedure
		(
			ref CentralBusTerminalDataSet parDataSet,
			bool                          parErrorsMessagesAreUsed,
			bool                          parSystemErrorMessageIsUsed
		)
		{
			// Смена направления параметров для устновки - параметры ввода-вывода
			this.ChangeStoredProcedureParametersDirection
				( ParameterDirection.InputOutput );

			// Выполнение хранимой процедуры
			base.ExecuteStoredProcedure( ref parDataSet, parErrorsMessagesAreUsed,
				parSystemErrorMessageIsUsed );
/*
			// Название хранимой процедуры
			string storedProcedureName = this.CurrentActionStoredProcedureName;

			using ( SqlCommand command = new SqlCommand( storedProcedureName,
				DataContainer.Instance( ).CurrentSqlConnection ) )
			{
				// Команда выполняет хранимую процедуру
				command.CommandType               = CommandType.StoredProcedure;
				// Хранимая процедура
				SqlCommand storedProcedureCommand = command;

				try
				{
					// Запись параметров
					this.AddStoredProcedureParameters( ref storedProcedureCommand );

					// Если используются сообщения об ошибках,
					// то они добавляются в качестве параметров
					if ( parErrorsMessagesAreUsed )
					{
						// Краткое сообщение об ошибке
						storedProcedureCommand.Parameters.Add
							( DataContainer.Instance( ).ShortErrorMessageParameter );

						// Если используется системное сообщение об ошибке,
						// то оно добавляется в качестве параметра
						if ( parSystemErrorMessageIsUsed )
							// Системное сообщение об ошибке
							storedProcedureCommand.Parameters.Add
								( DataContainer.Instance( ).SystemErrorMessageParameter );

						// Код ошибки
						storedProcedureCommand.Parameters.Add
							( DataContainer.Instance( ).ErrorCodeParameter );
					} // if

					// Очистка списка координат остановок на карте маршрута
					this._PathMapStopsCoordinates.Clear( );
					// Признак желательности обновления адаптеров Sql-данных
					// в случае такой возможности
					bool shouldRefreshSqlDataAdapters = false;
					// Выполенине команды
					using ( SqlDataReader reader =
						storedProcedureCommand.ExecuteReader( ) )
					{
						// Порядковый номер столбца номера остановки в пределах маршрута
						int pathStopNumberColumnOrdinal = reader.GetOrdinal
							( FoundPathMapStopCoordinates.PATH_STOP_NUMBER_COLUMN_CAPTION );
						// Порядковый номер столбца остановки
						int stopColumnOrdinal           = reader.GetOrdinal
							( FoundPathMapStopCoordinates.STOP_COLUMN_CAPTION );
						// Порядковый номер столбца абсциссы остановки
						int stopXColumnOrdinal          = reader.GetOrdinal
							( FoundPathMapStopCoordinates.STOP_X_COLUMN_CAPTION );
						// Порядковый номер столбца ординаты остановки
						int stopYColumnOrdinal          = reader.GetOrdinal
							( FoundPathMapStopCoordinates.STOP_Y_COLUMN_CAPTION );

						// Пока не просмотрены все записи
						while( reader.Read( ) )
						{
							// Текущие координаты остановки на карте маршрута
							PathMapStopCoordinates currentPathMapStopCoordinates =
								new PathMapStopCoordinates
								(
									reader.GetByte  ( pathStopNumberColumnOrdinal ),
									reader.GetString( stopColumnOrdinal ),
									reader.GetFloat ( stopXColumnOrdinal ),
									reader.GetFloat ( stopYColumnOrdinal )
								);

							// Добавление текущих координат остановки на карте маршрута
							// в список
							this._PathMapStopsCoordinates.Add
								( currentPathMapStopCoordinates );
						} // while

						// Вывод параметров
						OutputStoredProcedureParameters( storedProcedureCommand );
						// Необходимость обновления адаптеров Sql-данных
						// в случае заведомо безошибочной или удачной операции
						if ( ( ! parErrorsMessagesAreUsed ) ||
								( Convert.ToInt32( DataContainer.Instance( ).
								ErrorCodeParameter.Value ) == 0 ) )
							shouldRefreshSqlDataAdapters = true;

						// Окончание чтения
						reader.Close( );
					} // using

					// Очистка параметров команды необходима, ибо при повторной
					// попытке будет сигнал существования вышеуказанных параметров
					storedProcedureCommand.Parameters.Clear( );
					storedProcedureCommand.Dispose( );

					// Обновление адаптеров Sql-данных в случае необходимости
					// и возможности
					if ( shouldRefreshSqlDataAdapters )
						this.RefreshSqlDataAdapters( ref parDataSet );
				} // try

				// Недействительная операция
				catch ( Exception e )
				{
					MessageBox.Show( DataContainer.VOID_OPERATION_ERROR_MESSAGE +
						DataContainer.COLON_STRING + e.Message,
						DataContainer.ERROR_MESSAGE_CAPTION, MessageBoxButtons.OK,
						MessageBoxIcon.Error);
				} // catch
			} // using
 */
		} // ExecuteStoredProcedure
		#endregion Методы выполнения хранимых процедур
		#endregion Методы

		#region Конструкторы
		/// <summary>
		/// Создание найденных координат остановки карты маршрута по умолчанию
		/// </summary>
		public FoundPathMapStopCoordinates( )
		{
			// Установка неизвестного текущего действия
			this._CurrentAction = StoredProcedureAction.UNKNOWN;
			// Пустые названия таблиц сущностей
			this._FoundPathMapStopsCoordinatesDataSetTableName = string.Empty;
			this._PathsDataSetTableName                        = string.Empty;
			this._MapsDataSetTableName                         = string.Empty;
		} // FoundPathMapStopCoordinates

		/// <summary>
		/// Создание найденных координат остановки карты маршрута
		/// c заданным действием хранимой процедуры и названиями таблиц сущностей
		/// </summary>
		/// <param name="parAction">Действие</param>
		/// <param name="parDataSet">Множество данных</param>
		/// <param name="parFoundPathMapStopsCoordinatesDataSetTableName">
		/// Название таблицы найденных координат остановок карты маршрута</param>
		/// <param name="parPathsDataSetTableName">
		/// Название таблицы маршрутов</param>
		/// <param name="parMapsDataSetTableName">Название таблицы карт</param>
		public FoundPathMapStopCoordinates
		(
			StoredProcedureAction         parAction,
			ref CentralBusTerminalDataSet parDataSet,
			string parFoundPathMapStopsCoordinatesDataSetTableName,
			string                        parPathsDataSetTableName,
			string                        parMapsDataSetTableName
		)
		{
			// Установка текущего действия
			this._CurrentAction = parAction;
			// Инициализация названий таблиц сущностей
			this._FoundPathMapStopsCoordinatesDataSetTableName =
				parFoundPathMapStopsCoordinatesDataSetTableName;
			this._PathsDataSetTableName = parPathsDataSetTableName;
			this._MapsDataSetTableName  = parMapsDataSetTableName;

			// Инициализация адаптеров Sql-данных в зависимости
			// от текущего действия хранимой процедуры
			switch ( this._CurrentAction )
			{
				// Установка
				case StoredProcedureAction.SET :
					// Адаптер Sql-данных маршрутов
					this._PathsSqlDataAdapter = new SqlDataAdapter( new SqlCommand
						( FoundPathMapStopCoordinates.SHOW_PATHS_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					// Адаптер Sql-данных карт
					this._MapsSqlDataAdapter  = new SqlDataAdapter( new SqlCommand
						( FoundPathMapStopCoordinates.SHOW_MAPS_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );

					// Адаптер Sql-данных маршрутов
					this._PathsSqlDataAdapter.Fill( parDataSet,
						this._PathsDataSetTableName );
					// Адаптер Sql-данных карт
					this._MapsSqlDataAdapter.Fill( parDataSet,
						this._MapsDataSetTableName );
					break;

				// Прочие непредусмотренные процедуры
				default :
					break;
			} // switch

			// Инициализация
			this.Initialize( );
		} // FoundPathMapStopCoordinates
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
						return FoundPathMapStopCoordinates.SHOW_PROCEDURE_NAME;

					// Установка
					case StoredProcedureAction.SET :
						return FoundPathMapStopCoordinates.SET_PROCEDURE_NAME;

					// Добавление
					case StoredProcedureAction.INSERT :
						return FoundPathMapStopCoordinates.INSERT_PROCEDURE_NAME;

					// Обновление
					case StoredProcedureAction.UPDATE :
						return FoundPathMapStopCoordinates.UPDATE_PROCEDURE_NAME;

					// Удаление
					case StoredProcedureAction.DELETE :
						return FoundPathMapStopCoordinates.DELETE_PROCEDURE_NAME;

					// Прочие непредусмотренные процедуры
					default :
						return string.Empty;
				} // switch
			} // get
		} // CurrentActionStoredProcedureName

		#region Названия таблиц сущностей
		/// <summary>
		/// Название таблицы найденных координат остановок карты маршрута
		/// </summary>
		public virtual string FoundPathMapStopsCoordinatesDataSetTableName
		{
			get
			{
				return this._FoundPathMapStopsCoordinatesDataSetTableName;
			} // get
		} // FoundPathMapStopsCoordinatesDataSetTableName

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
		/// Название таблицы карт
		/// </summary>
		public virtual string MapsDataSetTableName
		{
			get
			{
				return this._MapsDataSetTableName;
			} // get
		} // MapsDataSetTableName
		#endregion Названия таблиц сущностей

		#region Строки значений Sql-параметров
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
		/// Карта
		/// </summary>
		public virtual string Map
		{
			get
			{
				return this._Map.ValueString;
			} // get
		} // Map
		#endregion Строки значений Sql-параметров

		/// <summary>
		/// Координаты остановок на карте маршрута
		/// </summary>
		public virtual List< PathMapStopCoordinatesItem > PathMapStopsCoordinates
		{
			get
			{
				return this._PathMapStopsCoordinates;
			} // get
		} // PathMapStopsCoordinates
		#endregion Свойства
	} // FoundPathMapStopCoordinates
} // CentralBusTerminalClient