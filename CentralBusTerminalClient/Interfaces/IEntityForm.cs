using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Forms;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Форма сущности
	/// </summary>
	public interface IEntityForm : IClearAble
	{
		#region Методы обработки данных
		/// <summary>
		/// Загрузка параметров хранимой процедуры
		/// </summary>
		/// <returns>Отчёт операции</returns>
		OperationReport LoadStoredProcedureParameters( );

		/// <summary>
		/// Вывод параметров хранимой процедуры
		/// </summary>
		void OutputStoredProcedureParameters( );

		/// <summary>
		/// Выделение неверного параметра
		/// </summary>
		/// <param name="parOperationReport">Отчёт операции</param>
		void MarkInvalidParameter( OperationReport parOperationReport );
		#endregion Методы обработки данных
	} // IEntityForm
} // CentralBusTerminalClient