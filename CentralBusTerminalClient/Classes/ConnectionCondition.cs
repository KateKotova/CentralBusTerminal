using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Состояние подключения
	/// </summary>
	public class ConnectionCondition
	{
		#region Поля
		#region Сообщения об ошибках
		/// <summary>
		/// Сообщение об ошибке неверного имени сервера
		/// </summary>
		protected const string INVALID_SERVER_ERROR_MESSAGE   =
			"Неверное имя сервера";
		/// <summary>
		/// Сообщение об ошибке неверного имени базы данных
		/// </summary>
		protected const string INVALID_DATABASE_ERROR_MESSAGE =
			"Неверное имя базы данных";
		/// <summary>
		/// Сообщение об ошибке неверного имени пользователя или пароля
		/// </summary>
		protected const string
			INVALID_USER_NAME_OR_PASSWORD_ERROR_MESSAGE         =
			"Неверное имя пользователя или пароль";
		/// <summary>
		/// Сообщение об ошибке подключения
		/// </summary>
		protected const string CONNECTION_ERROR_MESSAGE       =
			"Ошибка подключения";
		#endregion Сообщения об ошибках

		/// <summary>
		/// Атрибуты подключения
		/// </summary>
		protected ConnectionAttributes _Attributes = new ConnectionAttributes
			( 15, ".", "Northwind", "sa", "sa", ConnectionSecurityLevel.WINDOWS );
		#endregion Поля

		/// <summary>
		/// Проверка возможности осуществеления подключения
		/// </summary>
		/// <returns>Отчёт операции с результатами SUCCESSFUL, VOID, FAILED,
		/// INVALID_SERVER, INVALID_DATABASE,
		/// INVALID_USER_NAME_OR_PASSWORD</returns>
		public virtual OperationReport Test( )
		{
			// Локализация временных ресурсов соединения в следующем блоке,
			// гарантирующем их освобождение по его окончанию
			using ( SqlConnection connection = new SqlConnection
				( this._Attributes.ConnectionString( ) ) )
			{
				try
				{
					// Попытка подключения
					connection.Open( );
				} // try

				// Перехват ошибки при попытке подключения
				catch ( SqlException exception )
				{
					foreach ( SqlError error in exception.Errors )
					{
						// Номер ошибки SQL Server
						switch ( error.Number )
						{
							// Неверное имя сервера
							case 17 :
								return new OperationReport( OperationResult.INVALID_SERVER,
									ConnectionCondition.INVALID_SERVER_ERROR_MESSAGE );

							// Неверное имя базы данных
							case 4060 :
								return new OperationReport( OperationResult.INVALID_DATABASE,
									ConnectionCondition.INVALID_DATABASE_ERROR_MESSAGE );

							// Неверное имя пользователя или пароль
							case 18456 :
								return new OperationReport
									( OperationResult.INVALID_USER_NAME_OR_PASSWORD,
									ConnectionCondition.
									INVALID_USER_NAME_OR_PASSWORD_ERROR_MESSAGE );

							// Ошибка подключения
							default :
								return new OperationReport( OperationResult.FAILED,
									ConnectionCondition.CONNECTION_ERROR_MESSAGE );
						} // switch
					} // foreach
				} // catch

				// Прочие ошибки
				catch
				{
					// Недействительная операция
					return new OperationReport( OperationResult.VOID,
						DataContainer.VOID_OPERATION_ERROR_MESSAGE );
				} // catch
			} // using

			// Подключение состоялось
			return new OperationReport( );
		} // Test

		#region Конструкторы
		/// <summary>
		/// Создание состояния подключения по умолчанию
		/// </summary>
		public ConnectionCondition( )
		{
		} // ConnectionCondition

		/// <summary>
		/// Создание состояния подключения с заданными атрибутами
		/// </summary>
		/// <param name="parAttributes">Аттрибуты</param>
		public ConnectionCondition( ConnectionAttributes parAttributes )
		{
			this._Attributes = parAttributes;
		} // ConnectionCondition
		#endregion Конструкторы

		#region Свойства
		/// <summary>
		/// Атрибуты
		/// </summary>
		public virtual ConnectionAttributes Attributes
		{
			get
			{
				return this._Attributes;
			} // get
			set
			{
				this._Attributes = value;
			} // set
		} // Attributes
		#endregion Свойства
	} // ConnectionCondition
} // CentralBusTerminalClient