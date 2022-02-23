using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace macro
{
    public class Presenter : IAhkListener, IKeyEventAPIListener
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
                AHK ahk = new AHK(this);
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

        public void OnSetViewText(string control, string name, int index, string value)
        {
            mainFormView.SetViewText(control, name, index, value);
        }

        public string OnGetViewText(string control, string name, int index)
        {
            return mainFormView.GetViewText(control, name, index);
        }

        public void OnSetStatus(string status)
        {
            mainFormView.SetViewText("Label", "MacroStatus", -1, status);
        }
    }

    public interface IAhkListener
    {
        void OnSetViewText(string control, string name, int index, string value);

        string OnGetViewText(string control, string name, int index);
    }

    public interface IKeyEventAPIListener
    {
        void OnSetStatus(string status);
    }
}
