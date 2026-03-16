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
	/// Форма редактирования выполнения рейса
	/// </summary>
	public partial class EditRunExecutionForm : EditEntityForm, IEditEntityForm
	{
		#region Поля
		/// <summary>
		/// Сущность редактируемого выполнения рейса
		/// </summary>
		protected RunExecution _RunExecution;
		/// <summary>
		/// Делегат события выполнения редактирования выполнения рейса
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Параметры</param>
		public delegate void EditRunExecutionEventHandler
		(
			object                    sender,
			EditRunExecutionEventArgs e
		);
		/// <summary>
		/// Событие выполнения редактирования выполнения рейса
		/// </summary>
		public event EditRunExecutionEventHandler RunExecutionEditingIsExecuted;
		#endregion Поля

		#region Методы
		/// <summary>
		/// Инициализация формы редактирования выполнения рейса
		/// </summary>
		/// <param name="parEditingAction">Действие редактирования</param>
		public override void Initialize( StoredProcedureAction parEditingAction )
		{
			// Инициализация формы редактирования сущности
			base.Initialize( parEditingAction );

			// Создание редактируемого выполнения рейса c заданными действием
			// хранимой процедуры и названиями таблиц сущностей
			this._RunExecution = new RunExecution( this._EditingAction,
				ref this.centralBusTerminalDataSet,
				this.centralBusTerminalDataSet.RunsExecutions.TableName,
				this.centralBusTerminalDataSet.Paths.TableName,
				this.centralBusTerminalDataSet.BusesCategories.TableName,
				this.centralBusTerminalDataSet.Weekdays.TableName,
				this.centralBusTerminalDataSet.Buses.TableName,
				this.centralBusTerminalDataSet.Drivers.TableName );

			// Заголовок формы - заголовок сущности
			this.Text               = RunExecution.ENTITY_CAPTION;
			// Надпись на кнопке выполнения
			this.executeButton.Text = this._RunExecution.CurrentActionCaption;

			// Сжатие областей параметров, нездействованных
			// в заданном виде операции, сокрытие их компонентов
			// и изменение размеров формы
			switch ( this._EditingAction )
			{
				// Добавление
				case StoredProcedureAction.INSERT :
					// Сокрытие элементов незадействованных параметов
					this.oldDateLabel.Visible                  = false;
					this.oldDateDateTimePicker.Visible         = false;
					this.oldPathLabel.Visible                  = false;
					this.oldPathComboBox.Visible               = false;
					this.oldBusCategoryLabel.Visible           = false;
					this.oldBusCategoryComboBox.Visible        = false;
					this.oldWeekdayLabel.Visible               = false;
					this.oldWeekdayComboBox.Visible            = false;
					this.oldTimeLabel.Visible                  = false;
					this.oldTimeDateTimePicker.Visible         = false;
					this.oldBusCarCodeLabel.Visible            = false;
					this.oldBusCarCodeComboBox.Visible         = false;
					this.oldDriverPassportDataLabel.Visible    = false;
					this.oldDriverPassportDataComboBox.Visible = false;
					// Уменьшение ширины формы
					this.Width -= Convert.ToInt32
						( this.formTableLayoutPanel.ColumnStyles[ 0 ].Width +
							this.formTableLayoutPanel.ColumnStyles[ 1 ].Width /
								100 * this.Width                                +
							this.formTableLayoutPanel.ColumnStyles[ 2 ].Width );
					// Сжатие области элементов незадействованных параметов
					this.formTableLayoutPanel.ColumnStyles[ 0 ].Width = 0;
					this.formTableLayoutPanel.ColumnStyles[ 1 ].Width = 0;
					this.formTableLayoutPanel.ColumnStyles[ 2 ].Width = 0;
					break;

				// Обновление
				case StoredProcedureAction.UPDATE :
					break;

				// Удаление
				case StoredProcedureAction.DELETE :
					// Сокрытие элементов незадействованных параметов
					this.dateLabel.Visible                  = false;
					this.dateDateTimePicker.Visible         = false;
					this.pathLabel.Visible                  = false;
					this.pathComboBox.Visible               = false;
					this.busCategoryLabel.Visible           = false;
					this.busCategoryComboBox.Visible        = false;
					this.weekdayLabel.Visible               = false;
					this.weekdayComboBox.Visible            = false;
					this.timeLabel.Visible                  = false;
					this.timeDateTimePicker.Visible         = false;
					this.busCarCodeLabel.Visible            = false;
					this.busCarCodeComboBox.Visible         = false;
					this.driverPassportDataLabel.Visible    = false;
					this.driverPassportDataComboBox.Visible = false;
					// Уменьшение ширины формы
					this.Width -= Convert.ToInt32
						( this.formTableLayoutPanel.ColumnStyles[ 3 ].Width +
							this.formTableLayoutPanel.ColumnStyles[ 4 ].Width /
								100 * this.Width                                +
							this.formTableLayoutPanel.ColumnStyles[ 5 ].Width );
					// Сжатие области элементов незадействованных параметов
					this.formTableLayoutPanel.ColumnStyles[ 3 ].Width = 0;
					this.formTableLayoutPanel.ColumnStyles[ 4 ].Width = 0;
					this.formTableLayoutPanel.ColumnStyles[ 5 ].Width = 0;
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
		/// Загрузка формы редактирования выполнения рейса
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
					this.dateDateTimePicker.Text         = string.Empty;
					this.pathComboBox.Text               = string.Empty;
					this.busCategoryComboBox.Text        = string.Empty;
					this.weekdayComboBox.Text            = string.Empty;
					this.timeDateTimePicker.Text         = string.Empty;
					this.busCarCodeComboBox.Text         = string.Empty;
					this.driverPassportDataComboBox.Text = string.Empty;
					return;

				// Обновление
				case StoredProcedureAction.UPDATE :
					this.oldDateDateTimePicker.Text         = string.Empty;
					this.oldPathComboBox.Text               = string.Empty;
					this.oldBusCategoryComboBox.Text        = string.Empty;
					this.oldWeekdayComboBox.Text            = string.Empty;
					this.oldTimeDateTimePicker.Text         = string.Empty;
					this.oldBusCarCodeComboBox.Text         = string.Empty;
					this.oldDriverPassportDataComboBox.Text = string.Empty;
					this.dateDateTimePicker.Text            = string.Empty;
					this.pathComboBox.Text                  = string.Empty;
					this.busCategoryComboBox.Text           = string.Empty;
					this.weekdayComboBox.Text               = string.Empty;
					this.timeDateTimePicker.Text            = string.Empty;
					this.busCarCodeComboBox.Text            = string.Empty;
					this.driverPassportDataComboBox.Text    = string.Empty;
					return;

				// Удаление
				case StoredProcedureAction.DELETE :
					this.oldDateDateTimePicker.Text         = string.Empty;
					this.oldPathComboBox.Text               = string.Empty;
					this.oldBusCategoryComboBox.Text        = string.Empty;
					this.oldWeekdayComboBox.Text            = string.Empty;
					this.oldTimeDateTimePicker.Text         = string.Empty;
					this.oldBusCarCodeComboBox.Text         = string.Empty;
					this.oldDriverPassportDataComboBox.Text = string.Empty;
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
		/// добавление: SUCCESSFUL, INVALID_RUN_EXECUTION_YEAR,
		/// INVALID_RUN_EXECUTION_MONTH, INVALID_RUN_EXECUTION_DAY, INVALID_PATH,
		/// INVALID_BUS_CATEGORY, INVALID_WEEKDAY, INVALID_RUN_HOUR,
		/// INVALID_RUN_MINUTE, INVALID_BUS_CAR_CODE,
		/// INVALID_DRIVER_PASSPORT_DATA;
		/// обновление: SUCCESSFUL, INVALID_OLD_RUN_EXECUTION_YEAR,
		/// INVALID_OLD_RUN_EXECUTION_MONTH,INVALID_OLD_RUN_EXECUTION_DAY,
		/// INVALID_OLD_PATH, INVALID_OLD_BUS_CATEGORY, INVALID_OLD_WEEKDAY,
		/// INVALID_OLD_RUN_HOUR, INVALID_OLD_RUN_MINUTE,
		/// INVALID_OLD_BUS_CAR_CODE, INVALID_OLD_DRIVER_PASSPORT_DATA,
		/// INVALID_RUN_EXECUTION_YEAR, INVALID_RUN_EXECUTION_MONTH,
		/// INVALID_RUN_EXECUTION_DAY, INVALID_PATH, INVALID_BUS_CATEGORY,
		/// INVALID_WEEKDAY, INVALID_RUN_HOUR, INVALID_RUN_MINUTE,
		/// INVALID_BUS_CAR_CODE, INVALID_DRIVER_PASSPORT_DATA;
		/// удаление: SUCCESSFUL, INVALID_RUN_EXECUTION_YEAR,
		/// INVALID_RUN_EXECUTION_MONTH, INVALID_RUN_EXECUTION_DAY, INVALID_PATH,
		/// INVALID_BUS_CATEGORY, INVALID_WEEKDAY, INVALID_RUN_HOUR,
		/// INVALID_RUN_MINUTE, INVALID_BUS_CAR_CODE,
		/// INVALID_DRIVER_PASSPORT_DATA;
		/// VOID</returns>
		public override OperationReport LoadStoredProcedureParameters( )
		{
			// Загрузка параметров хранимой процедуры в зависимости от её типа
			switch ( this._EditingAction )
			{
				// Добавление
				case StoredProcedureAction.INSERT :
					return this._RunExecution.LoadInsertStoredProcedureParameters
					(
						this.dateDateTimePicker.Value.Year.ToString( ),
						this.dateDateTimePicker.Value.Month.ToString( ),
						this.dateDateTimePicker.Value.Day.ToString( ),
						this.pathComboBox.Text,
						this.busCategoryComboBox.Text,
						this.weekdayComboBox.Text,
						this.timeDateTimePicker.Value.Hour.ToString( ),
						this.timeDateTimePicker.Value.Minute.ToString( ),
						this.busCarCodeComboBox.Text,
						this.driverPassportDataComboBox.Text
					);

				// Обновление
				case StoredProcedureAction.UPDATE :
					return this._RunExecution.LoadUpdateStoredProcedureParameters
					(
						this.oldDateDateTimePicker.Value.Year.ToString( ),
						this.oldDateDateTimePicker.Value.Month.ToString( ),
						this.oldDateDateTimePicker.Value.Day.ToString( ),
						this.oldPathComboBox.Text,
						this.oldBusCategoryComboBox.Text,
						this.oldWeekdayComboBox.Text,
						this.oldTimeDateTimePicker.Value.Hour.ToString( ),
						this.oldTimeDateTimePicker.Value.Minute.ToString( ),
						this.oldBusCarCodeComboBox.Text,
						this.oldDriverPassportDataComboBox.Text,
						this.dateDateTimePicker.Value.Year.ToString( ),
						this.dateDateTimePicker.Value.Month.ToString( ),
						this.dateDateTimePicker.Value.Day.ToString( ),
						this.pathComboBox.Text,
						this.busCategoryComboBox.Text,
						this.weekdayComboBox.Text,
						this.timeDateTimePicker.Value.Hour.ToString( ),
						this.timeDateTimePicker.Value.Minute.ToString( ),
						this.busCarCodeComboBox.Text,
						this.driverPassportDataComboBox.Text
					);

				// Удаление
				case StoredProcedureAction.DELETE :
					return this._RunExecution.LoadInsertStoredProcedureParameters
					(
						this.oldDateDateTimePicker.Value.Year.ToString( ),
						this.oldDateDateTimePicker.Value.Month.ToString( ),
						this.oldDateDateTimePicker.Value.Day.ToString( ),
						this.oldPathComboBox.Text,
						this.oldBusCategoryComboBox.Text,
						this.oldWeekdayComboBox.Text,
						this.oldTimeDateTimePicker.Value.Hour.ToString( ),
						this.oldTimeDateTimePicker.Value.Minute.ToString( ),
						this.oldBusCarCodeComboBox.Text,
						this.oldDriverPassportDataComboBox.Text
					);

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
					this.dateDateTimePicker.Value = this._RunExecution.Date;
					this.pathComboBox.Text        = this._RunExecution.Path;
					this.busCategoryComboBox.Text = this._RunExecution.BusCategory;
					this.weekdayComboBox.Text     = this._RunExecution.Weekday;
					this.timeDateTimePicker.Value = this._RunExecution.Time;
					this.busCarCodeComboBox.Text  = this._RunExecution.BusCarCode;
					this.driverPassportDataComboBox.Text =
						this._RunExecution.DriverPassportData;
					return;

				// Обновление
				case StoredProcedureAction.UPDATE :
					this.oldDateDateTimePicker.Value = this._RunExecution.OldDate;
					this.oldPathComboBox.Text        = this._RunExecution.OldPath;
					this.oldBusCategoryComboBox.Text        =
						this._RunExecution.OldBusCategory;
					this.oldWeekdayComboBox.Text     = this._RunExecution.OldWeekday;
					this.oldTimeDateTimePicker.Value = this._RunExecution.OldTime;
					this.oldBusCarCodeComboBox.Text  = this._RunExecution.OldBusCarCode;
					this.oldDriverPassportDataComboBox.Text =
						this._RunExecution.OldDriverPassportData;
					this.dateDateTimePicker.Value    = this._RunExecution.Date;
					this.pathComboBox.Text           = this._RunExecution.Path;
					this.busCategoryComboBox.Text    = this._RunExecution.BusCategory;
					this.weekdayComboBox.Text        = this._RunExecution.Weekday;
					this.timeDateTimePicker.Value    = this._RunExecution.Time;
					this.busCarCodeComboBox.Text     = this._RunExecution.BusCarCode;
					this.driverPassportDataComboBox.Text    =
						this._RunExecution.DriverPassportData;
					return;

				// Удаление
				case StoredProcedureAction.DELETE :
					this.oldDateDateTimePicker.Value = this._RunExecution.Date;
					this.oldPathComboBox.Text        = this._RunExecution.Path;
					this.oldBusCategoryComboBox.Text        =
						this._RunExecution.OldBusCategory;
					this.oldWeekdayComboBox.Text     = this._RunExecution.Weekday;
					this.oldTimeDateTimePicker.Value = this._RunExecution.Time;
					this.oldBusCarCodeComboBox.Text  = this._RunExecution.BusCarCode;
					this.oldDriverPassportDataComboBox.Text =
						this._RunExecution.DriverPassportData;
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
						// Неверный год
						case OperationResult.INVALID_RUN_EXECUTION_YEAR :
							this.errorProvider.SetError( this.dateDateTimePicker,
								parOperationReport.Message );
							return;

						// Неверный месяц
						case OperationResult.INVALID_RUN_EXECUTION_MONTH :
							this.errorProvider.SetError( this.dateDateTimePicker,
								parOperationReport.Message );
							return;

						// Неверный день
						case OperationResult.INVALID_RUN_EXECUTION_DAY :
							this.errorProvider.SetError( this.dateDateTimePicker,
								parOperationReport.Message );
							return;

						// Неверный маршрут
						case OperationResult.INVALID_PATH :
							this.errorProvider.SetError( this.pathComboBox,
								parOperationReport.Message );
							return;

						// Неверная категория автобуса
						case OperationResult.INVALID_BUS_CATEGORY :
							this.errorProvider.SetError( this.busCategoryComboBox,
								parOperationReport.Message );
							return;

						// Неверный день недели
						case OperationResult.INVALID_WEEKDAY :
							this.errorProvider.SetError( this.weekdayComboBox,
								parOperationReport.Message );
							return;

						// Неверные прежние часы
						case OperationResult.INVALID_RUN_HOUR :
							this.errorProvider.SetError( this.timeDateTimePicker,
								parOperationReport.Message );
							return;

						// Неверные прежние минуты
						case OperationResult.INVALID_RUN_MINUTE :
							this.errorProvider.SetError( this.timeDateTimePicker,
								parOperationReport.Message );
							return;

						// Неверный автомобильный номер автобуса
						case OperationResult.INVALID_BUS_CAR_CODE :
							this.errorProvider.SetError( this.busCarCodeComboBox,
								parOperationReport.Message );
							return;

						// Неверные прежние паспортные данные водителя автобуса
						case OperationResult.INVALID_DRIVER_PASSPORT_DATA :
							this.errorProvider.SetError( this.driverPassportDataComboBox,
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
						// Неверный прежний год
						case OperationResult.INVALID_OLD_RUN_EXECUTION_YEAR :
							this.errorProvider.SetError( this.oldDateDateTimePicker,
								parOperationReport.Message );
							return;

						// Неверный прежний месяц
						case OperationResult.INVALID_OLD_RUN_EXECUTION_MONTH :
							this.errorProvider.SetError( this.oldDateDateTimePicker,
								parOperationReport.Message );
							return;

						// Неверный прежний день
						case OperationResult.INVALID_OLD_RUN_EXECUTION_DAY :
							this.errorProvider.SetError( this.oldDateDateTimePicker,
								parOperationReport.Message );
							return;

						// Неверный прежний маршрут
						case OperationResult.INVALID_OLD_PATH :
							this.errorProvider.SetError( this.oldPathComboBox,
								parOperationReport.Message );
							return;

						// Неверная прежняя категория автобуса
						case OperationResult.INVALID_OLD_BUS_CATEGORY :
							this.errorProvider.SetError( this.oldBusCategoryComboBox,
								parOperationReport.Message );
							return;

						// Неверный прежний день недели
						case OperationResult.INVALID_OLD_WEEKDAY :
							this.errorProvider.SetError( this.oldWeekdayComboBox,
								parOperationReport.Message );
							return;

						// Неверные прежние часы
						case OperationResult.INVALID_OLD_RUN_HOUR :
							this.errorProvider.SetError( this.oldTimeDateTimePicker,
								parOperationReport.Message );
							return;

						// Неверные прежние минуты
						case OperationResult.INVALID_OLD_RUN_MINUTE :
							this.errorProvider.SetError( this.oldTimeDateTimePicker,
								parOperationReport.Message );
							return;

						// Неверный прежний автомобильный номер автобус
						case OperationResult.INVALID_OLD_BUS_CAR_CODE :
							this.errorProvider.SetError( this.oldBusCarCodeComboBox,
								parOperationReport.Message );
							return;

						// Неверные прежние паспортные данные водителя автобуса
						case OperationResult.INVALID_OLD_DRIVER_PASSPORT_DATA :
							this.errorProvider.SetError( this.oldDriverPassportDataComboBox,
								parOperationReport.Message );
							return;

						// Неверный год
						case OperationResult.INVALID_RUN_EXECUTION_YEAR :
							this.errorProvider.SetError( this.dateDateTimePicker,
								parOperationReport.Message );
							return;

						// Неверный месяц
						case OperationResult.INVALID_RUN_EXECUTION_MONTH :
							this.errorProvider.SetError( this.dateDateTimePicker,
								parOperationReport.Message );
							return;

						// Неверный день
						case OperationResult.INVALID_RUN_EXECUTION_DAY :
							this.errorProvider.SetError( this.dateDateTimePicker,
								parOperationReport.Message );
							return;

						// Неверный маршрут
						case OperationResult.INVALID_PATH :
							this.errorProvider.SetError( this.pathComboBox,
								parOperationReport.Message );
							return;

						// Неверная категория автобуса
						case OperationResult.INVALID_BUS_CATEGORY :
							this.errorProvider.SetError( this.busCategoryComboBox,
								parOperationReport.Message );
							return;

						// Неверный день недели
						case OperationResult.INVALID_WEEKDAY :
							this.errorProvider.SetError( this.weekdayComboBox,
								parOperationReport.Message );
							return;

						// Неверные прежние часы
						case OperationResult.INVALID_RUN_HOUR :
							this.errorProvider.SetError( this.timeDateTimePicker,
								parOperationReport.Message );
							return;

						// Неверные прежние минуты
						case OperationResult.INVALID_RUN_MINUTE :
							this.errorProvider.SetError( this.timeDateTimePicker,
								parOperationReport.Message );
							return;

						// Неверный автомобильный номер автобуса
						case OperationResult.INVALID_BUS_CAR_CODE :
							this.errorProvider.SetError( this.busCarCodeComboBox,
								parOperationReport.Message );
							return;

						// Неверные прежние паспортные данные водителя автобуса
						case OperationResult.INVALID_DRIVER_PASSPORT_DATA :
							this.errorProvider.SetError( this.driverPassportDataComboBox,
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
						// Неверный год
						case OperationResult.INVALID_RUN_EXECUTION_YEAR :
							this.errorProvider.SetError( this.oldDateDateTimePicker,
								parOperationReport.Message );
							return;

						// Неверный месяц
						case OperationResult.INVALID_RUN_EXECUTION_MONTH :
							this.errorProvider.SetError( this.oldDateDateTimePicker,
								parOperationReport.Message );
							return;

						// Неверный день
						case OperationResult.INVALID_RUN_EXECUTION_DAY :
							this.errorProvider.SetError( this.oldDateDateTimePicker,
								parOperationReport.Message );
							return;

						// Неверный маршрут
						case OperationResult.INVALID_PATH :
							this.errorProvider.SetError( this.oldPathComboBox,
								parOperationReport.Message );
							return;

						// Неверная категория автобуса
						case OperationResult.INVALID_BUS_CATEGORY :
							this.errorProvider.SetError( this.oldBusCategoryComboBox,
								parOperationReport.Message );
							return;

						// Неверный день недели
						case OperationResult.INVALID_WEEKDAY :
							this.errorProvider.SetError( this.oldWeekdayComboBox,
								parOperationReport.Message );
							return;

						// Неверные прежние часы
						case OperationResult.INVALID_RUN_HOUR :
							this.errorProvider.SetError( this.oldTimeDateTimePicker,
								parOperationReport.Message );
							return;

						// Неверные прежние минуты
						case OperationResult.INVALID_RUN_MINUTE :
							this.errorProvider.SetError( this.oldTimeDateTimePicker,
								parOperationReport.Message );
							return;

						// Неверный автомобильный номер автобуса
						case OperationResult.INVALID_BUS_CAR_CODE :
							this.errorProvider.SetError( this.oldBusCarCodeComboBox,
								parOperationReport.Message );
							return;

						// Неверные прежние паспортные данные водителя автобуса
						case OperationResult.INVALID_DRIVER_PASSPORT_DATA :
							this.errorProvider.SetError( this.oldDriverPassportDataComboBox,
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
			this._RunExecution.ExecuteStoredProcedure
				( ref this.centralBusTerminalDataSet, true, true );
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
				if ( this.RunExecutionEditingIsExecuted != null )
				{
					// Аргументы события выполнения редактирования выполнения рейса
					EditRunExecutionEventArgs editRunExecutionEventArgs =
						new EditRunExecutionEventArgs
						(
							this._EditingAction,
							DataContainer.DateDDMMYYYYStringByMeansOfPoint
								( this._RunExecution.Date ),
							this._RunExecution.Path,
							this._RunExecution.BusCategory,
							this._RunExecution.Weekday,
							DataContainer.TimeHHMMStringByMeansOfColon
								( this._RunExecution.Time ),
							this._RunExecution.BusCarCode,
							this._RunExecution.DriverPassportData
						);
					// Генерирование собятия выполнения редактирования выполнения рейса
					this.RunExecutionEditingIsExecuted
						( this, editRunExecutionEventArgs );
				} // if
			return;
		}// OnExecuteButtonClick
		#endregion Конкретные методы редактирования
		#endregion Методы

		#region Конструкторы
		/// <summary>
		/// Создание формы редактирования выполнения рейса
		/// с действием редактирования по умолчанию без инизиализации параметров
		/// </summary>
		public EditRunExecutionForm( )
		{
			InitializeComponent( );
		} // EditRunExecutionForm

		/// <summary>
		/// Создание формы редактирования выполнения рейса
		/// в заданном режиме редактирования без инизиализации параметров
		/// </summary>
		/// <param name="parEditingAction">Действие редактирования</param>
		public EditRunExecutionForm( StoredProcedureAction parEditingAction )
		{
			InitializeComponent( );
			// Инициализация формы редактирования выполнения рейса
			this.Initialize( parEditingAction );
		} // EditRunExecutionForm

		/// <summary>
		/// Создание формы редактирования выполнения рейса
		/// в заданном режиме редактирования с инизиализацией параметров
		/// </summary>
		/// <param name="parEditingAction">Действие редактирования</param>
		/// <param name="parDate">Дата</param>
		/// <param name="parPath">Маршрут</param>
		/// <param name="parBusCategory">Категория автобуса</param>
		/// <param name="parWeekday">День недели</param>
		/// <param name="parTime">Время</param>
		/// <param name="parBusCarCode">Автомобильный номер автобусам</param>
		/// <param name="parDriverPassportData">
		/// Паспортные данные водителя автобуса</param>
		public EditRunExecutionForm
		(
			StoredProcedureAction parEditingAction,
			string                parDate,
			string                parPath,
			string                parBusCategory,
			string                parWeekday,
			string                parTime,
			string                parBusCarCode,
			string                parDriverPassportData
		)
		{
			InitializeComponent( );
			// Инициализация формы редактирования выполнения рейса
			this.Initialize( parEditingAction );

			// Инициализация параметров в зависимости
			// от текущего действия редактирования
			switch ( this._EditingAction )
			{
				// Добавление
				case StoredProcedureAction.INSERT :
					this.dateDateTimePicker.Value = Convert.ToDateTime( parDate );
					this.pathComboBox.Text               = parPath;
					this.busCategoryComboBox.Text        = parBusCategory;
					this.weekdayComboBox.Text            = parWeekday;
					this.timeDateTimePicker.Value = Convert.ToDateTime( parTime );
					this.busCarCodeComboBox.Text         = parBusCarCode;
					this.driverPassportDataComboBox.Text = parDriverPassportData;
					return;

				// Обновление
				case StoredProcedureAction.UPDATE :
					this.oldDateDateTimePicker.Value = Convert.ToDateTime( parDate );
					this.oldPathComboBox.Text               = parPath;
					this.oldBusCategoryComboBox.Text        = parBusCategory;
					this.oldWeekdayComboBox.Text            = parWeekday;
					this.oldTimeDateTimePicker.Value = Convert.ToDateTime( parTime );
					this.oldBusCarCodeComboBox.Text         = parBusCarCode;
					this.oldDriverPassportDataComboBox.Text = parDriverPassportData;
					this.dateDateTimePicker.Value    = Convert.ToDateTime( parDate );
					this.pathComboBox.Text                  = parPath;
					this.busCategoryComboBox.Text           = parBusCategory;
					this.weekdayComboBox.Text               = parWeekday;
					this.timeDateTimePicker.Value    = Convert.ToDateTime( parTime );
					this.busCarCodeComboBox.Text            = parBusCarCode;
					this.driverPassportDataComboBox.Text    = parDriverPassportData;
					return;

				// Удаление
				case StoredProcedureAction.DELETE :
					this.oldDateDateTimePicker.Value = Convert.ToDateTime( parDate );
					this.oldPathComboBox.Text               = parPath;
					this.oldBusCategoryComboBox.Text        = parBusCategory;
					this.oldWeekdayComboBox.Text            = parWeekday;
					this.oldTimeDateTimePicker.Value = Convert.ToDateTime( parTime );
					this.oldBusCarCodeComboBox.Text         = parBusCarCode;
					this.oldDriverPassportDataComboBox.Text = parDriverPassportData;
					return;

				// Прочие непредусмотренные процедуры
				default :
					return;
			} // switch
		} // EditRunExecutionForm

		/// <summary>
		/// Создание формы редактирования выполнения рейса
		/// в режиме обновления с инизиализацией параметров
		/// </summary>
		/// <param name="parOldDate">Прежняя дата</param>
		/// <param name="parOldPath">Прежний маршрут</param>
		/// <param name="parOldBusCategory">Прежняя категория автобуса</param>
		/// <param name="parOldWeekday">Прежний день недели</param>
		/// <param name="parOldTime">Прежнее время</param>
		/// <param name="parOldBusCarCode">
		/// Прежний автомобильный номер автобуса</param>
		/// <param name="parOldDriverPassportData">
		/// Прежние паспортные данные водителя автобуса</param>
		/// <param name="parDate">Дата</param>
		/// <param name="parPath">Маршрут</param>
		/// <param name="parBusCategory">Категория автобуса</param>
		/// <param name="parWeekday">День недели</param>
		/// <param name="parTime">Время</param>
		/// <param name="parBusCarCode">Автомобильный номер автобусам</param>
		/// <param name="parDriverPassportData">
		/// Паспортные данные водителя автобуса</param>
		public EditRunExecutionForm
		(
			string parOldDate,
			string parOldPath,
			string parOldBusCategory,
			string parOldWeekday,
			string parOldTime,
			string parOldBusCarCode,
			string parOldDriverPassportData,
			string parDate,
			string parPath,
			string parBusCategory,
			string parWeekday,
			string parTime,
			string parBusCarCode,
			string parDriverPassportData
		)
		{
			InitializeComponent( );
			// Инициализация формы редактирования выполнения рейса
			this.Initialize( StoredProcedureAction.UPDATE );
			// Инициализация параметров
			this.oldDateDateTimePicker.Value = Convert.ToDateTime( parOldDate );
			this.oldPathComboBox.Text               = parOldPath;
			this.oldBusCategoryComboBox.Text        = parOldBusCategory;
			this.oldWeekdayComboBox.Text            = parOldWeekday;
			this.oldTimeDateTimePicker.Value = Convert.ToDateTime( parOldTime );
			this.oldBusCarCodeComboBox.Text         = parOldBusCarCode;
			this.oldDriverPassportDataComboBox.Text = parOldDriverPassportData;
			this.dateDateTimePicker.Value    = Convert.ToDateTime( parDate );
			this.pathComboBox.Text                  = parPath;
			this.busCategoryComboBox.Text           = parBusCategory;
			this.weekdayComboBox.Text               = parWeekday;
			this.timeDateTimePicker.Value    = Convert.ToDateTime( parTime );
			this.busCarCodeComboBox.Text            = parBusCarCode;
			this.driverPassportDataComboBox.Text    = parDriverPassportData;
		} // EditRunExecutionForm
		#endregion Конструкторы
	} // EditRunExecutionForm
} // CentralBusTerminalClient
