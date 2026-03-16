using System;
using System.Collections.Generic;
using System.Text;

namespace CentralBusTerminalClient
{
	/// <summary>
	/// Уровень безопасности подключения
	/// </summary>
	public enum ConnectionSecurityLevel
	{
		/// <summary>
		/// Неизвестный
		/// </summary>
		UNKNOWN = -1,
		/// <summary>
		/// Система Windows
		/// </summary>
		WINDOWS = 0,
		/// <summary>
		/// База данных
		/// </summary>
		DATABASE
	} // ConnectionSecurityLevel
} // CentralBusTerminalClient