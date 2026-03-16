using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Форма редактирования автобуса
	/// </summary>
	public partial class EditBusForm : EditEntityForm, IEditEntityForm
	{
		#region Поля
		/// <summary>
		/// Сущность редактируемого автобуса
		/// </summary>
		protected Bus _Bus;
		/// <summary>
		/// Делегат события выполнения редактирования автобуса
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Параметры</param>
		public delegate void EditBusEventHandler
		(
			object           sender,
			EditBusEventArgs e
		);
		/// <summary>
		/// Событие выполнения редактирования автобуса
		/// </summary>
		public event EditBusEventHandler BusEditingIsExecuted;

		/// <summary>
		/// Индекс начальной из сжимаемых по порядку строк
		/// таблицы-контейнера формы
		/// </summary>
		protected const int START_COMPRESSED_ROW_INDEX  = 3;
		/// <summary>
		/// Индекс последней из сжимаемых по порядку строк
		/// таблицы-контейнера формы
		/// </summary>
		protected const int FINISH_COMPRESSED_ROW_INDEX = 14;
		#endregion Поля

		#region Методы
		/// <summary>
		/// Инициализация формы редактирования автобуса
		/// </summary>
		/// <param name="parEditingAction">Действие редактирования</param>
		public override void Initialize( StoredProcedureAction parEditingAction )
		{
			// Инициализация формы редактирования сущности
			base.Initialize( parEditingAction );

			// Создание редактируемого автобуса c заданными действием
			// хранимой процедуры и названиями таблиц сущностей
			this._Bus = new Bus( this._EditingAction,
				ref this.centralBusTerminalDataSet,
				this.centralBusTerminalDataSet.Buses.TableName,
				this.centralBusTerminalDataSet.BusesCategories.TableName,
				this.centralBusTerminalDataSet.BusesSanitiesStates.TableName,
				this.centralBusTerminalDataSet.RecordsActivitiesStates.TableName );

			// Заголовок формы - заголовок сущности
			this.Text               = Bus.ENTITY_CAPTION;
			// Надпись на кнопке выполнения
			this.executeButton.Text = this._Bus.CurrentActionCaption;

			// Сжатие областей параметров, нездействованных
			// в заданном виде операции, сокрытие их компонентов
			// и изменение размеров формы
			switch ( this._EditingAction )
			{
				// Добавление
				case StoredProcedureAction.INSERT :
					// Сокрытие элементов незадействованных параметов
					this.oldCarCodeLabel.Visible    = false;
					this.oldCarCodeComboBox.Visible = false;
					// Уменьшение высоты формы
					this.Height -= Convert.ToInt32
						( this.formTableLayoutPanel.RowStyles[ 1 ].Height +
							this.formTableLayoutPanel.RowStyles[ 2 ].Height );
					// Сжатие области элементов незадействованных параметов
					this.formTableLayoutPanel.RowStyles[ 1 ].Height = 0;
					this.formTableLayoutPanel.RowStyles[ 2 ].Height = 0;
					break;

				// Обновление
				case StoredProcedureAction.UPDATE :
					break;

				// Удаление
				case StoredProcedureAction.DELETE :
					// Сокрытие элементов незадействованных параметов
					this.carCodeLabel.Visible          = false;
					this.carCodeTextBox.Visible        = false;
					this.categoryLabel.Visible         = false;
					this.categoryComboBox.Visible      = false;
					this.seatsQuantityLabel.Visible    = false;
					this.seatsQuantityTextBox.Visible  = false;
					this.usageStartYearLabel.Visible   = false;
					this.usageStartYearTextBox.Visible = false;
					this.sanityStateLabel.Visible      = false;
					this.sanityStateComboBox.Visible   = false;
					this.activityStateLabel.Visible    = false;
					this.activityStateComboBox.Visible = false;

					// Изменение высоты формы
					float formHeightChange = 0;
					// Получение изменения высоты формы и постепенное сжатие
					// областей незадействованных элементов
					for ( int compressedRowIndex =
						EditBusForm.START_COMPRESSED_ROW_INDEX;  compressedRowIndex <=
						EditBusForm.FINISH_COMPRESSED_ROW_INDEX; compressedRowIndex++ )
					{
						formHeightChange += this.formTableLayoutPanel.
							RowStyles[ compressedRowIndex ].Height;
						this.formTableLayoutPanel.
							RowStyles[ compressedRowIndex ].Height = 0;
					} // for
					// Уменьшение высоты формы
					this.Height -= Convert.ToInt32( formHeightChange );
					break;

				// Прочие непредусмотренные процедуры
				default :
					break;
			} // switch

			// Запоминание минимальных размеров формы
			Size minimumSize = new Size( this.Width,this.Height );
			this.MinimumSize = minimumSize;
		} // Initialize

		#region Стандартные методы
		/// <summary>
		/// Загрузка формы редактирования автобуса
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected override void OnEditEntityFormLoad
		(
			object    sender,
			EventArgs e
		)
		{
			// Явное открытие соединения предотвратит лишние операции по неявному
			// открытию и закрытию его во время вызова метода SqlDataAdapter.Fill
			if ( DataContainer.Instance( ).CurrentSqlConnection.State !=
					ConnectionState.Open )
				DataContainer.Instance( ).CurrentSqlConnection.Open( );
		} // OnEditEntityFormLoad
		#endregion Стандартные методы

		#region Методы обработки данных
		/// <summary>
		/// Очистка
		/// </summary>
		public override void Clear( )
		{
			// Очистка формы редактирования сущности
			base.Clear( );

			// Очистка полей параметров в зависимости
			// от текущего действия редактирования
			switch ( this._EditingAction )
			{
				// Добавление
				case StoredProcedureAction.INSERT :
					this.carCodeTextBox.Clear( );
					this.categoryComboBox.Text      = string.Empty;
					this.seatsQuantityTextBox.Clear( );
					this.usageStartYearTextBox.Clear( );
					this.sanityStateComboBox.Text   = string.Empty;
					this.activityStateComboBox.Text = string.Empty;
					return;

				// Обновление
				case StoredProcedureAction.UPDATE :
					this.oldCarCodeComboBox.Text    = string.Empty;
					this.carCodeTextBox.Clear( );
					this.categoryComboBox.Text      = string.Empty;
					this.seatsQuantityTextBox.Clear( );
					this.usageStartYearTextBox.Clear( );
					this.sanityStateComboBox.Text   = string.Empty;
					this.activityStateComboBox.Text = string.Empty;
					return;

				// Удаление
				case StoredProcedureAction.DELETE :
					this.oldCarCodeComboBox.Text = string.Empty;
					return;

				// Прочие непредусмотренные процедуры
				default :
					return;
			} // switch
		} // Clear

		/// <summary>
		/// Загрузка параметров хранимой процедуры
		/// </summary>
		/// <returns>Отчёт операции с результатами:
		/// добавление: SUCCESSFUL, INVALID_BUS_CAR_CODE, INVALID_BUS_CATEGORY,
		/// INVALID_BUS_SEATS_QUANTITY, INVALID_BUS_USAGE_START_YEAR,
		/// INVALID_BUS_SANITY_STATE, INVALID_ACTIVITY_STATE;
		/// обновление: SUCCESSFUL, INVALID_OLD_BUS_CAR_CODE,
		/// INVALID_BUS_CAR_CODE, INVALID_BUS_CATEGORY,
		/// INVALID_BUS_SEATS_QUANTITY, INVALID_BUS_USAGE_START_YEAR,
		/// INVALID_BUS_SANITY_STATE, INVALID_ACTIVITY_STATE;
		/// удаление: SUCCESSFUL, INVALID_BUS_CAR_CODE;
		/// VOID</returns>
		public override OperationReport LoadStoredProcedureParameters( )
		{
			// Загрузка параметров хранимой процедуры в зависимости от её типа
			switch ( this._EditingAction )
			{
				// Добавление
				case StoredProcedureAction.INSERT :
					return this._Bus.LoadInsertStoredProcedureParameters
					(
						this.carCodeTextBox.Text,
						this.categoryComboBox.Text,
						this.seatsQuantityTextBox.Text,
						this.usageStartYearTextBox.Text,
						this.sanityStateComboBox.Text,
						this.activityStateComboBox.Text
					);

				// Обновление
				case StoredProcedureAction.UPDATE :
					return this._Bus.LoadUpdateStoredProcedureParameters
					(
						this.oldCarCodeComboBox.Text,
						this.carCodeTextBox.Text,
						this.categoryComboBox.Text,
						this.seatsQuantityTextBox.Text,
						this.usageStartYearTextBox.Text,
						this.sanityStateComboBox.Text,
						this.activityStateComboBox.Text
					);

				// Удаление
				case StoredProcedureAction.DELETE :
					return this._Bus.LoadDeleteStoredProcedureParameters
						( this.oldCarCodeComboBox.Text );

				// Прочие непредусмотренные процедуры
				default:
					return new OperationReport( OperationResult.VOID,
						DataContainer.VOID_OPERATION_ERROR_MESSAGE );
			} // switch
		} // LoadInsertStoredProcedureParameters

		/// <summary>
		/// Вывод параметров хранимой процедуры
		/// </summary>
		public override void OutputStoredProcedureParameters( )
		{
			// Вывод значений параметров в поля в зависимости
			// от текущего действия хранимой процедуры сущности
			switch ( this._EditingAction )
			{
				// Добавление
				case StoredProcedureAction.INSERT :
					this.carCodeTextBox.Text        = this._Bus.CarCode;
					this.categoryComboBox.Text      = this._Bus.Category;
					this.seatsQuantityTextBox.Text  = this._Bus.SeatsQuantity;
					this.usageStartYearTextBox.Text = this._Bus.UsageStartYear;
					this.sanityStateComboBox.Text   = this._Bus.SanityState;
					this.activityStateComboBox.Text = this._Bus.ActivityState;
					return;

				// Обновление
				case StoredProcedureAction.UPDATE :
					this.oldCarCodeComboBox.Text    = this._Bus.OldCarCode;
					this.carCodeTextBox.Text        = this._Bus.CarCode;
					this.categoryComboBox.Text      = this._Bus.Category;
					this.seatsQuantityTextBox.Text  = this._Bus.SeatsQuantity;
					this.usageStartYearTextBox.Text = this._Bus.UsageStartYear;
					this.sanityStateComboBox.Text   = this._Bus.SanityState;
					this.activityStateComboBox.Text = this._Bus.ActivityState;
					return;

				// Удаление
				case StoredProcedureAction.DELETE :
					this.oldCarCodeComboBox.Text = this._Bus.OldCarCode;
					return;

				// Прочие непредусмотренные процедуры
				default :
					return;
			} // switch
		} // OutputStoredProcedureParameters

		/// <summary>
		/// Выделение неверного параметра
		/// </summary>
		/// <param name="parOperationReport">Отчёт операции</param>
		public override void MarkInvalidParameter
			( OperationReport parOperationReport )
		{
			// Выделение неверного параметра сущности
			base.MarkInvalidParameter( parOperationReport );

			// Выделение поля неверного параметра в зависимости
			// от текущего действия хранимой процедуры сущности
			switch ( this._EditingAction )
			{
				// Добавление
				case StoredProcedureAction.INSERT :
					// Пометка поля параметра, на который указывает результат операции
					switch ( parOperationReport.Result )
					{
						// Неверный автомобильный номер
						case OperationResult.INVALID_BUS_CAR_CODE :
							this.errorProvider.SetError( this.carCodeTextBox,
								parOperationReport.Message );
							return;

						// Неверая катогория
						case OperationResult.INVALID_BUS_CATEGORY :
							this.errorProvider.SetError( this.categoryComboBox,
								parOperationReport.Message );
							return;

						// Неверное количество пассажирских мест
						case OperationResult.INVALID_BUS_SEATS_QUANTITY :
							this.errorProvider.SetError( this.seatsQuantityTextBox,
								parOperationReport.Message );
							return;

						// неверный год начала эксплуатации
						case OperationResult.INVALID_BUS_USAGE_START_YEAR :
							this.errorProvider.SetError( this.usageStartYearTextBox,
								parOperationReport.Message );
							return;

						// Неверное состояние исправности
						case OperationResult.INVALID_BUS_SANITY_STATE :
							this.errorProvider.SetError( this.sanityStateComboBox,
								parOperationReport.Message );
							return;

						// Неверное состояние активности
						case OperationResult.INVALID_ACTIVITY_STATE :
							this.errorProvider.SetError( this.activityStateComboBox,
								parOperationReport.Message );
							return;

						// Прочие ошибки
						default:
							this.errorProvider.SetError( this.executeButton,
								parOperationReport.Message );
							return;
					} // switch

				// Обновление
				case StoredProcedureAction.UPDATE :
					// Пометка поля параметра, на который указывает результат операции
					switch ( parOperationReport.Result )
					{
						// Неверный прежний автомобильный номер
						case OperationResult.INVALID_OLD_BUS_CAR_CODE :
							this.errorProvider.SetError( this.oldCarCodeComboBox,
								parOperationReport.Message );
							return;

						// Неверный автомобильный номер
						case OperationResult.INVALID_BUS_CAR_CODE :
							this.errorProvider.SetError( this.carCodeTextBox,
								parOperationReport.Message );
							return;

						// Неверая катогория
						case OperationResult.INVALID_BUS_CATEGORY :
							this.errorProvider.SetError( this.categoryComboBox,
								parOperationReport.Message );
							return;

						// Неверное количество пассажирских мест
						case OperationResult.INVALID_BUS_SEATS_QUANTITY :
							this.errorProvider.SetError( this.seatsQuantityTextBox,
								parOperationReport.Message );
							return;

						// неверный год начала эксплуатации
						case OperationResult.INVALID_BUS_USAGE_START_YEAR :
							this.errorProvider.SetError( this.usageStartYearTextBox,
								parOperationReport.Message );
							return;

						// Неверное состояние исправности
						case OperationResult.INVALID_BUS_SANITY_STATE :
							this.errorProvider.SetError( this.sanityStateComboBox,
								parOperationReport.Message );
							return;

						// Неверное состояние активности
						case OperationResult.INVALID_ACTIVITY_STATE :
							this.errorProvider.SetError( this.activityStateComboBox,
								parOperationReport.Message );
							return;

						// Прочие ошибки
						default:
							this.errorProvider.SetError( this.executeButton,
								parOperationReport.Message );
							return;
					} // switch

				// Удаление
				case StoredProcedureAction.DELETE :
					// Пометка поля параметра, на который указывает результат операции
					switch ( parOperationReport.Result )
					{
						// Неверный автомобильный номер
						case OperationResult.INVALID_BUS_CAR_CODE :
							this.errorProvider.SetError( this.oldCarCodeComboBox,
								parOperationReport.Message );
							return;

						// Прочие ошибки
						default:
							this.errorProvider.SetError( this.executeButton,
								parOperationReport.Message );
							return;
					} // switch

				// Прочие непредусмотренные процедуры
				default :
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
		public override void OnExecuteButtonClick
		(
			object    sender,
			EventArgs e
		)
		{
			this.Cursor = Cursors.WaitCursor;
			// Очистка предупреждающих пометок полей
			this.errorProvider.Clear( );
			// Отчёт об операции загрузки параметров хранимой процедуры
			// в зависимости от её типа
			OperationReport operationReport = this.LoadStoredProcedureParameters( );

			// Если предварительная операция загрузки параметров не удачна
			if ( operationReport.Result != OperationResult.SUCCESSFUL )
			{
				this.Cursor = Cursors.Default;
				// Выделение неверного параметра
				this.MarkInvalidParameter( operationReport );
				return;
			} // if

			// Выполнение хранимой процедуры с использованием сообщений об ошибках
			this._Bus.ExecuteStoredProcedure( ref this.centralBusTerminalDataSet,
				true, true );
			// Вывод параметров хранимой процедуры
			this.OutputStoredProcedureParameters( );
			this.Cursor = Cursors.Default;

			// Если операция не выполнена, то выдаётся сообщение об ошибке
			if
			(
				DataContainer.Instance( ).ErrorCodeParameter.Value != DBNull.Value &&
				( int ) DataContainer.Instance( ).ErrorCodeParameter.Value != 0
			)
				new MessageForm
				(
					( string ) DataContainer.Instance( ).
						ShortErrorMessageParameter.Value,
					( string ) DataContainer.Instance( ).
						SystemErrorMessageParameter.Value
				).ShowDialog( );
			// Иначе инициализируется событие выполнения редактирования
			else
				if ( this.BusEditingIsExecuted != null )
				{
					// Аргументы события выполнения редактирования автобуса
					EditBusEventArgs editBusEventArgs = new EditBusEventArgs
						( this._EditingAction, this._Bus.CarCode );
					// Генерирование собятия выполнения редактирования автобуса
					this.BusEditingIsExecuted( this, editBusEventArgs );
				} // if
			return;
		}// OnExecuteButtonClick
		#endregion Конкретные методы редактирования
		#endregion Методы

		#region Конструкторы
		/// <summary>
		/// Создание формы редактирования автобуса
		/// с действием редактирования по умолчанию без инизиализации параметров
		/// </summary>
		public EditBusForm( )
		{
			InitializeComponent( );
		} // EditBusForm

		/// <summary>
		/// Создание формы редактирования автобуса
		/// в заданном режиме редактирования без инизиализации параметров
		/// </summary>
		/// <param name="parEditingAction">Действие редактирования</param>
		public EditBusForm( StoredProcedureAction parEditingAction )
		{
			InitializeComponent( );
			// Инициализация формы редактирования автобуса
			this.Initialize( parEditingAction );
		} // EditBusForm

		/// <summary>
		/// Создание формы редактирования автобуса
		/// в режиме добавления с инизиализацией параметров
		/// </summary>
		/// <param name="parCarCode">Автомобильный номер</param>
		/// <param name="parCategory">Категория</param>
		/// <param name="parSeatsQuantity">Количество пассажирских мест</param>
		/// <param name="parUsageStartYear">Год начала эксплуатации</param>
		/// <param name="parSanityState">Состояние исправности</param>
		/// <param name="parActivityState">Состояние активности</param>
		public EditBusForm
		(
			string parCarCode,
			string parCategory,
			string parSeatsQuantity,
			string parUsageStartYear,
			string parSanityState,
			string parActivityState
		)
		{
			InitializeComponent( );
			// Инициализация формы редактирования автобуса
			this.Initialize( StoredProcedureAction.INSERT );
			// Инициализация параметров
			this.carCodeTextBox.Text        = parCarCode;
			this.categoryComboBox.Text      = parCategory;
			this.seatsQuantityTextBox.Text  = parSeatsQuantity;
			this.usageStartYearTextBox.Text = parUsageStartYear;
			this.sanityStateComboBox.Text   = parSanityState;
			this.activityStateComboBox.Text = parActivityState;
		} // EditBusForm

		/// <summary>
		/// Создание формы редактирования автобуса
		/// в режиме обновления с инизиализацией параметров
		/// </summary>
		/// <param name="parOldCarCode">Прежний автомобильный номер</param>
		/// <param name="parCarCode">Автомобильный номер</param>
		/// <param name="parCategory">Категория</param>
		/// <param name="parSeatsQuantity">Количество пассажирских мест</param>
		/// <param name="parUsageStartYear">Год начала эксплуатации</param>
		/// <param name="parSanityState">Состояние исправности</param>
		/// <param name="parActivityState">Состояние активности</param>
		public EditBusForm
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
			InitializeComponent( );
			// Инициализация формы редактирования автобуса
			this.Initialize( StoredProcedureAction.UPDATE );
			// Инициализация параметров
			this.oldCarCodeComboBox.Text    = parOldCarCode;
			this.carCodeTextBox.Text        = parCarCode;
			this.categoryComboBox.Text      = parCategory;
			this.seatsQuantityTextBox.Text  = parSeatsQuantity;
			this.usageStartYearTextBox.Text = parUsageStartYear;
			this.sanityStateComboBox.Text   = parSanityState;
			this.activityStateComboBox.Text = parActivityState;
		} // EditBusForm

		/// <summary>
		/// Создание формы редактирования автобуса
		/// в режиме удаления с инизиализацией параметров
		/// </summary>
		/// <param name="parCarCode">Автомобильный номер</param>
		public EditBusForm( string parCarCode )
		{
			InitializeComponent( );
			// Инициализация формы редактирования автобуса
			this.Initialize( StoredProcedureAction.DELETE );
			// Инициализация параметров
			this.oldCarCodeComboBox.Text = parCarCode;
		} // EditBusForm
		#endregion Конструкторы
	} // EditBusForm
} // CentralBusTerminalClient
