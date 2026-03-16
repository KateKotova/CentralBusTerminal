namespace CentralBusTerminalClient
{
	/// <summary>
	/// Форма редактирования сущности
	/// </summary>
	partial class EditEntityForm
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
			} // if
			base.Dispose( disposing );
		} // Dispose

		#region Windows Form Designer generated code

		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent( )
		{
			this.components = new System.ComponentModel.Container( );
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager( typeof( EditEntityForm ) );
			this.buttonsTableLayoutPanel = new System.Windows.Forms.TableLayoutPanel( );
			this.executeButton = new System.Windows.Forms.Button( );
			this.imageList = new System.Windows.Forms.ImageList( this.components );
			this.closeButton = new System.Windows.Forms.Button( );
			this.centralBusTerminalDataSet = new CentralBusTerminalClient.CentralBusTerminalDataSet( );
			this.errorProvider = new System.Windows.Forms.ErrorProvider( this.components );
			this.buttonsTableLayoutPanel.SuspendLayout( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.centralBusTerminalDataSet ) ).BeginInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.errorProvider ) ).BeginInit( );
			this.SuspendLayout( );
			// 
			// buttonsTableLayoutPanel
			// 
			this.buttonsTableLayoutPanel.ColumnCount = 4;
			this.buttonsTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Absolute, 10F ) );
			this.buttonsTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Percent, 50F ) );
			this.buttonsTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Percent, 50F ) );
			this.buttonsTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Absolute, 10F ) );
			this.buttonsTableLayoutPanel.Controls.Add( this.executeButton, 1, 0 );
			this.buttonsTableLayoutPanel.Controls.Add( this.closeButton, 2, 0 );
			this.buttonsTableLayoutPanel.Dock = System.Windows.Forms.DockStyle.Bottom;
			this.buttonsTableLayoutPanel.Location = new System.Drawing.Point( 0, 230 );
			this.buttonsTableLayoutPanel.Margin = new System.Windows.Forms.Padding( 0 );
			this.buttonsTableLayoutPanel.MinimumSize = new System.Drawing.Size( 320, 0 );
			this.buttonsTableLayoutPanel.Name = "buttonsTableLayoutPanel";
			this.buttonsTableLayoutPanel.RowCount = 2;
			this.buttonsTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 35F ) );
			this.buttonsTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 10F ) );
			this.buttonsTableLayoutPanel.Size = new System.Drawing.Size( 355, 45 );
			this.buttonsTableLayoutPanel.TabIndex = 22;
			// 
			// executeButton
			// 
			this.executeButton.Cursor = System.Windows.Forms.Cursors.Hand;
			this.executeButton.Dock = System.Windows.Forms.DockStyle.Left;
			this.executeButton.Font = new System.Drawing.Font( "Tahoma", 8.25F, System.Drawing.FontStyle.Bold );
			this.executeButton.ImageIndex = 0;
			this.executeButton.ImageList = this.imageList;
			this.executeButton.Location = new System.Drawing.Point( 10, 0 );
			this.executeButton.Margin = new System.Windows.Forms.Padding( 0 );
			this.executeButton.Name = "executeButton";
			this.executeButton.Size = new System.Drawing.Size( 125, 35 );
			this.executeButton.TabIndex = 4;
			this.executeButton.Text = "Выполнить";
			this.executeButton.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
			this.executeButton.UseVisualStyleBackColor = true;
			this.executeButton.Click += new System.EventHandler( this.OnExecuteButtonClick );
			// 
			// imageList
			// 
			this.imageList.ImageStream = ( ( System.Windows.Forms.ImageListStreamer ) ( resources.GetObject( "imageList.ImageStream" ) ) );
			this.imageList.TransparentColor = System.Drawing.Color.Transparent;
			this.imageList.Images.SetKeyName( 0, "closeIcon" );
			this.imageList.Images.SetKeyName( 1, "insertIcon" );
			this.imageList.Images.SetKeyName( 2, "updateIcon" );
			this.imageList.Images.SetKeyName( 3, "deleteIcon" );
			// 
			// closeButton
			// 
			this.closeButton.Cursor = System.Windows.Forms.Cursors.Hand;
			this.closeButton.DialogResult = System.Windows.Forms.DialogResult.Cancel;
			this.closeButton.Dock = System.Windows.Forms.DockStyle.Right;
			this.closeButton.Font = new System.Drawing.Font( "Tahoma", 8.25F, System.Drawing.FontStyle.Bold );
			this.closeButton.ImageIndex = 0;
			this.closeButton.ImageList = this.imageList;
			this.closeButton.Location = new System.Drawing.Point( 219, 0 );
			this.closeButton.Margin = new System.Windows.Forms.Padding( 0 );
			this.closeButton.Name = "closeButton";
			this.closeButton.Size = new System.Drawing.Size( 125, 35 );
			this.closeButton.TabIndex = 5;
			this.closeButton.Text = "Закрыть";
			this.closeButton.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
			this.closeButton.UseVisualStyleBackColor = true;
			// 
			// centralBusTerminalDataSet
			// 
			this.centralBusTerminalDataSet.DataSetName = "CentralBusTerminalDataSet";
			this.centralBusTerminalDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
			// 
			// errorProvider
			// 
			this.errorProvider.ContainerControl = this;
			this.errorProvider.Icon = ( ( System.Drawing.Icon ) ( resources.GetObject( "errorProvider.Icon" ) ) );
			// 
			// EditEntityForm
			// 
			this.AcceptButton = this.executeButton;
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
			this.CancelButton = this.closeButton;
			this.ClientSize = new System.Drawing.Size( 355, 275 );
			this.Controls.Add( this.buttonsTableLayoutPanel );
			this.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.Icon = ( ( System.Drawing.Icon ) ( resources.GetObject( "$this.Icon" ) ) );
			this.Name = "EditEntityForm";
			this.Opacity = 0.9;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "EditEntityForm";
			this.FormClosing += new System.Windows.Forms.FormClosingEventHandler( this.OnEditEntityFormFormClosing );
			this.Load += new System.EventHandler( this.OnEditEntityFormLoad );
			this.buttonsTableLayoutPanel.ResumeLayout( false );
			( ( System.ComponentModel.ISupportInitialize ) ( this.centralBusTerminalDataSet ) ).EndInit( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.errorProvider ) ).EndInit( );
			this.ResumeLayout( false );

		} // InitializeComponent

		#endregion

		/// <summary>
		/// Панель выравнивания кнопок
		/// </summary>
		protected System.Windows.Forms.TableLayoutPanel buttonsTableLayoutPanel;
		/// <summary>
		/// Множество данных центрального автовокзала
		/// </summary>
		protected CentralBusTerminalDataSet centralBusTerminalDataSet;
		/// <summary>
		/// Индикатор ошибки
		/// </summary>
		protected System.Windows.Forms.ErrorProvider errorProvider;
		/// <summary>
		/// Список изображений для кнопок
		/// </summary>
		protected System.Windows.Forms.ImageList imageList;
		/// <summary>
		/// Кнопка запуска выполнения операции редактирования сущности
		/// </summary>
		protected System.Windows.Forms.Button executeButton;
		/// <summary>
		/// Кнопка закрытия формы
		/// </summary>
		protected System.Windows.Forms.Button closeButton;

	} // EditEntityForm
} // CentralBusTerminalClient