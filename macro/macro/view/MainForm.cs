﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace macro
{
    public partial class MainForm : Form, IMainForm
    {
        private delegate void ControlStatus(string status);

        private Presenter presenter = null;

        public MainForm()
        {
            InitializeComponent();
            presenter = new Presenter(this);
        }

        private void MainForm_Load(object sender, EventArgs e)
        {
            presenter.MainFormLoad();
        }

        private void MainForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            try
            {
                presenter.MainFormClosing();
            }
            catch(Exception ex)
            {
            }
        }

        public void SetStatus(string status)
        {
            if (this.InvokeRequired)
            {
                this.Invoke(new ControlStatus(SetStatus), new object[] { });
            }
            else
            {
                lblStatus.Text = status;
            }
        }
    }
}
