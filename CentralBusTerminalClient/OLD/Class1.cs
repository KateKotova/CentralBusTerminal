/*---------------------------------------------------------------
 * 
 * 
 * 				this.centralBusTerminalDataSet.RunsExecutions.TableName,
				this.centralBusTerminalDataSet.Paths.TableName,
				this.centralBusTerminalDataSet.BusesCategories.TableName,
				this.centralBusTerminalDataSet.Weekdays.TableName,
				this.centralBusTerminalDataSet.Buses.TableName,
				this.centralBusTerminalDataSet.Drivers.TableName );

 * 
 * 
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Параметр
	/// </summary>
	public class Parameter : IClearAble
	{
		#region Поля
		/// <summary>
		/// Sql-тип
		/// </summary>
		protected ParameterSqlType _SqlType          = ParameterSqlType.NONE;
		/// <summary>
		/// Представление Sql-параметра
		/// </summary>
		protected SqlParameter     _SqlParameterView = new SqlParameter
			( string.Empty, DBNull.Value );

		/// <summary>
		/// Точность типа smallmoney
		/// </summary>
		public const byte SMALLMONEY_SQL_TYPE_PRECISION = 19;
		/// <summary>
		/// Масштаб типа smallmoney
		/// </summary>
		public const byte SMALLMONEY_SQL_TYPE_SCALE     = 4;
		#endregion Поля

		#region Методы
		#region Методы установки значения
		/// <summary>
		/// Установка неизвестного Sql-типа и неопределённого значения
		/// </summary>
		protected virtual void SetUnknownSqlType( )
		{
			// Неизвестный Sql-тип
			this._SqlType                    = ParameterSqlType.UNKNOWN;
			// По умолчанию Sql-тип строковый
			this._SqlParameterView.SqlDbType = SqlDbType.NVarChar;
			// Неопределённое значение
			this._SqlParameterView.Value     = DBNull.Value;
		} // SetUnknownSqlType

		/// <summary>
		/// Установка неопределённого Sql-типа и неопределённого значения
		/// </summary>
		protected virtual void SetNoneSqlType( )
		{
			// Неопределённый Sql-тип
			this._SqlType                    = ParameterSqlType.NONE;
			// По умолчанию Sql-тип строковый
			this._SqlParameterView.SqlDbType = SqlDbType.NVarChar;
			// Неопределённое значение
			this._SqlParameterView.Value     = DBNull.Value;
		} // SetNoneSqlType

		/// <summary>
		/// Установка значения
		/// </summary>
		/// <param name="parValue">Значение</param>
		/// <returns>Отчёт операции с результатами SUCCESSFUL, FAILED,
		/// UNKNOWN_SQL_TYPE</returns>
		public virtual OperationResult SetValue( string parValue )
		{
			try
			{
				// Замена пустой или состоящей из одних пробелов строки
				// неопределённостью для нестроковых типов
				if ( parValue.Trim( ) == string.Empty )
				{
					if ( this._SqlType == ParameterSqlType.NVARCHAR )
						this._SqlParameterView.Value = string.Empty;
					else
						this._SqlParameterView.Value = DBNull.Value;

					// Успешный перевод из строки в заданный тип
					return OperationResult.SUCCESSFUL;
				} // if

				// Sql-тип
				switch ( this._SqlType )
				{
					// Неопределённый тип
					case ParameterSqlType.NONE :
						// Установка неопределённого Sql-типа и неопределённого значения
						this.SetNoneSqlType( );
						break;

					// Целое число
					case ParameterSqlType.INT :
						this._SqlParameterView.Value = Convert.ToInt32  ( parValue );
						break;

					// Среднее целое число
					case ParameterSqlType.SMALLINT :
						this._SqlParameterView.Value = Convert.ToInt16  ( parValue );
						break;

					// Малое целое число
					case ParameterSqlType.TINYINT :
						this._SqlParameterView.Value = Convert.ToByte   ( parValue );
						break;

					// Десятичная дробь с фиксированной точкой
					case ParameterSqlType.DECIMAL :
						this._SqlParameterView.Value = Convert.ToDecimal( parValue );
						break;

					// Малая денежная величина
					case ParameterSqlType.SMALLMONEY :
						this._SqlParameterView.Value = Convert.ToDecimal( parValue );
						break;

					// Десятичная дробь с плавающей точкой
					case ParameterSqlType.FLOAT :
						this._SqlParameterView.Value = Convert.ToSingle ( parValue );
						break;

					// Строка
					case ParameterSqlType.NVARCHAR :
						this._SqlParameterView.Value = parValue;
						break;

					default :
						// Установка неизвестного Sql-типа и неопределённого значения
						this.SetUnknownSqlType( );
						// Перевод не осуществлён из-за неизвестного Sql-типа
						return OperationResult.UNKNOWN_SQL_TYPE;
				} // switch

				// Успешный перевод из строки в заданный тип
				return OperationResult.SUCCESSFUL;
			} // try

			catch
			{
				// Установка неопределённого значения
				this._SqlParameterView.Value = DBNull.Value;
				// Неуспешный перевод из строки в заданный тип
				return OperationResult.FAILED;
			} // catch
		} // SetValue

		/// <summary>
		/// Очистка
		/// </summary>
		public virtual void Clear( )
		{
			// Установка пустого значения
			this.SetValue( string.Empty );
		} // Clear
		#endregion Методы установки значения

		#region Методы инициализации педставления Sql-параметра
		/// <summary>
		/// Инициализация параметра типа int
		/// </summary>
		/// <param name="parDirection">Направление</param>
		/// <param name="parIsNullable">
		/// Допустимость неопределённого значения</param>
		/// <param name="parValue">Значение</param>
		/// <returns>Отчёт операции с результатами SUCCESSFUL, FAILED</returns>
		public virtual OperationResult InitInt
		(
			ParameterDirection parDirection,
			bool               parIsNullable,
			string             parValue
		)
		{
			try
			{
				this._SqlParameterView.SqlDbType  = SqlDbType.Int;
				this._SqlParameterView.Direction  = parDirection;
				this._SqlParameterView.IsNullable = parIsNullable;
				this._SqlType                     = ParameterSqlType.INT;
				this.SetValue( parValue );

				// Успешная инициализация параметра
				return OperationResult.SUCCESSFUL;
			} // try

			catch
			{
				// Установка неопределённого Sql-типа и неопределённого значения
				this.SetNoneSqlType( );
				// Неуспешная инициализация параметра
				return OperationResult.FAILED;
			} // catch
		} // InitInt

		/// <summary>
		/// Инициализация параметра типа smallint
		/// </summary>
		/// <param name="parDirection">Направление</param>
		/// <param name="parIsNullable">
		/// Допустимость неопределённого значения</param>
		/// <param name="parValue">Значение</param>
		/// <returns>Отчёт операции с результатами SUCCESSFUL, FAILED</returns>
		public virtual OperationResult InitSmallint
		(
			ParameterDirection parDirection,
			bool               parIsNullable,
			string             parValue
		)
		{
			try
			{
				this._SqlParameterView.SqlDbType  = SqlDbType.SmallInt;
				this._SqlParameterView.Direction  = parDirection;
				this._SqlParameterView.IsNullable = parIsNullable;
				this._SqlType                     = ParameterSqlType.SMALLINT;
				this.SetValue( parValue );

				// Успешная инициализация параметра
				return OperationResult.SUCCESSFUL;
			} // try

			catch
			{
				// Установка неопределённого Sql-типа и неопределённого значения
				this.SetNoneSqlType( );
				// Неуспешная инициализация параметра
				return OperationResult.FAILED;
			} // catch
		} // InitSmallint

		/// <summary>
		/// Инициализация параметра типа tinyint
		/// </summary>
		/// <param name="parDirection">Направление</param>
		/// <param name="parIsNullable">
		/// Допустимость неопределённого значения</param>
		/// <param name="parValue">Значение</param>
		/// <returns>Отчёт операции с результатами SUCCESSFUL, FAILED</returns>
		public virtual OperationResult InitTinyint
		(
			ParameterDirection parDirection,
			bool               parIsNullable,
			string             parValue
		)
		{
			try
			{
				this._SqlParameterView.SqlDbType  = SqlDbType.TinyInt;
				this._SqlParameterView.Direction  = parDirection;
				this._SqlParameterView.IsNullable = parIsNullable;
				this._SqlType                     = ParameterSqlType.TINYINT;
				this.SetValue( parValue );

				// Успешная инициализация параметра
				return OperationResult.SUCCESSFUL;
			} // try

			catch
			{
				// Установка неопределённого Sql-типа и неопределённого значения
				this.SetNoneSqlType( );
				// Неуспешная инициализация параметра
				return OperationResult.FAILED;
			} // catch
		} // InitTinyint

		/// <summary>
		/// Инициализация параметра типа decimal
		/// </summary>
		/// <param name="parDirection">Направление</param>
		/// <param name="parIsNullable">
		/// Допустимость неопределённого значения</param>
		/// <param name="parPrecision">Точность</param>
		/// <param name="parScale">Масштаб</param>
		/// <param name="parValue">Значение</param>
		/// <returns>Отчёт операции с результатами SUCCESSFUL, FAILED</returns>
		public virtual OperationResult InitDecimal
		(
			ParameterDirection parDirection,
			bool               parIsNullable,
			byte               parPrecision,
			byte               parScale,
			string             parValue
		)
		{
			try
			{
				this._SqlParameterView.SqlDbType  = SqlDbType.Decimal;
				this._SqlParameterView.Direction  = parDirection;
				this._SqlParameterView.IsNullable = parIsNullable;
				this._SqlParameterView.Precision  = parPrecision;
				this._SqlParameterView.Scale      = parScale;
				this._SqlType                     = ParameterSqlType.DECIMAL;
				this.SetValue( parValue );

				// Успешная инициализация параметра
				return OperationResult.SUCCESSFUL;
			} // try

			catch
			{
				// Установка неопределённого Sql-типа и неопределённого значения
				this.SetNoneSqlType( );
				// Неуспешная инициализация параметра
				return OperationResult.FAILED;
			} // catch
		} // InitDecimal

		/// <summary>
		/// Инициализация параметра типа money
		/// </summary>
		/// <param name="parDirection">Направление</param>
		/// <param name="parIsNullable">
		/// Допустимость неопределённого значения</param>
		/// <param name="parValue">Значение</param>
		/// <returns>Отчёт операции с результатами SUCCESSFUL, FAILED</returns>
		public virtual OperationResult InitSmallmoney
		(
			ParameterDirection parDirection,
			bool               parIsNullable,
			string             parValue
		)
		{
			try
			{
				this._SqlParameterView.SqlDbType  = SqlDbType..Money;
				this._SqlParameterView.Direction  = parDirection;
				this._SqlParameterView.IsNullable = parIsNullable;
				this._SqlParameterView.Precision  =
					Parameter.SMALLMONEY_SQL_TYPE_PRECISION;
				this._SqlParameterView.Scale      =
					Parameter.SMALLMONEY_SQL_TYPE_SCALE;
				this._SqlType                     = ParameterSqlType.MONEY;
				this.SetValue( parValue );

				// Успешная инициализация параметра
				return OperationResult.SUCCESSFUL;
			} // try

			catch
			{
				// Установка неопределённого Sql-типа и неопределённого значения
				this.SetNoneSqlType( );
				// Неуспешная инициализация параметра
				return OperationResult.FAILED;
			} // catch
		} // InitSmallmoney

		/// <summary>
		/// Инициализация параметра типа varchar
		/// </summary>
		/// <param name="parDirection">Направление</param>
		/// <param name="parIsNullable">
		/// Допустимость неопределённого значения</param>
		/// <param name="parSize">Длина строки</param>
		/// <param name="parValue">Значение</param>
		/// <returns>Отчёт операции с результатами SUCCESSFUL, FAILED</returns>
		public virtual OperationResult InitNVarChar
		(
			ParameterDirection parDirection,
			bool               parIsNullable,
			int                parSize,
			string             parValue
		)
		{
			try
			{
				this._SqlParameterView.SqlDbType  = SqlDbType.NVarChar;
				this._SqlParameterView.Direction  = parDirection;
				this._SqlParameterView.IsNullable = parIsNullable;
				this._SqlParameterView.Size       = parSize;
				this._SqlType                     = ParameterSqlType.NVARCHAR;
				this.SetValue( parValue );

				// Успешная инициализация параметра
				return OperationResult.SUCCESSFUL;
			} // try

			catch
			{
				// Установка неопределённого Sql-типа и неопределённого значения
				this.SetNoneSqlType( );
				// Неуспешная инициализация параметра
				return OperationResult.FAILED;
			} // catch
		} // InitNVarChar
		#endregion Методы инициализации педставления Sql-параметра
		#endregion Методы

		#region Конструкторы
		/// <summary>
		/// Создание параметра по умолчанию
		/// </summary>
		public Parameter( )
		{
		} // Parameter

		/// <summary>
		/// Создание параметра с заданным именем
		/// </summary>
		/// <param name="parName">Имя</param>
		public Parameter( string parName )
		{
			this._SqlParameterView.ParameterName = parName;
		} // Parameter
		#endregion Конструкторы

		#region Свойства
		/// <summary>
		/// Sql-тип
		/// </summary>
		public virtual ParameterSqlType SqlType
		{
			get
			{
				return this._SqlType;
			} // get
		} // SqlType

		/// <summary>
		/// Значение Sql-параметра
		/// </summary>
		public virtual object Value
		{
			get
			{
				return this._SqlParameterView.Value;
			} // get
			set
			{
				this._SqlParameterView.Value = value;
			} // set
		} // Value

		/// <summary>
		/// Строка значения Sql-параметра
		/// </summary>
		public virtual string ValueString
		{
			get
			{
				// Если значение параметра не определено, то выводится пустая строка
				if ( this._SqlParameterView.Value == DBNull.Value )
					return string.Empty;
				else
					return this._SqlParameterView.Value.ToString( );
			} // get
		} // ValueString

		/// <summary>
		/// Представление Sql-параметра
		/// </summary>
		public virtual SqlParameter SqlParameterView
		{
			get
			{
				return this._SqlParameterView;
			} // get
		} // SqlParameterView
		#endregion Свойства
	} // Parameter
} // CentralBusTerminalClient
*/