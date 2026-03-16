using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Windows.Forms;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Найденная карта маршрута
	/// </summary>
	public class FoundPathMap : Entity
	{
		#region Поля
		/// <summary>
		/// Заголовок сущности
		/// </summary>
		new public const string ENTITY_CAPTION = "Найденная карта маршрута";

		#region Названия хранимых процедур
		/// <summary>
		/// Название хранимой процедуры показа
		/// </summary>
		new public const string SHOW_PROCEDURE_NAME   = "SP_ShowFoundPathMaps";
		/// <summary>
		/// Название хранимой процедуры установки
		/// </summary>
		new protected const string SET_PROCEDURE_NAME = "SP_SetPathMapsSearch";

		/// <summary>
		/// Название хранимой процедуры показа маршрутов
		/// </summary>
		protected  const string SHOW_PATHS_PROCEDURE_NAME = "SP_ShowPaths";
		#endregion Названия хранимых процедур

		#region Названия таблиц сущностей
		/// <summary>
		/// Название таблицы найденных карт маршрута
		/// </summary>
		protected readonly string _FoundPathMapsDataSetTableName;
		/// <summary>
		/// Название таблицы маршрутов
		/// </summary>
		protected readonly string _PathsDataSetTableName;
		#endregion Названия таблиц сущностей

		#region Адаптеры Sql-данных
		/// <summary>
		/// Адаптер Sql-данных найденных карт маршрута
		/// </summary>
		protected SqlDataAdapter _FoundPathMapsSqlDataAdapter;
		/// <summary>
		/// Адаптер Sql-данных маршрутов
		/// </summary>
		protected SqlDataAdapter _PathsSqlDataAdapter;
		#endregion Адаптеры Sql-данных

		/// <summary>
		/// Маршрут
		/// </summary>
		protected Parameter _Path = new Parameter("@ioPathName");

		#region Карты маршрута
		/// <summary>
		/// Заголовок столбца карты
		/// </summary>
		protected const string MAP_COLUMN_CAPTION             = "Map";
		/// <summary>
		/// Заголовок столбца абсциссы начального пункта
		/// </summary>
		protected const string INITIAL_POINT_X_COLUMN_CAPTION = "InitialPointX";
		/// <summary>
		/// Заголовок столбца ординаты начального пункта
		/// </summary>
		protected const string INITIAL_POINT_Y_COLUMN_CAPTION = "InitialPointY";

		/// <summary>
		/// Карты маршрута
		/// </summary>
		protected List< PathMapItem > _PathMaps = new List< PathMapItem >( );
		#endregion Карты маршрута
		#endregion Поля

		#region Методы
		#region Методы инициализации и очистки
		/// <summary>
		/// Заполнение адаптера Sql-данных найденных карт маршрута
		/// </summary>
		/// <param name="parDataSet">Множество данных</param>
		/// <returns>Отчёт операции с результатами: SUCCESSFUL, VOID</returns>
		protected virtual OperationResult FillFoundPathMapsSqlDataAdapter
			( ref CentralBusTerminalDataSet parDataSet )
		{
			// Открытие соединения в случае его непреднамеренного закрытия
			if ( DataContainer.Instance( ).CurrentSqlConnection.State !=
					ConnectionState.Open )
				DataContainer.Instance( ).CurrentSqlConnection.Open( );

			using ( SqlCommand command = new SqlCommand
				( FoundPathMap.SHOW_PROCEDURE_NAME,
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

					// Очистка списка карт
					this._PathMaps.Clear( );
					// Выполенине команды
					using ( SqlDataReader reader =
						storedProcedureCommand.ExecuteReader( ) )
					{
						// Порядковый номер столбца карты
						int mapColumnOrdinal           = reader.GetOrdinal
							( FoundPathMap.MAP_COLUMN_CAPTION );
						// Порядковый номер столбца абсциссы начального пункта
						int initialPointXColumnOrdinal = reader.GetOrdinal
							( FoundPathMap.INITIAL_POINT_X_COLUMN_CAPTION );
						// Порядковый номер столбца ординаты начального пункта
						int initialPointYColumnOrdinal = reader.GetOrdinal
							( FoundPathMap.INITIAL_POINT_Y_COLUMN_CAPTION );

						// Пока не просмотрены все записи
						while( reader.Read( ) )
						{
							// Текущая карта маршрута
							PathMapItem currentPathMap = new PathMapItem
								(
									reader.GetString( mapColumnOrdinal ),
									reader.GetDouble( initialPointXColumnOrdinal ),
									reader.GetDouble( initialPointYColumnOrdinal )
								);

							// Добавление текущей карты маршрута в список
							this._PathMaps.Add( currentPathMap );
						} // while

						// Окончание чтения
						reader.Close( );
					} // using

					// Удаление прежнего адаптера Sql-данных найденных карт маршрута
					if ( this._FoundPathMapsSqlDataAdapter != null )
						this._FoundPathMapsSqlDataAdapter.Dispose( );
					// Установка нового адаптера Sql-данных найденных карт маршрута
					this._FoundPathMapsSqlDataAdapter = new SqlDataAdapter
						( storedProcedureCommand );
					// Заплнение адаптера Sql-данных найденных карт маршрута
					this._FoundPathMapsSqlDataAdapter.Fill
						( parDataSet, this._FoundPathMapsDataSetTableName );

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
		} // FillFoundPathMapsSqlDataAdapter

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
					// Заполнение адаптера Sql-данных найденных карт маршрута
					this.FillFoundPathMapsSqlDataAdapter( ref parDataSet );
					// Адаптер Sql-данных маршрутов
					this._PathsSqlDataAdapter.Fill ( parDataSet,
						this._PathsDataSetTableName );
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
			// Инициализация параметров в зависимости
			// от текущего действия хранимой процедуры
			switch ( this._CurrentAction )
			{
				// Установка
				case StoredProcedureAction.SET :
					this._Path.InitializeNVarChar( parDirection, false,
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
			// Очистка списка карт
			this._PathMaps.Clear( );

			// Очистка параметров в зависимости
			// от текущего действия хранимой процедуры
			switch ( this._CurrentAction )
			{
				// Установка
				case StoredProcedureAction.SET :
					this._Path.Clear( );
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
		/// <returns>Отчёт операции с результатами SUCCESSFUL,
		/// INVALID_PATH</returns>
		public virtual OperationReport LoadSetStoredProcedureParameters
			( string parPath )
		{
			// Установка маршрута
			if ( this._Path.SetValue( parPath ) != OperationResult.SUCCESSFUL )
				return new OperationReport( OperationResult.INVALID_PATH,
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

			// Инициализация параметров с прежними знчениями и новым направлением
			this.Initialize( parDirection );
			this.LoadSetStoredProcedureParameters( path );
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

					// Очистка списка карт
					this._Maps.Clear( );
					// Признак желательности обновления адаптеров Sql-данных
					// в случае такой возможности
					bool shouldRefreshSqlDataAdapters = false;
					// Выполенине команды
					using ( SqlDataReader reader =
						storedProcedureCommand.ExecuteReader( ) )
					{
						// Порядковый номер столбца карты
						int mapColumnOrdinal = reader.GetOrdinal
							( FoundPathMap.MAP_COLUMN_CAPTION );

						// Пока не просмотрены все записи
						while( reader.Read( ) )
							// Добавление карты в список
							this._Maps.Add( reader.GetString( mapColumnOrdinal ) );

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
		/// Создание найденой карты маршрута по умолчанию
		/// </summary>
		public FoundPathMap( )
		{
			// Установка неизвестного текущего действия
			this._CurrentAction = StoredProcedureAction.UNKNOWN;
			// Пустые названия таблиц сущностей
			this._FoundPathMapsDataSetTableName = string.Empty;
			this._PathsDataSetTableName         = string.Empty;
		} // FoundPathMap

		/// <summary>
		/// Создание найденой карты маршрута
		/// c заданным действием хранимой процедуры и названиями таблиц сущностей
		/// </summary>
		/// <param name="parAction">Действие</param>
		/// <param name="parDataSet">Множество данных</param>
		/// <param name="parFoundPathMapsDataSetTableName">
		/// Название таблицы найденных карт маршрута</param>
		/// <param name="parPathsDataSetTableName">
		/// Название таблицы маршрутов</param>
		public FoundPathMap
		(
			StoredProcedureAction         parAction,
			ref CentralBusTerminalDataSet parDataSet,
			string                        parFoundPathMapsDataSetTableName,
			string                        parPathsDataSetTableName
		)
		{
			// Установка текущего действия
			this._CurrentAction = parAction;
			// Инициализация названий таблиц сущностей
			this._FoundPathMapsDataSetTableName = parFoundPathMapsDataSetTableName;
			this._PathsDataSetTableName         = parPathsDataSetTableName;

			// Инициализация адаптеров Sql-данных в зависимости
			// от текущего действия хранимой процедуры
			switch ( this._CurrentAction )
			{
				// Установка
				case StoredProcedureAction.SET :
					// Адаптер Sql-данных маршрутов
					this._PathsSqlDataAdapter = new SqlDataAdapter
						( new SqlCommand( FoundPathMap.SHOW_PATHS_PROCEDURE_NAME,
						DataContainer.Instance( ).CurrentSqlConnection ) );
					this._PathsSqlDataAdapter.Fill( parDataSet,
						this._PathsDataSetTableName );
					break;

				// Прочие непредусмотренные процедуры
				default :
					break;
			} // switch

			// Инициализация
			this.Initialize( );
		} // FoundPathMap
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
						return FoundPathMap.SHOW_PROCEDURE_NAME;

					// Установка
					case StoredProcedureAction.SET :
						return FoundPathMap.SET_PROCEDURE_NAME;

					// Добавление
					case StoredProcedureAction.INSERT :
						return FoundPathMap.INSERT_PROCEDURE_NAME;

					// Обновление
					case StoredProcedureAction.UPDATE :
						return FoundPathMap.UPDATE_PROCEDURE_NAME;

					// Удаление
					case StoredProcedureAction.DELETE :
						return FoundPathMap.DELETE_PROCEDURE_NAME;

					// Прочие непредусмотренные процедуры
					default :
						return string.Empty;
				} // switch
			} // get
		} // CurrentActionStoredProcedureName

		#region Названия таблиц сущностей
		/// <summary>
		/// Название таблицы найденных карт маршрута
		/// </summary>
		public virtual string FoundPathMapsDataSetTableName
		{
			get
			{
				return this._FoundPathMapsDataSetTableName;
			} // get
		} // FoundPathMapsDataSetTableName

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
		#endregion Названия таблиц сущностей

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
		/// Карты маршрута
		/// </summary>
		public virtual List< PathMapItem > PathMaps
		{
			get
			{
				return this._PathMaps;
			} // get
		} // PathMaps
		#endregion Свойства
	} // FoundPathMap
} // CentralBusTerminalClient