using System;
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
        private delegate void ControlSetText(string control, string name, int index, string value);
        private delegate string ControlGetText(string control, string name, int index);
        private delegate void ControlComboBox(string status);

        private Presenter presenter = null;

        public MainForm()
        {
            InitializeComponent();
            presenter = new Presenter(this);
        }

        private void MainForm_Load(object sender, EventArgs e)
        {
            MakeAppPlayer(90, 15);

            for (int index = 0; index < 5; index++)
                MakeDice(250, 150 + (30 * index), index);

            presenter.MainFormLoad();
        }

        private void MainForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            presenter.MainFormClosing();
        }

        private void MakeAppPlayer(int posX, int posY)
        {
            TextBox textBox = new TextBox();
            textBox.Location = new Point(posX, posY);
            textBox.Name = "txtAppPlayer";
            textBox.Size = new Size(90, 21);
            textBox.TabIndex = 2;
            textBox.Text = "LDPlayer-2";
            Controls.Add(textBox);

            Label label = new Label();
            label.AutoSize = true;
            label.Location = new Point(posX - 75, posY + 3);
            label.Name = "lblAppPlayer";
            label.Size = new Size(20, 12);
            label.TabIndex = 0;
            label.Text = "AppPlayer : ";
            label.TextAlign = ContentAlignment.TopRight;
            Controls.Add(label);
        }

        private void MakeDice(int posX, int posY, int index)
        {
            ComboBox comboBox = new ComboBox();
            string[] diceList = { "태풍", "SP", "독", "가시", "방패", "쇠", "바람", "얼음", "텔포", "잠금", "균열", "크리", "지옥" };
            comboBox.Items.AddRange(diceList);
            comboBox.BackColor = SystemColors.Control;
            comboBox.DropDownStyle = ComboBoxStyle.DropDownList;
            comboBox.FormattingEnabled = true;
            comboBox.Location = new Point(posX, posY);
            comboBox.Name = "cbDice" + index.ToString();
            comboBox.Size = new Size(120, 20);
            comboBox.TabIndex = 2;
            comboBox.SelectedIndex = index;
            Controls.Add(comboBox);

            Label label = new Label();
            label.AutoSize = true;
            //label.BackColor = SystemColors.GradientActiveCaption;
            //label.ForeColor = Color.Red;
            label.Location = new Point(posX - 90, posY + 3);
            label.Name = "lblDice" + index.ToString();
            //label.RightToLeft = RightToLeft.Yes;
            label.Size = new Size(20, 12);
            label.TabIndex = 0;
            label.Text = (index + 1).ToString() + "번째 주사위 : ";
            label.TextAlign = ContentAlignment.TopRight;
            Controls.Add(label);
        }

        public void SetViewText(string control, string name, int index, string value)
        {
            if (this.InvokeRequired)
            {
                this.Invoke(new ControlSetText(SetViewText), new object[] { control, name, index, value });
            }
            else
            {
                if (control.Equals("Label"))
                {
                    (Controls.Find("lbl" + name + ((index == -1) ? string.Empty : index.ToString()), true)[0] as Label).Text = value;
                }
                else if (control.Equals("TextBox"))
                {
                    (Controls.Find("txt" + name + ((index == -1) ? string.Empty : index.ToString()), true)[0] as TextBox).Text = value;
                }
            }
        }

        public string GetViewText(string control, string name, int index)
        {
            if (this.InvokeRequired)
            {
                return (string)this.Invoke(new ControlGetText(GetViewText), new object[] { control, name, index });
            }
            else
            {
                if (control.Equals("Label"))
                {
                    return (Controls.Find("lbl" + name + ((index == -1) ? string.Empty : index.ToString()), true)[0] as Label).Text;
                }
                else if (control.Equals("TextBox"))
                {
                    return (Controls.Find("txt" + name + ((index == -1) ? string.Empty : index.ToString()), true)[0] as TextBox).Text;
                }

                return string.Empty;
            }
        }
    }
}
