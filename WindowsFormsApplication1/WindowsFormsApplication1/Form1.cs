﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void checkedListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void ButCheckOut_Click(object sender, EventArgs e)
        {
            WindowsFormsApplication2.Form2 creditCardForm = new WindowsFormsApplication2.Form2();
            creditCardForm.Show();
        }
    }
}
