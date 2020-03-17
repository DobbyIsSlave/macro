using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
            AHK ahk = new AHK();
            ahk.LoadHotKeyFile();
            ahk.HotKeyRegister();
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
