using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Text;
using System.Windows.Forms;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Форма поиска остановок маршрута
	/// </summary>
	public partial class PathStopsSearchForm : Form, IEntityForm
	{
		#region Поля
		/// <summary>
		/// Сущность найденной остновки маршрута
		/// </summary>
		protected FoundPathStop               _FoundPathStop;
		/// <summary>
		/// Сущность найденной карты маршрута
		/// </summary>
		protected FoundPathMap                _FoundPathMap;
		/// <summary>
		/// Сущность найденных координат остановки карты маршрута
		/// </summary>
		protected FoundPathMapStopCoordinates _FoundPathMapStopCoordinates;

		/// <summary>
		/// Точка начального пункта найденной карты маршрута
		/// </summary>
		protected Point _FoundPathMapInitialPoint = new Point( 0, 0 );
		#endregion Поля

		#region Методы
		#region Стандартные методы
		/// <summary>
		/// Загрузка формы поиска остановок маршрута
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnPathStopsSearchFormLoad
		(
			object    sender,
			EventArgs e
		)
		{
			// Явное открытие соединения предотвратит лишние операции по неявному
			// открытиею и закрытию его во время вызова метода SqlDataAdapter.Fill
			DataContainer.Instance( ).CurrentSqlConnection.Open( );

			// Создание найденной остановки маршрута на показ
			this._FoundPathStop = new FoundPathStop( StoredProcedureAction.SET,
				ref this.centralBusTerminalDataSet,
				this.centralBusTerminalDataSet.FoundPathStops.TableName,
				this.centralBusTerminalDataSet.Paths.TableName );

			// Создание найденной карты маршрута на показ
			this._FoundPathMap  = new FoundPathMap ( StoredProcedureAction.SET,
				ref this.centralBusTerminalDataSet,
				this.centralBusTerminalDataSet.FoundPathMaps.TableName,
				this.centralBusTerminalDataSet.Paths.TableName );

			// Создание найденных координат остановки карты маршрута
			this._FoundPathMapStopCoordinates = new FoundPathMapStopCoordinates
				( StoredProcedureAction.SET,
				ref this.centralBusTerminalDataSet,
				this.centralBusTerminalDataSet.FoundPathMapStopsCoordinates.TableName,
				this.centralBusTerminalDataSet.Paths.TableName,
				this.centralBusTerminalDataSet.Maps.TableName );
		} // OnPathStopsSearchFormLoad

		/// <summary>
		/// Завершение работы с формой поиска остановок
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnPathStopsSearchFormFormClosing
		(
			object               sender,
			FormClosingEventArgs e
		)
		{
			// Явное закрытие соединения необходимо, так как оно было явно открыто,
			// поэтому никогда не закрывалоть при вызове m_SqlDataAdapter.Fill
			DataContainer.Instance( ).CurrentSqlConnection.Close( );
		} // OnPathStopsSearchFormFormClosing
		#endregion Стандартные методы

		#region Методы обработки данных
		/// <summary>
		/// Очистка
		/// </summary>
		public virtual void Clear( )
		{
			// Очистка предупреждающих пометок ошибочных полей
			this.errorProvider.Clear( );
			// Очистка полей параметров
			this.pathComboBox.Text = string.Empty;
		} // Clear

		/// <summary>
		/// Загрузка параметров хранимой процедуры
		/// </summary>
		/// <returns>Отчёт операции с результатами: SUCCESSFUL,
		/// INVALID_STOP_NAME_SUBSTRING, INVALID_BUS_CATEGORY,
		/// INVALID_WEEKDAY</returns>
		public virtual OperationReport LoadStoredProcedureParameters( )
		{
			// Загрузка параметров хранимой процедуры показа
			return this._FoundPathStop.LoadSetStoredProcedureParameters
			( this.pathComboBox.Text );
		} // LoadInsertStoredProcedureParameters

		/// <summary>
		/// Вывод параметров хранимой процедуры
		/// </summary>
		public virtual void OutputStoredProcedureParameters( )
		{
			// Вывод значений параметров в поля
			this.pathComboBox.Text = this._FoundPathStop.Path;
		} // OutputStoredProcedureParameters

		/// <summary>
		/// Выделение неверного параметра
		/// </summary>
		/// <param name="parOperationReport">Отчёт операции</param>
		public virtual void MarkInvalidParameter
			( OperationReport parOperationReport )
		{
			// Очиста сигнализаторов об ошибке
			this.errorProvider.Clear( );

			// Выделение поля неверного параметра
			// Пометка поля параметра, на который указывает результат операции
			switch ( parOperationReport.Result )
			{
				
				// Неверный маршрут
				case OperationResult.INVALID_PATH :
					this.errorProvider.SetError( this.pathComboBox,
						parOperationReport.Message );
					return;

				// Прочие ошибки
				default:
					this.errorProvider.SetError( this.searchButton,
						parOperationReport.Message );
					return;
			} // switch
		} // MarkInvalidParameter
		#endregion Методы обработки данных

		#region Конкретные методы редактирования
		/// <summary>
		/// Выполнение хранимой процедуры
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		public virtual void OnSearchButtonClick
		(
			object    sender,
			EventArgs e
		)
		{
			this.Cursor = Cursors.WaitCursor;
			// Очистка предупреждающих пометок полей
			this.errorProvider.Clear( );
			// Отчёт об операции загрузки параметров хранимой процедуры
			OperationReport operationReport = this.LoadStoredProcedureParameters( );

			// Если предварительная операция загрузки параметров не удачна
			if ( operationReport.Result != OperationResult.SUCCESSFUL )
			{
				this.Cursor = Cursors.Default;
				// Выделение неверного параметра
				this.MarkInvalidParameter( operationReport );
				return;
			} // if

			// Выполнение хранимой процедуры с использованием
			// краткого сообщения об ошибке, но без системного сообщения об ошибке
			this._FoundPathStop.ExecuteStoredProcedure
				( ref this.centralBusTerminalDataSet, true, false );
			// Вывод параметров хранимой процедуры
			this.OutputStoredProcedureParameters( );
			this.Cursor = Cursors.Default;

			// Если операция не выполнена, то выдаётся сообщение об ошибке
			if
			(
				DataContainer.Instance( ).ErrorCodeParameter.Value != DBNull.Value &&
				( int ) DataContainer.Instance( ).ErrorCodeParameter.Value != 0
			)
			{
				new MessageForm
				(
					( string ) DataContainer.Instance( ).
						ShortErrorMessageParameter.Value,
					string.Empty
				).ShowDialog( );
				return;
			} // if

			// Иначе инициализируется событие выполнения редактирования
			// и разыскиваются карты

			// Обновление данных адаптеров Sql-данных cущностей
			this.RefreshSqlDataAdapters( );

			// Очистка картинки карты
			this.mapPictureBox.Image = null;

			// Отчёт об операции загрузки параметров хранимой процедуры
			// показа карт маршрута
			operationReport = this._FoundPathMap.LoadSetStoredProcedureParameters
				( this._FoundPathStop.Path );

			// Если предварительная операция загрузки параметров не удачна
			if ( operationReport.Result != OperationResult.SUCCESSFUL )
				return;

			// Выполнение хранимой процедуры поиска карт с использованием
			// краткого сообщения об ошибке, но без системного сообщения об ошибке
			this._FoundPathMap.ExecuteStoredProcedure
				( ref this.centralBusTerminalDataSet, true, false );

			// Если операция не выполнена, то выдаётся сообщение об ошибке
			if
			(
				DataContainer.Instance( ).ErrorCodeParameter.Value !=
					DBNull.Value &&
				( int ) DataContainer.Instance( ).ErrorCodeParameter.Value != 0
			)
			{
				new MessageForm
				(
					( string ) DataContainer.Instance( ).
						ShortErrorMessageParameter.Value,
					string.Empty
				).ShowDialog( );
				return;
			} // if

			// Иначе инициализируется событие выполнения редактирования
			// и разыскиваются координаты карты

			// Заполнение адаптера Sql-данных cущности карт маршрута
			this._FoundPathMap.FillEntitySqlDataAdapter
				( ref this.centralBusTerminalDataSet );

			// Если у маршрута нет ни одной карты, то карта не отображается
			if ( this._FoundPathMap.PathMaps.Count == 0 )
				return;

			// Индекс последней из списка карт маршрута
			int lastMapIndex = this._FoundPathMap.PathMaps.Count - 1;
			// Выбор последней из списка карт маршрута
			string map = this._FoundPathMap.PathMaps[ lastMapIndex ].Map;
			// Установка координат точки начального пункта
			// найденной последней карты маршрута
			this._FoundPathMapInitialPoint.X = Convert.ToInt32
				( this._FoundPathMap.PathMaps[ lastMapIndex ].InitialPointX );
			this._FoundPathMapInitialPoint.Y = Convert.ToInt32
				( this._FoundPathMap.PathMaps[ lastMapIndex ].InitialPointY );

			try
			{
				// Загрузка картинки карты
				this.mapPictureBox.Load( map );
			} // try

			// Недействительная операция
			catch ( Exception ex )
			{
				MessageBox.Show( DataContainer.FAILED_MAP_LOAD_ERROR_MESSAGE +
					DataContainer.COLON_STRING + ex.Message,
					DataContainer.ERROR_MESSAGE_CAPTION, MessageBoxButtons.OK,
					MessageBoxIcon.Error);
			} // catch

			// Отчёт об операции загрузки параметров хранимой процедуры
			// показа координат карт маршрута
			operationReport =
				this._FoundPathMapStopCoordinates.LoadSetStoredProcedureParameters
				( this._FoundPathStop.Path, map );

			// Если предварительная операция загрузки параметров не удачна
			if ( operationReport.Result != OperationResult.SUCCESSFUL )
				return;

			// Выполнение хранимой процедуры поиска координат с использованием
			// краткого сообщения об ошибке, но без системного сообщения об ошибке
			this._FoundPathMapStopCoordinates.ExecuteStoredProcedure
				( ref this.centralBusTerminalDataSet, true, false );

			// Если операция не выполнена, то выдаётся сообщение об ошибке
			if
			(
				DataContainer.Instance( ).ErrorCodeParameter.Value !=
					DBNull.Value &&
				( int ) DataContainer.Instance( ).ErrorCodeParameter.Value != 0
			)
			{
				new MessageForm
				(
					( string ) DataContainer.Instance( ).
						ShortErrorMessageParameter.Value,
					string.Empty
				).ShowDialog( );
				return;
			} // if

			// Иначе инициализируется событие выполнения редактирования
			// и отображаются координаты карты

			// Заполнение адаптера Sql-данных
			// cущности координат остановки карты маршрута
			this._FoundPathMapStopCoordinates.FillEntitySqlDataAdapter
				( ref this.centralBusTerminalDataSet );

			// Если есть координаты, то остановки отображаются
			if ( this._FoundPathMapStopCoordinates.PathMapStopsCoordinates.
					Count != 0 )
				this.mapPictureBox.Refresh( );
		}// OnSearchButtonClick
		#endregion Конкретные методы редактирования

		#region Методы реакций на выполнение редактирования сущностей
		/// <summary>
		/// Обновление данных адаптеров Sql-данных cущностей
		/// </summary>
		public virtual void RefreshSqlDataAdapters( )
		{
			// Очиста необходима, так как метод SqlDataAdapter.Fill
			// не удаляет строки, удалёные из базы данных без вмешательства
			// данного приложения, хотя при вызове "поверх" существующих строк,
			// обновляет их содержимое в соответствии с первичным ключом
			this.centralBusTerminalDataSet.Clear( );
			// Заполнение адаптеров Sql-данных cущности остановок маршрута
			this._FoundPathStop.FillEntitySqlDataAdapter
				( ref this.centralBusTerminalDataSet );
		} // RefreshSqlDataAdapters
		#endregion Методы реакций на выполнение редактирования сущностей

		/// <summary>
		/// Отрисовка остановок на карте
		/// </summary>
		/// <param name="sender">Источник аргументы</param>
		/// <param name="e"></param>
		private void OnMapPictureBoxPaint
		(
			object         sender,
			PaintEventArgs e
		)
		{
			// Если не следует отрисовывать остановки,
			// то ничего дополнительно не изображается
			if
			(
				( this._FoundPathMap.PathMaps.Count == 0    ) ||
				( this._FoundPathMapStopCoordinates == null ) ||
				( this._FoundPathMapStopCoordinates.
					PathMapStopsCoordinates           == null ) ||
				( this._FoundPathMapStopCoordinates.
					PathMapStopsCoordinates.Count     == 0    )
			)
				return;

			// Извлечение объекта графики для рисования
			Graphics graphics      = e.Graphics;
			// Установка высшего качества вывода объектов,
			// которые будут рисоваться "вручную"
			graphics.SmoothingMode = SmoothingMode.HighQuality;

			// Настройка пера
			// Перо
			Pen pen        = new Pen( Color.Red );
			// Cтиль окончания пунктирных линий - треугольный
			pen.DashCap    = DashCap.Triangle;
			// Расстояние от начала линии до начала штрихового шаблона
			pen.DashOffset = 0;
			// Стиль использования пунктирных линий - сплошная линий
			pen.DashStyle  = DashStyle.Solid;
			// Стиль окончания линий - треугольный
			pen.EndCap     = LineCap.Triangle;
			// Стиль начала линий
			pen.StartCap   = LineCap.Triangle;
			// Cтиль окончаний для двух последовательных линий - круговое соединине
			pen.LineJoin   = LineJoin.Round;
			// Ширина пера
			pen.Width      = 2;

			// Остановки на карте
			Point[ ] stops = new Point[ this._FoundPathMapStopCoordinates.
				PathMapStopsCoordinates.Count + 1 ];

			// Загрузка начального пункта как отправной точки
			stops[ 0 ] = this._FoundPathMapInitialPoint;

			// Загрузка координат остановок
			for ( int stopIndex = 0; stopIndex <
					this._FoundPathMapStopCoordinates.PathMapStopsCoordinates.Count;
					stopIndex++ )
				stops[ stopIndex + 1 ] = new Point
				(
					Convert.ToInt32( this._FoundPathMapStopCoordinates.
						PathMapStopsCoordinates[ stopIndex ].StopX ),
					Convert.ToInt32( this._FoundPathMapStopCoordinates.
						PathMapStopsCoordinates[ stopIndex ].StopY )
				);

			// Отрисовка пути
			graphics.DrawCurve( pen, stops );

			// Ширина пера
			pen.Width          = 5;
			// Цвет пера
			pen.Color          = Color.Tomato;
			// Радиус окружности пометки становки
			float stopRadius   = 2;
			// Диаметр окружности пометки становки
			float stopDiameter = stopRadius * 2;

			// Отрисовка остановок на пути
			for ( int stopIndex = 0; stopIndex < stops.Length; stopIndex++ )
				graphics.DrawEllipse( pen, stops[ stopIndex ].X - stopRadius,
					stops[ stopIndex ].Y - stopRadius, stopDiameter, stopDiameter );
		} // PathStopsSearchForm
		#endregion Методы

		#region Конструкторы
		/// <summary>
		/// Создание формы поиска остановок маршрута
		/// </summary>
		public PathStopsSearchForm( )
		{
			InitializeComponent( );

			// Изменение шрифта шапки таблицы
			this.foundPathStopsDataGridView.ColumnHeadersDefaultCellStyle.
				Font.Dispose( );
			this.foundPathStopsDataGridView.ColumnHeadersDefaultCellStyle.Font =
				DataContainer.Instance( ).DataGridViewColumnHeadersFont;
		} // PathStopsSearchForm
		#endregion Конструкторы
	} // PathStopsSearchForm
} // CentralBusTerminalClient