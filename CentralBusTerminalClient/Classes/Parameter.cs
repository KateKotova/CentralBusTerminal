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
		protected SqlDbType?   _SqlType          = null;
		/// <summary>
		/// Представление Sql-параметра
		/// </summary>
		protected SqlParameter _SqlParameterView = new SqlParameter
			( string.Empty, DBNull.Value );
		#endregion Поля

		#region Методы
		#region Методы установки значения
		/// <summary>
		/// Установка неопределённого Sql-типа и неопределённого значения
		/// </summary>
		protected virtual void SetNullSqlType( )
		{
			// Неопределённый Sql-тип
			this._SqlType                    = null;
			// По умолчанию Sql-тип строковый
			this._SqlParameterView.SqlDbType = SqlDbType.NVarChar;
			// Неопределённое значение
			this._SqlParameterView.Value     = DBNull.Value;
		} // SetNullSqlType

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
				// Если Sql-тип не определён
				if ( ! this._SqlType.HasValue )
				{
					// Установка неопределённого Sql-типа и неопределённого значения
					this.SetNullSqlType( );
					// Неудачный перевод из строки в заданный тип
					return OperationResult.FAILED;
				} // if

				// Замена пустой или состоящей из одних пробелов строки
				// неопределённостью для нестроковых типов
				if ( parValue.Trim( ) == string.Empty )
				{
					if ( this._SqlType.Value == SqlDbType.NVarChar )
						this._SqlParameterView.Value = string.Empty;
					else
						this._SqlParameterView.Value = DBNull.Value;

					// Успешный перевод из строки в заданный тип
					return OperationResult.SUCCESSFUL;
				} // if

				// Sql-тип
				switch ( this._SqlType )
				{
					// Целое число
					case SqlDbType.Int :
						this._SqlParameterView.Value = Convert.ToInt32  ( parValue );
						break;

					// Среднее целое число
					case SqlDbType.SmallInt :
						this._SqlParameterView.Value = Convert.ToInt16  ( parValue );
						break;

					// Малое целое число
					case SqlDbType.TinyInt :
						this._SqlParameterView.Value = Convert.ToByte   ( parValue );
						break;

					// Десятичная дробь с фиксированной точкой
					case SqlDbType.Decimal :
						this._SqlParameterView.Value = Convert.ToDecimal( parValue );
						break;

					// Малая денежная величина
					case SqlDbType.SmallMoney :
						this._SqlParameterView.Value = Convert.ToDecimal( parValue );
						break;

					// Десятичная дробь с плавающей точкой
					case SqlDbType.Float :
						this._SqlParameterView.Value = Convert.ToSingle ( parValue );
						break;

					// Строка
					case SqlDbType.NVarChar :
						this._SqlParameterView.Value = parValue;
						break;

					default :
						// Установка неопределённого Sql-типа и неопределённого значения
						this.SetNullSqlType( );
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
				// Неудачный перевод из строки в заданный тип
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
		public virtual OperationResult InitializeInt
		(
			ParameterDirection parDirection,
			bool               parIsNullable,
			string             parValue
		)
		{
			try
			{
				this._SqlType                     = SqlDbType.Int;
				this._SqlParameterView.SqlDbType  = SqlDbType.Int;
				this._SqlParameterView.Direction  = parDirection;
				this._SqlParameterView.IsNullable = parIsNullable;
				this.SetValue( parValue );

				// Успешная инициализация параметра
				return OperationResult.SUCCESSFUL;
			} // try

			catch
			{
				// Установка неопределённого Sql-типа и неопределённого значения
				this.SetNullSqlType( );
				// Неуспешная инициализация параметра
				return OperationResult.FAILED;
			} // catch
		} // InitializeInt

		/// <summary>
		/// Инициализация параметра типа smallint
		/// </summary>
		/// <param name="parDirection">Направление</param>
		/// <param name="parIsNullable">
		/// Допустимость неопределённого значения</param>
		/// <param name="parValue">Значение</param>
		/// <returns>Отчёт операции с результатами SUCCESSFUL, FAILED</returns>
		public virtual OperationResult InitializeSmallint
		(
			ParameterDirection parDirection,
			bool               parIsNullable,
			string             parValue
		)
		{
			try
			{
				this._SqlType                     = SqlDbType.SmallInt;
				this._SqlParameterView.SqlDbType  = SqlDbType.SmallInt;
				this._SqlParameterView.Direction  = parDirection;
				this._SqlParameterView.IsNullable = parIsNullable;
				this.SetValue( parValue );

				// Успешная инициализация параметра
				return OperationResult.SUCCESSFUL;
			} // try

			catch
			{
				// Установка неопределённого Sql-типа и неопределённого значения
				this.SetNullSqlType( );
				// Неуспешная инициализация параметра
				return OperationResult.FAILED;
			} // catch
		} // InitializeSmallint

		/// <summary>
		/// Инициализация параметра типа tinyint
		/// </summary>
		/// <param name="parDirection">Направление</param>
		/// <param name="parIsNullable">
		/// Допустимость неопределённого значения</param>
		/// <param name="parValue">Значение</param>
		/// <returns>Отчёт операции с результатами SUCCESSFUL, FAILED</returns>
		public virtual OperationResult InitializeTinyint
		(
			ParameterDirection parDirection,
			bool               parIsNullable,
			string             parValue
		)
		{
			try
			{
				this._SqlType                     = SqlDbType.TinyInt;
				this._SqlParameterView.SqlDbType  = SqlDbType.TinyInt;
				this._SqlParameterView.Direction  = parDirection;
				this._SqlParameterView.IsNullable = parIsNullable;
				this.SetValue( parValue );

				// Успешная инициализация параметра
				return OperationResult.SUCCESSFUL;
			} // try

			catch
			{
				// Установка неопределённого Sql-типа и неопределённого значения
				this.SetNullSqlType( );
				// Неуспешная инициализация параметра
				return OperationResult.FAILED;
			} // catch
		} // InitializeTinyint

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
		public virtual OperationResult InitializeDecimal
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
				this._SqlType                     = SqlDbType.Decimal;
				this._SqlParameterView.SqlDbType  = SqlDbType.Decimal;
				this._SqlParameterView.Direction  = parDirection;
				this._SqlParameterView.IsNullable = parIsNullable;
				this._SqlParameterView.Precision  = parPrecision;
				this._SqlParameterView.Scale      = parScale;
				this.SetValue( parValue );

				// Успешная инициализация параметра
				return OperationResult.SUCCESSFUL;
			} // try

			catch
			{
				// Установка неопределённого Sql-типа и неопределённого значения
				this.SetNullSqlType( );
				// Неуспешная инициализация параметра
				return OperationResult.FAILED;
			} // catch
		} // InitializeDecimal

		/// <summary>
		/// Инициализация параметра типа smallmoney
		/// </summary>
		/// <param name="parDirection">Направление</param>
		/// <param name="parIsNullable">
		/// Допустимость неопределённого значения</param>
		/// <param name="parValue">Значение</param>
		/// <returns>Отчёт операции с результатами SUCCESSFUL, FAILED</returns>
		public virtual OperationResult InitializeSmallmoney
		(
			ParameterDirection parDirection,
			bool               parIsNullable,
			string             parValue
		)
		{
			try
			{
				this._SqlType                     = SqlDbType.SmallMoney;
				this._SqlParameterView.SqlDbType  = SqlDbType.SmallMoney;
				this._SqlParameterView.Direction  = parDirection;
				this._SqlParameterView.IsNullable = parIsNullable;
				this.SetValue( parValue );

				// Успешная инициализация параметра
				return OperationResult.SUCCESSFUL;
			} // try

			catch
			{
				// Установка неопределённого Sql-типа и неопределённого значения
				this.SetNullSqlType( );
				// Неуспешная инициализация параметра
				return OperationResult.FAILED;
			} // catch
		} // InitializeSmallmoney

		/// <summary>
		/// Инициализация параметра типа float
		/// </summary>
		/// <param name="parDirection">Направление</param>
		/// <param name="parIsNullable">
		/// Допустимость неопределённого значения</param>
		/// <param name="parValue">Значение</param>
		/// <returns>Отчёт операции с результатами SUCCESSFUL, FAILED</returns>
		public virtual OperationResult InitializeFloat
		(
			ParameterDirection parDirection,
			bool               parIsNullable,
			string             parValue
		)
		{
			try
			{
				this._SqlType                     = SqlDbType.Float;
				this._SqlParameterView.SqlDbType  = SqlDbType.Float;
				this._SqlParameterView.Direction  = parDirection;
				this._SqlParameterView.IsNullable = parIsNullable;
				this.SetValue( parValue );

				// Успешная инициализация параметра
				return OperationResult.SUCCESSFUL;
			} // try

			catch
			{
				// Установка неопределённого Sql-типа и неопределённого значения
				this.SetNullSqlType( );
				// Неуспешная инициализация параметра
				return OperationResult.FAILED;
			} // catch
		} // InitializeFloat

		/// <summary>
		/// Инициализация параметра типа nvarchar
		/// </summary>
		/// <param name="parDirection">Направление</param>
		/// <param name="parIsNullable">
		/// Допустимость неопределённого значения</param>
		/// <param name="parSize">Длина строки</param>
		/// <param name="parValue">Значение</param>
		/// <returns>Отчёт операции с результатами SUCCESSFUL, FAILED</returns>
		public virtual OperationResult InitializeNVarChar
		(
			ParameterDirection parDirection,
			bool               parIsNullable,
			int                parSize,
			string             parValue
		)
		{
			try
			{
				this._SqlType                     = SqlDbType.NVarChar;
				this._SqlParameterView.SqlDbType  = SqlDbType.NVarChar;
				this._SqlParameterView.Direction  = parDirection;
				this._SqlParameterView.IsNullable = parIsNullable;
				this._SqlParameterView.Size       = parSize;
				this.SetValue( parValue );

				// Успешная инициализация параметра
				return OperationResult.SUCCESSFUL;
			} // try

			catch
			{
				// Установка неопределённого Sql-типа и неопределённого значения
				this.SetNullSqlType( );
				// Неуспешная инициализация параметра
				return OperationResult.FAILED;
			} // catch
		} // InitializeNVarChar
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
		public virtual SqlDbType? SqlType
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
