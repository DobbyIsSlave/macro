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
            
        }

        public void MainFormClosing()
        {
            KeyEventAPI.HookEnd();
        }

        public void MacroStart()
        {
            KeyEventAPI.HookStart();
        }

        public void MacroEnd()
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
