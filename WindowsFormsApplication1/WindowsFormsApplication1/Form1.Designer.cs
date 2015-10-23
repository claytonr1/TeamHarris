namespace WindowsFormsApplication1
{
    partial class Form1
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
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.LabBed = new System.Windows.Forms.Label();
            this.LabRoom = new System.Windows.Forms.Label();
            this.LabAmen = new System.Windows.Forms.Label();
            this.LabCheckOut = new System.Windows.Forms.Label();
            this.CheckDiscount = new System.Windows.Forms.CheckedListBox();
            this.ComboBed = new System.Windows.Forms.ComboBox();
            this.ComboRoom = new System.Windows.Forms.ComboBox();
            this.ButCheckOut = new System.Windows.Forms.Button();
            this.BoxAmen = new System.Windows.Forms.ListBox();
            this.BoxCheckOut = new System.Windows.Forms.ListBox();
            this.monthCalendar1 = new System.Windows.Forms.MonthCalendar();
            this.LabDiscount = new System.Windows.Forms.Label();
            this.LabCal = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // LabBed
            // 
            this.LabBed.AutoSize = true;
            this.LabBed.BackColor = System.Drawing.Color.White;
            this.LabBed.Location = new System.Drawing.Point(50, 19);
            this.LabBed.Name = "LabBed";
            this.LabBed.Size = new System.Drawing.Size(48, 13);
            this.LabBed.TabIndex = 0;
            this.LabBed.Text = "bed type";
            // 
            // LabRoom
            // 
            this.LabRoom.AutoSize = true;
            this.LabRoom.Location = new System.Drawing.Point(50, 88);
            this.LabRoom.Name = "LabRoom";
            this.LabRoom.Size = new System.Drawing.Size(53, 13);
            this.LabRoom.TabIndex = 1;
            this.LabRoom.Text = "room type";
            // 
            // LabAmen
            // 
            this.LabAmen.AutoSize = true;
            this.LabAmen.Location = new System.Drawing.Point(293, 19);
            this.LabAmen.Name = "LabAmen";
            this.LabAmen.Size = new System.Drawing.Size(51, 13);
            this.LabAmen.TabIndex = 2;
            this.LabAmen.Text = "amenities";
            // 
            // LabCheckOut
            // 
            this.LabCheckOut.AutoSize = true;
            this.LabCheckOut.Location = new System.Drawing.Point(628, 19);
            this.LabCheckOut.Name = "LabCheckOut";
            this.LabCheckOut.Size = new System.Drawing.Size(68, 13);
            this.LabCheckOut.TabIndex = 3;
            this.LabCheckOut.Text = "your purchas";
            // 
            // CheckDiscount
            // 
            this.CheckDiscount.FormattingEnabled = true;
            this.CheckDiscount.Items.AddRange(new object[] {
            "AARP",
            "AAA",
            "Ruff Rewards"});
            this.CheckDiscount.Location = new System.Drawing.Point(12, 177);
            this.CheckDiscount.Name = "CheckDiscount";
            this.CheckDiscount.Size = new System.Drawing.Size(120, 94);
            this.CheckDiscount.TabIndex = 5;
            this.CheckDiscount.SelectedIndexChanged += new System.EventHandler(this.checkedListBox1_SelectedIndexChanged);
            // 
            // ComboBed
            // 
            this.ComboBed.FormattingEnabled = true;
            this.ComboBed.Items.AddRange(new object[] {
            "king",
            "queen",
            "double"});
            this.ComboBed.Location = new System.Drawing.Point(12, 53);
            this.ComboBed.Name = "ComboBed";
            this.ComboBed.Size = new System.Drawing.Size(131, 21);
            this.ComboBed.TabIndex = 6;
            this.ComboBed.Text = "please choose a bed ";
            // 
            // ComboRoom
            // 
            this.ComboRoom.FormattingEnabled = true;
            this.ComboRoom.Items.AddRange(new object[] {
            "Ashley Madison\t",
            "Benjamin Franklin"});
            this.ComboRoom.Location = new System.Drawing.Point(12, 113);
            this.ComboRoom.Name = "ComboRoom";
            this.ComboRoom.Size = new System.Drawing.Size(131, 21);
            this.ComboRoom.TabIndex = 7;
            this.ComboRoom.Text = "choose a room  type";
            // 
            // ButCheckOut
            // 
            this.ButCheckOut.Location = new System.Drawing.Point(584, 260);
            this.ButCheckOut.Name = "ButCheckOut";
            this.ButCheckOut.Size = new System.Drawing.Size(124, 56);
            this.ButCheckOut.TabIndex = 8;
            this.ButCheckOut.Text = "proceed to checkout";
            this.ButCheckOut.UseVisualStyleBackColor = true;
            this.ButCheckOut.Click += new System.EventHandler(this.ButCheckOut_Click);
            // 
            // BoxAmen
            // 
            this.BoxAmen.FormattingEnabled = true;
            this.BoxAmen.Location = new System.Drawing.Point(201, 53);
            this.BoxAmen.Name = "BoxAmen";
            this.BoxAmen.Size = new System.Drawing.Size(227, 147);
            this.BoxAmen.TabIndex = 9;
            // 
            // BoxCheckOut
            // 
            this.BoxCheckOut.FormattingEnabled = true;
            this.BoxCheckOut.Location = new System.Drawing.Point(563, 53);
            this.BoxCheckOut.Name = "BoxCheckOut";
            this.BoxCheckOut.Size = new System.Drawing.Size(164, 186);
            this.BoxCheckOut.TabIndex = 10;
            // 
            // monthCalendar1
            // 
            this.monthCalendar1.Location = new System.Drawing.Point(201, 250);
            this.monthCalendar1.Name = "monthCalendar1";
            this.monthCalendar1.TabIndex = 11;
            // 
            // LabDiscount
            // 
            this.LabDiscount.AutoSize = true;
            this.LabDiscount.Location = new System.Drawing.Point(53, 158);
            this.LabDiscount.Name = "LabDiscount";
            this.LabDiscount.Size = new System.Drawing.Size(52, 13);
            this.LabDiscount.TabIndex = 12;
            this.LabDiscount.Text = "discounts";
            // 
            // LabCal
            // 
            this.LabCal.AutoSize = true;
            this.LabCal.Location = new System.Drawing.Point(229, 228);
            this.LabCal.Name = "LabCal";
            this.LabCal.Size = new System.Drawing.Size(177, 13);
            this.LabCal.TabIndex = 13;
            this.LabCal.Text = "how long will you be staying with us ";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(808, 413);
            this.Controls.Add(this.LabCal);
            this.Controls.Add(this.LabDiscount);
            this.Controls.Add(this.monthCalendar1);
            this.Controls.Add(this.BoxCheckOut);
            this.Controls.Add(this.BoxAmen);
            this.Controls.Add(this.ButCheckOut);
            this.Controls.Add(this.ComboRoom);
            this.Controls.Add(this.ComboBed);
            this.Controls.Add(this.CheckDiscount);
            this.Controls.Add(this.LabCheckOut);
            this.Controls.Add(this.LabAmen);
            this.Controls.Add(this.LabRoom);
            this.Controls.Add(this.LabBed);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label LabBed;
        private System.Windows.Forms.Label LabRoom;
        private System.Windows.Forms.Label LabAmen;
        private System.Windows.Forms.Label LabCheckOut;
        private System.Windows.Forms.CheckedListBox CheckDiscount;
        private System.Windows.Forms.ComboBox ComboBed;
        private System.Windows.Forms.ComboBox ComboRoom;
        private System.Windows.Forms.Button ButCheckOut;
        private System.Windows.Forms.ListBox BoxAmen;
        private System.Windows.Forms.ListBox BoxCheckOut;
        private System.Windows.Forms.MonthCalendar monthCalendar1;
        private System.Windows.Forms.Label LabDiscount;
        private System.Windows.Forms.Label LabCal;

    }
}

