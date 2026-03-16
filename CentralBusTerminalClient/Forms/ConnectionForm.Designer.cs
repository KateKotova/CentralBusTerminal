namespace CentralBusTerminalClient
{
	/// <summary>
	/// Форма подключения
	/// </summary>
	public partial class ConnectionForm
	{
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.IContainer components = null;

		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
		protected override void Dispose(bool disposing)
		{
			if (disposing && (components != null))
			{
				components.Dispose();
			}
			base.Dispose(disposing);
		} // Dispose

		#region Windows Form Designer generated code
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			this.components = new System.ComponentModel.Container( );
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager( typeof( ConnectionForm ) );
			this.errorProvider = new System.Windows.Forms.ErrorProvider( this.components );
			this.formTableLayoutPanel = new System.Windows.Forms.TableLayoutPanel( );
			this.serverLabel = new System.Windows.Forms.Label( );
			this.databaseLabel = new System.Windows.Forms.Label( );
			this.userNameLabel = new System.Windows.Forms.Label( );
			this.passwordLabel = new System.Windows.Forms.Label( );
			this.serverTextBox = new System.Windows.Forms.TextBox( );
			this.databaseTextBox = new System.Windows.Forms.TextBox( );
			this.userNameTextBox = new System.Windows.Forms.TextBox( );
			this.passwordTextBox = new System.Windows.Forms.TextBox( );
			this.buttonsLayoutPanel = new System.Windows.Forms.TableLayoutPanel( );
			this.connectButton = new System.Windows.Forms.Button( );
			this.cancelButton = new System.Windows.Forms.Button( );
			( ( System.ComponentModel.ISupportInitialize ) ( this.errorProvider ) ).BeginInit( );
			this.formTableLayoutPanel.SuspendLayout( );
			this.buttonsLayoutPanel.SuspendLayout( );
			this.SuspendLayout( );
			// 
			// errorProvider
			// 
			this.errorProvider.ContainerControl = this;
			this.errorProvider.Icon = ( ( System.Drawing.Icon ) ( resources.GetObject( "errorProvider.Icon" ) ) );
			// 
			// formTableLayoutPanel
			// 
			this.formTableLayoutPanel.ColumnCount = 3;
			this.formTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Absolute, 10F ) );
			this.formTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Percent, 100F ) );
			this.formTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Absolute, 25F ) );
			this.formTableLayoutPanel.Controls.Add( this.serverLabel, 1, 1 );
			this.formTableLayoutPanel.Controls.Add( this.databaseLabel, 1, 3 );
			this.formTableLayoutPanel.Controls.Add( this.userNameLabel, 1, 5 );
			this.formTableLayoutPanel.Controls.Add( this.passwordLabel, 1, 7 );
			this.formTableLayoutPanel.Controls.Add( this.serverTextBox, 1, 2 );
			this.formTableLayoutPanel.Controls.Add( this.databaseTextBox, 1, 4 );
			this.formTableLayoutPanel.Controls.Add( this.userNameTextBox, 1, 6 );
			this.formTableLayoutPanel.Controls.Add( this.passwordTextBox, 1, 8 );
			this.formTableLayoutPanel.Controls.Add( this.buttonsLayoutPanel, 1, 9 );
			this.formTableLayoutPanel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.formTableLayoutPanel.Location = new System.Drawing.Point( 0, 0 );
			this.formTableLayoutPanel.Margin = new System.Windows.Forms.Padding( 0 );
			this.formTableLayoutPanel.Name = "formTableLayoutPanel";
			this.formTableLayoutPanel.RowCount = 11;
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 10F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 35F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 24F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 35F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 24F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 35F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 24F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 35F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 24F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Percent, 100F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 10F ) );
			this.formTableLayoutPanel.Size = new System.Drawing.Size( 375, 321 );
			this.formTableLayoutPanel.TabIndex = 22;
			// 
			// serverLabel
			// 
			this.serverLabel.AutoSize = true;
			this.serverLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.serverLabel.Location = new System.Drawing.Point( 15, 15 );
			this.serverLabel.Margin = new System.Windows.Forms.Padding( 5 );
			this.serverLabel.Name = "serverLabel";
			this.serverLabel.Size = new System.Drawing.Size( 330, 25 );
			this.serverLabel.TabIndex = 22;
			this.serverLabel.Text = "Имя сервера";
			this.serverLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// databaseLabel
			// 
			this.databaseLabel.AutoSize = true;
			this.databaseLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.databaseLabel.Location = new System.Drawing.Point( 15, 74 );
			this.databaseLabel.Margin = new System.Windows.Forms.Padding( 5 );
			this.databaseLabel.Name = "databaseLabel";
			this.databaseLabel.Size = new System.Drawing.Size( 330, 25 );
			this.databaseLabel.TabIndex = 22;
			this.databaseLabel.Text = "Имя базы данных";
			this.databaseLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// userNameLabel
			// 
			this.userNameLabel.AutoSize = true;
			this.userNameLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.userNameLabel.Location = new System.Drawing.Point( 15, 133 );
			this.userNameLabel.Margin = new System.Windows.Forms.Padding( 5 );
			this.userNameLabel.Name = "userNameLabel";
			this.userNameLabel.Size = new System.Drawing.Size( 330, 25 );
			this.userNameLabel.TabIndex = 22;
			this.userNameLabel.Text = "Имя пользователя";
			this.userNameLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// passwordLabel
			// 
			this.passwordLabel.AutoSize = true;
			this.passwordLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.passwordLabel.Location = new System.Drawing.Point( 15, 192 );
			this.passwordLabel.Margin = new System.Windows.Forms.Padding( 5 );
			this.passwordLabel.Name = "passwordLabel";
			this.passwordLabel.Size = new System.Drawing.Size( 330, 25 );
			this.passwordLabel.TabIndex = 22;
			this.passwordLabel.Text = "Пароль";
			this.passwordLabel.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
			// 
			// serverTextBox
			// 
			this.serverTextBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.serverTextBox.Location = new System.Drawing.Point( 10, 45 );
			this.serverTextBox.Margin = new System.Windows.Forms.Padding( 0 );
			this.serverTextBox.Name = "serverTextBox";
			this.serverTextBox.Size = new System.Drawing.Size( 340, 24 );
			this.serverTextBox.TabIndex = 0;
			this.serverTextBox.Text = "ACER\\SQL";
			this.serverTextBox.WordWrap = false;
			// 
			// databaseTextBox
			// 
			this.databaseTextBox.BackColor = System.Drawing.SystemColors.Window;
			this.databaseTextBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.databaseTextBox.Location = new System.Drawing.Point( 10, 104 );
			this.databaseTextBox.Margin = new System.Windows.Forms.Padding( 0 );
			this.databaseTextBox.Name = "databaseTextBox";
			this.databaseTextBox.Size = new System.Drawing.Size( 340, 24 );
			this.databaseTextBox.TabIndex = 1;
			this.databaseTextBox.Text = "CentralBusTerminal";
			this.databaseTextBox.WordWrap = false;
			// 
			// userNameTextBox
			// 
			this.userNameTextBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.userNameTextBox.Location = new System.Drawing.Point( 10, 163 );
			this.userNameTextBox.Margin = new System.Windows.Forms.Padding( 0 );
			this.userNameTextBox.Name = "userNameTextBox";
			this.userNameTextBox.Size = new System.Drawing.Size( 340, 24 );
			this.userNameTextBox.TabIndex = 2;
			this.userNameTextBox.WordWrap = false;
			// 
			// passwordTextBox
			// 
			this.passwordTextBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.passwordTextBox.Location = new System.Drawing.Point( 10, 222 );
			this.passwordTextBox.Margin = new System.Windows.Forms.Padding( 0 );
			this.passwordTextBox.Name = "passwordTextBox";
			this.passwordTextBox.PasswordChar = '*';
			this.passwordTextBox.Size = new System.Drawing.Size( 340, 24 );
			this.passwordTextBox.TabIndex = 3;
			this.passwordTextBox.WordWrap = false;
			// 
			// buttonsLayoutPanel
			// 
			this.buttonsLayoutPanel.ColumnCount = 2;
			this.buttonsLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Percent, 50F ) );
			this.buttonsLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Percent, 50F ) );
			this.buttonsLayoutPanel.Controls.Add( this.connectButton, 0, 1 );
			this.buttonsLayoutPanel.Controls.Add( this.cancelButton, 1, 1 );
			this.buttonsLayoutPanel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.buttonsLayoutPanel.Location = new System.Drawing.Point( 10, 246 );
			this.buttonsLayoutPanel.Margin = new System.Windows.Forms.Padding( 0 );
			this.buttonsLayoutPanel.MinimumSize = new System.Drawing.Size( 320, 0 );
			this.buttonsLayoutPanel.Name = "buttonsLayoutPanel";
			this.buttonsLayoutPanel.RowCount = 2;
			this.buttonsLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Percent, 100F ) );
			this.buttonsLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 35F ) );
			this.buttonsLayoutPanel.Size = new System.Drawing.Size( 340, 65 );
			this.buttonsLayoutPanel.TabIndex = 22;
			// 
			// connectButton
			// 
			this.connectButton.Cursor = System.Windows.Forms.Cursors.Hand;
			this.connectButton.DialogResult = System.Windows.Forms.DialogResult.OK;
			this.connectButton.Dock = System.Windows.Forms.DockStyle.Left;
			this.connectButton.Font = new System.Drawing.Font( "Tahoma", 8.25F, System.Drawing.FontStyle.Bold );
			this.connectButton.Image = global::CentralBusTerminalClient.Properties.Resources.Connect;
			this.connectButton.Location = new System.Drawing.Point( 0, 30 );
			this.connectButton.Margin = new System.Windows.Forms.Padding( 0 );
			this.connectButton.Name = "connectButton";
			this.connectButton.Size = new System.Drawing.Size( 135, 35 );
			this.connectButton.TabIndex = 4;
			this.connectButton.Text = "Подключить";
			this.connectButton.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
			this.connectButton.UseVisualStyleBackColor = true;
			this.connectButton.Click += new System.EventHandler( this.OnConnectButtonClick );
			// 
			// cancelButton
			// 
			this.cancelButton.Cursor = System.Windows.Forms.Cursors.Hand;
			this.cancelButton.DialogResult = System.Windows.Forms.DialogResult.Cancel;
			this.cancelButton.Dock = System.Windows.Forms.DockStyle.Right;
			this.cancelButton.Font = new System.Drawing.Font( "Tahoma", 8.25F, System.Drawing.FontStyle.Bold );
			this.cancelButton.Image = global::CentralBusTerminalClient.Properties.Resources.Close;
			this.cancelButton.Location = new System.Drawing.Point( 205, 30 );
			this.cancelButton.Margin = new System.Windows.Forms.Padding( 0 );
			this.cancelButton.Name = "cancelButton";
			this.cancelButton.Size = new System.Drawing.Size( 135, 35 );
			this.cancelButton.TabIndex = 5;
			this.cancelButton.Text = "Отменить";
			this.cancelButton.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
			this.cancelButton.UseVisualStyleBackColor = true;
			// 
			// ConnectionForm
			// 
			this.AcceptButton = this.connectButton;
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
			this.CancelButton = this.cancelButton;
			this.ClientSize = new System.Drawing.Size( 375, 321 );
			this.Controls.Add( this.formTableLayoutPanel );
			this.Font = new System.Drawing.Font( "Tahoma", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ( ( byte ) ( 204 ) ) );
			this.Icon = ( ( System.Drawing.Icon ) ( resources.GetObject( "$this.Icon" ) ) );
			this.MinimumSize = new System.Drawing.Size( 320, 305 );
			this.Name = "ConnectionForm";
			this.Opacity = 0.96;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Подключение";
			this.FormClosing += new System.Windows.Forms.FormClosingEventHandler( this.OnConnectionFormFormClosing );
			this.Load += new System.EventHandler( this.OnConnectionFormLoad );
			( ( System.ComponentModel.ISupportInitialize ) ( this.errorProvider ) ).EndInit( );
			this.formTableLayoutPanel.ResumeLayout( false );
			this.formTableLayoutPanel.PerformLayout( );
			this.buttonsLayoutPanel.ResumeLayout( false );
			this.ResumeLayout( false );

		} // InitializeComponent
		#endregion Windows Form Designer generated code

		protected System.Windows.Forms.TableLayoutPanel formTableLayoutPanel;
		protected System.Windows.Forms.Label serverLabel;
		protected System.Windows.Forms.Label databaseLabel;
		protected System.Windows.Forms.TextBox serverTextBox;
		protected System.Windows.Forms.Label userNameLabel;
		protected System.Windows.Forms.Label passwordLabel;
		protected System.Windows.Forms.TextBox databaseTextBox;
		protected System.Windows.Forms.TextBox userNameTextBox;
		protected System.Windows.Forms.TextBox passwordTextBox;
		protected System.Windows.Forms.TableLayoutPanel buttonsLayoutPanel;
		protected System.Windows.Forms.Button connectButton;
		protected System.Windows.Forms.Button cancelButton;
		protected System.Windows.Forms.ErrorProvider errorProvider;
	} // ConnectionForm
} // CentralBusTerminalClient