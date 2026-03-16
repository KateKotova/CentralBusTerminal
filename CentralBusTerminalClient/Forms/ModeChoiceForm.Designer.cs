namespace CentralBusTerminalClient
{
	partial class ModeChoiceForm
	{
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.IContainer components = null;

		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
		protected override void Dispose( bool disposing )
		{
			if ( disposing && ( components != null ) )
			{
				components.Dispose( );
			}
			base.Dispose( disposing );
		}

		#region Windows Form Designer generated code

		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent( )
		{
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager( typeof( ModeChoiceForm ) );
			this.showTablesButton = new System.Windows.Forms.Button( );
			this.findStopsButton = new System.Windows.Forms.Button( );
			this.findPathStopsButton = new System.Windows.Forms.Button( );
			this.SuspendLayout( );
			// 
			// showTablesButton
			// 
			this.showTablesButton.Cursor = System.Windows.Forms.Cursors.Hand;
			this.showTablesButton.Font = new System.Drawing.Font( "Tahoma", 8.25F, System.Drawing.FontStyle.Bold );
			this.showTablesButton.ImageIndex = 0;
			this.showTablesButton.Location = new System.Drawing.Point( 19, 26 );
			this.showTablesButton.Margin = new System.Windows.Forms.Padding( 0 );
			this.showTablesButton.Name = "showTablesButton";
			this.showTablesButton.Size = new System.Drawing.Size( 222, 35 );
			this.showTablesButton.TabIndex = 5;
			this.showTablesButton.Text = "Показать таблицы";
			this.showTablesButton.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
			this.showTablesButton.UseVisualStyleBackColor = true;
			this.showTablesButton.Click += new System.EventHandler( this.OnShowTablesButtonClick );
			// 
			// findStopsButton
			// 
			this.findStopsButton.Cursor = System.Windows.Forms.Cursors.Hand;
			this.findStopsButton.Font = new System.Drawing.Font( "Tahoma", 8.25F, System.Drawing.FontStyle.Bold );
			this.findStopsButton.ImageIndex = 0;
			this.findStopsButton.Location = new System.Drawing.Point( 19, 93 );
			this.findStopsButton.Margin = new System.Windows.Forms.Padding( 0 );
			this.findStopsButton.Name = "findStopsButton";
			this.findStopsButton.Size = new System.Drawing.Size( 222, 35 );
			this.findStopsButton.TabIndex = 6;
			this.findStopsButton.Text = "Найти остновки";
			this.findStopsButton.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
			this.findStopsButton.UseVisualStyleBackColor = true;
			this.findStopsButton.Click += new System.EventHandler( this.OnFindStopsButtonClick );
			// 
			// findPathStopsButton
			// 
			this.findPathStopsButton.Cursor = System.Windows.Forms.Cursors.Hand;
			this.findPathStopsButton.Font = new System.Drawing.Font( "Tahoma", 8.25F, System.Drawing.FontStyle.Bold );
			this.findPathStopsButton.ImageIndex = 0;
			this.findPathStopsButton.Location = new System.Drawing.Point( 19, 160 );
			this.findPathStopsButton.Margin = new System.Windows.Forms.Padding( 0 );
			this.findPathStopsButton.Name = "findPathStopsButton";
			this.findPathStopsButton.Size = new System.Drawing.Size( 222, 35 );
			this.findPathStopsButton.TabIndex = 7;
			this.findPathStopsButton.Text = "Найти остановки маршрута";
			this.findPathStopsButton.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
			this.findPathStopsButton.UseVisualStyleBackColor = true;
			this.findPathStopsButton.Click += new System.EventHandler( this.OnFindPathStopsButtonClick );
			// 
			// ModeChoiceForm
			// 
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
			this.ClientSize = new System.Drawing.Size( 271, 230 );
			this.Controls.Add( this.findPathStopsButton );
			this.Controls.Add( this.findStopsButton );
			this.Controls.Add( this.showTablesButton );
			this.Icon = ( ( System.Drawing.Icon ) ( resources.GetObject( "$this.Icon" ) ) );
			this.Name = "ModeChoiceForm";
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Выбор режима";
			this.ResumeLayout( false );

		}

		#endregion

		protected System.Windows.Forms.Button showTablesButton;
		protected System.Windows.Forms.Button findStopsButton;
		protected System.Windows.Forms.Button findPathStopsButton;

	}
}

