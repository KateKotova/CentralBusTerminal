using System;
using System.Collections.Generic;
using System.Text;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Форма редактирования сущности
	/// </summary>
	public interface IEditEntityForm : IEntityForm
	{
		/// <summary>
		/// Инициализация формы редактирования сущности
		/// </summary>
		/// <param name="parAction">Действие хранимой процедуры</param>
		void Initialize( StoredProcedureAction parAction );

		/// <summary>
		/// Выполнение хранимой процедуры редактирования сущности
		/// </summary>
		/// <param name="sender">Источник</param>
		/// <param name="e">Аргументы</param>
		void OnExecuteButtonClick
		(
			object    sender,
			EventArgs e
		); // OnExecuteButtonClick
	} // IEditEntityForm
} // CentralBusTerminalClient