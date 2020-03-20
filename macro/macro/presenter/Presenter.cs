using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace macro
{
    public class Presenter : IKeyEventAPIListener
    {
        IMainForm mainFormView;

        public Presenter(IMainForm mainFormView)
        {
            this.mainFormView = mainFormView;
        }

        public void MainFormLoad()
        {
            try
            {
                AHK ahk = new AHK();
                ahk.LoadHotKeyFile();
                ahk.HotKeyRegister();
            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message);
            }
            
        }

        public void MainFormClosing()
        {

        }

        public void OnSetStatus(string status)
        {
            mainFormView.SetStatus(status);
        }
    }

    public interface IKeyEventAPIListener
    {
        void OnSetStatus(string status);
    }
}
