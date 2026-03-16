using System;
using System.Collections.Generic;
using System.Text;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Значение ячейки строки таблицы
	/// </summary>
	public struct DataGridViewRowCellValue
	{
		#region Поля
		/// <summary>
		/// Индекс столбца
		/// </summary>
		public int    ColumnIndex;
		/// <summary>
		/// Значение ячейки
		/// </summary>
		public string CellValue;
		#endregion Поля

		/// <summary>
		/// Создание значения ячейки строки таблицы
		/// </summary>
		/// <param name="parColumnIndex">Индекс столбца</param>
		/// <param name="parCellValue">Значение ячейки</param>
		public DataGridViewRowCellValue
		(
			int    parColumnIndex,
			string parCellValue
		)
		{
			this.ColumnIndex = parColumnIndex;
			this.CellValue   = parCellValue;
		} // DataGridViewRowCellValue
	} // DataGridViewRowCellValue
} // CentralBusTerminalClient