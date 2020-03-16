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
        KeyEventAPI keyEventAPI;

        public Presenter(IMainForm mainFormView)
        {
            this.mainFormView = mainFormView;
            keyEventAPI = new KeyEventAPI(this);
        }

        public void MainFormLoad()
        {
            //KeyEventAPI.HookStart();
            //keyEventAPI.HookStart();
            AHK ahk = new AHK();
            ahk.LoadHotKeyFile();
            ahk.MakeHotKey();
        }

        public void MainFormClosing()
        {
            //KeyEventAPI.HookEnd();
            //keyEventAPI.HookEnd();
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
