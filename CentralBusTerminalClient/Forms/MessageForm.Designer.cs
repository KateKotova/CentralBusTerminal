namespace CentralBusTerminalClient
{
	/// <summary>
	/// Форма сообщений
	/// </summary>
	partial class MessageForm
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
		protected void InitializeComponent( )
		{
			this.components = new System.ComponentModel.Container( );
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager( typeof( MessageForm ) );
			this.formTableLayoutPanel = new System.Windows.Forms.TableLayoutPanel( );
			this.buttonsTableLayoutPanel = new System.Windows.Forms.TableLayoutPanel( );
			this.closeButton = new System.Windows.Forms.Button( );
			this.imageList = new System.Windows.Forms.ImageList( this.components );
			this.detailsButton = new System.Windows.Forms.Button( );
			this.detailsMessageRichTextBox = new System.Windows.Forms.RichTextBox( );
			this.shortMessageLabel = new System.Windows.Forms.Label( );
			this.formTableLayoutPanel.SuspendLayout( );
			this.buttonsTableLayoutPanel.SuspendLayout( );
			this.SuspendLayout( );
			// 
			// formTableLayoutPanel
			// 
			this.formTableLayoutPanel.ColumnCount = 3;
			this.formTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Absolute, 10F ) );
			this.formTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Percent, 100F ) );
			this.formTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Absolute, 10F ) );
			this.formTableLayoutPanel.Controls.Add( this.buttonsTableLayoutPanel, 1, 5 );
			this.formTableLayoutPanel.Controls.Add( this.detailsMessageRichTextBox, 1, 3 );
			this.formTableLayoutPanel.Controls.Add( this.shortMessageLabel, 1, 1 );
			this.formTableLayoutPanel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.formTableLayoutPanel.Location = new System.Drawing.Point( 0, 0 );
			this.formTableLayoutPanel.Margin = new System.Windows.Forms.Padding( 0 );
			this.formTableLayoutPanel.Name = "formTableLayoutPanel";
			this.formTableLayoutPanel.RowCount = 7;
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 10F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Percent, 100F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 10F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 150F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 10F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 35F ) );
			this.formTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 10F ) );
			this.formTableLayoutPanel.Size = new System.Drawing.Size( 340, 295 );
			this.formTableLayoutPanel.TabIndex = 22;
			this.formTableLayoutPanel.Paint += new System.Windows.Forms.PaintEventHandler( this.formTableLayoutPanel_Paint );
			// 
			// buttonsTableLayoutPanel
			// 
			this.buttonsTableLayoutPanel.ColumnCount = 2;
			this.buttonsTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Percent, 50F ) );
			this.buttonsTableLayoutPanel.ColumnStyles.Add( new System.Windows.Forms.ColumnStyle( System.Windows.Forms.SizeType.Percent, 50F ) );
			this.buttonsTableLayoutPanel.Controls.Add( this.closeButton, 1, 0 );
			this.buttonsTableLayoutPanel.Controls.Add( this.detailsButton, 0, 0 );
			this.buttonsTableLayoutPanel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.buttonsTableLayoutPanel.Location = new System.Drawing.Point( 10, 250 );
			this.buttonsTableLayoutPanel.Margin = new System.Windows.Forms.Padding( 0 );
			this.buttonsTableLayoutPanel.MinimumSize = new System.Drawing.Size( 320, 0 );
			this.buttonsTableLayoutPanel.Name = "buttonsTableLayoutPanel";
			this.buttonsTableLayoutPanel.RowCount = 1;
			this.buttonsTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Percent, 100F ) );
			this.buttonsTableLayoutPanel.RowStyles.Add( new System.Windows.Forms.RowStyle( System.Windows.Forms.SizeType.Absolute, 35F ) );
			this.buttonsTableLayoutPanel.Size = new System.Drawing.Size( 320, 35 );
			this.buttonsTableLayoutPanel.TabIndex = 22;
			// 
			// closeButton
			// 
			this.closeButton.Anchor = ( ( System.Windows.Forms.AnchorStyles ) ( ( ( System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom )
									| System.Windows.Forms.AnchorStyles.Right ) ) );
			this.closeButton.Cursor = System.Windows.Forms.Cursors.Hand;
			this.closeButton.DialogResult = System.Windows.Forms.DialogResult.OK;
			this.closeButton.Font = new System.Drawing.Font( "Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold );
			this.closeButton.ImageIndex = 1;
			this.closeButton.ImageList = this.imageList;
			this.closeButton.ImeMode = System.Windows.Forms.ImeMode.NoControl;
			this.closeButton.Location = new System.Drawing.Point( 195, 0 );
			this.closeButton.Margin = new System.Windows.Forms.Padding( 0 );
			this.closeButton.Name = "closeButton";
			this.closeButton.Size = new System.Drawing.Size( 125, 35 );
			this.closeButton.TabIndex = 2;
			this.closeButton.Text = "Закрыть";
			this.closeButton.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
			this.closeButton.UseVisualStyleBackColor = true;
			// 
			// imageList
			// 
			this.imageList.ImageStream = ( ( System.Windows.Forms.ImageListStreamer ) ( resources.GetObject( "imageList.ImageStream" ) ) );
			this.imageList.TransparentColor = System.Drawing.Color.Transparent;
			this.imageList.Images.SetKeyName( 0, "detailsIcon" );
			this.imageList.Images.SetKeyName( 1, "closeIcon" );
			// 
			// detailsButton
			// 
			this.detailsButton.Anchor = ( ( System.Windows.Forms.AnchorStyles ) ( ( ( System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom )
									| System.Windows.Forms.AnchorStyles.Left ) ) );
			this.detailsButton.Cursor = System.Windows.Forms.Cursors.Hand;
			this.detailsButton.Font = new System.Drawing.Font( "Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold );
			this.detailsButton.ImageIndex = 0;
			this.detailsButton.ImageList = this.imageList;
			this.detailsButton.Location = new System.Drawing.Point( 0, 0 );
			this.detailsButton.Margin = new System.Windows.Forms.Padding( 0 );
			this.detailsButton.Name = "detailsButton";
			this.detailsButton.Size = new System.Drawing.Size( 125, 35 );
			this.detailsButton.TabIndex = 1;
			this.detailsButton.Text = "Детали";
			this.detailsButton.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
			this.detailsButton.UseVisualStyleBackColor = true;
			this.detailsButton.Click += new System.EventHandler( this.OnDetailsButtonClick );
			// 
			// detailsMessageRichTextBox
			// 
			this.detailsMessageRichTextBox.Dock = System.Windows.Forms.DockStyle.Fill;
			this.detailsMessageRichTextBox.Location = new System.Drawing.Point( 10, 90 );
			this.detailsMessageRichTextBox.Margin = new System.Windows.Forms.Padding( 0 );
			this.detailsMessageRichTextBox.Name = "detailsMessageRichTextBox";
			this.detailsMessageRichTextBox.Size = new System.Drawing.Size( 320, 150 );
			this.detailsMessageRichTextBox.TabIndex = 0;
			this.detailsMessageRichTextBox.Text = "";
			// 
			// shortMessageLabel
			// 
			this.shortMessageLabel.AutoSize = true;
			this.shortMessageLabel.Dock = System.Windows.Forms.DockStyle.Fill;
			this.shortMessageLabel.Location = new System.Drawing.Point( 10, 10 );
			this.shortMessageLabel.Margin = new System.Windows.Forms.Padding( 0 );
			this.shortMessageLabel.Name = "shortMessageLabel";
			this.shortMessageLabel.Size = new System.Drawing.Size( 320, 70 );
			this.shortMessageLabel.TabIndex = 22;
			// 
			// MessageForm
			// 
			this.AcceptButton = this.detailsButton;
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
			this.CancelButton = this.closeButton;
			this.ClientSize = new System.Drawing.Size( 340, 295 );
			this.Controls.Add( this.formTableLayoutPanel );
			this.Font = new System.Drawing.Font( "Tahoma", 8.25F );
			this.Icon = ( ( System.Drawing.Icon ) ( resources.GetObject( "$this.Icon" ) ) );
			this.Margin = new System.Windows.Forms.Padding( 4 );
			this.MaximizeBox = false;
			this.MinimumSize = new System.Drawing.Size( 320, 39 );
			this.Name = "MessageForm";
			this.Opacity = 0.9;
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Ошибка!";
			this.Load += new System.EventHandler( this.OnMessageFormLoad );
			this.formTableLayoutPanel.ResumeLayout( false );
			this.formTableLayoutPanel.PerformLayout( );
			this.buttonsTableLayoutPanel.ResumeLayout( false );
			this.ResumeLayout( false );

		} // InitializeComponent

		#endregion

		/// <summary>
		/// Панель выравнивания элементов формы
		/// </summary>
		protected System.Windows.Forms.TableLayoutPanel formTableLayoutPanel;
		/// <summary>
		/// Панель выравнивания кнопок
		/// </summary>
		protected System.Windows.Forms.TableLayoutPanel buttonsTableLayoutPanel;
		/// <summary>
		/// Метка краткого сообщения
		/// </summary>
		protected System.Windows.Forms.Label shortMessageLabel;
		/// <summary>
		/// Текстовая коробочка детализированного сообщения
		/// </summary>
		protected System.Windows.Forms.RichTextBox detailsMessageRichTextBox;
		/// <summary>
		/// Список изображений для кнопок
		/// </summary>
		protected System.Windows.Forms.ImageList imageList;
		/// <summary>
		/// Кнопка отображения детализированного сообещния
		/// </summary>
		protected System.Windows.Forms.Button detailsButton;
		/// <summary>
		/// Кнопка закрытия формы
		/// </summary>
		protected System.Windows.Forms.Button closeButton;

	} // MessageForm
} // CentralBusTerminalClient