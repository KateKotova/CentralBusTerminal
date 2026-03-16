using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Форма подключения
	/// </summary>
	public partial class ConnectionForm : Form
	{
		/// <summary>
		/// Признак необходимости завершения диалога подключения
		/// </summary>
		protected bool _mustCloseDialog = true;

		#region Методы
		#region Стандартные методы
		/// <summary>
		/// Загрузка исходных параметров подключения
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnConnectionFormLoad
		(
			object    sender,
			EventArgs e
		)
		{
		} // OnConnectionFormLoad

		/// <summary>
		/// Завершение попытки подключения
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnConnectionFormFormClosing
		(
			object               sender,
			FormClosingEventArgs e
		)
		{
			// Закрытие формы зависит от результата теста подключения
			e.Cancel = ! this._mustCloseDialog;
			// Попытка подключения совершена, и диалог может быть отменён
			// или предпринята новая попытка подключения
			this._mustCloseDialog = true;
		} // OnConnectionFormFormClosing
		#endregion Стандартные методы

		/// <summary>
		/// Попытка подключения к базе данных
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		protected virtual void OnConnectButtonClick
		(
			object    sender,
			EventArgs e
		)
		{
			// Диалог не может быть закрыт, пока не состоялась попытка подключения
			this._mustCloseDialog = false;
			// Очиста сигнализаторов об ошибке
			this.errorProvider.Clear( );

			// Атрибуты текущего подключения
			ConnectionAttributes сurrentConnectionAttributes =
				new ConnectionAttributes
				(
					DataContainer.Instance( ).CurrentConnectionAttributes.
						ConnectTimeout,
					this.serverTextBox.Text,
					this.databaseTextBox.Text,
					this.userNameTextBox.Text,
					this.passwordTextBox.Text,
					DataContainer.Instance( ).CurrentConnectionAttributes.SecurityLevel
				);

			// Установка параметров подключения
			DataContainer.Instance( ).CurrentConnectionAttributes =
				сurrentConnectionAttributes;

			// Попытка подключения
			this.Cursor            = Cursors.WaitCursor;
			OperationReport report = DataContainer.Instance( ).Connect( );
			this.Cursor            = Cursors.Default;

			// Просмотр отчёта о результате подключения
			switch ( report.Result )
			{
				// Успешное поделючение
				case OperationResult.SUCCESSFUL :
					// Диалог состоялся успешно и может быть закрыт
					this._mustCloseDialog = true;
					return;

				// Невеное имя сервера
				case OperationResult.INVALID_SERVER :
					this.errorProvider.SetError( this.serverTextBox,   report.Message );
					break;

				// Невеное имя базы данных
				case OperationResult.INVALID_DATABASE :
					this.errorProvider.SetError( this.databaseTextBox, report.Message );
					break;

				// Невеное имя пользователя или пароль
				case OperationResult.INVALID_USER_NAME_OR_PASSWORD :
					this.errorProvider.SetError( this.userNameTextBox, report.Message );
					this.errorProvider.SetError( this.passwordTextBox, report.Message );
					break;

				// Прочие ошибки
				default :
					this.errorProvider.SetError( this.connectButton,   report.Message );
					break;
			} // switch
		} // OnConnectButtonClick
		#endregion Методы

		/// <summary>
		/// Создание формы соединения
		/// </summary>
		public ConnectionForm( )
		{
			InitializeComponent( );
		} // ConnectionForm
	} // ConnectionForm
} // CentralBusTerminalClient