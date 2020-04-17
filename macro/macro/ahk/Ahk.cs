using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using sharpAHK;
using System.Threading;
using System.IO;

namespace macro
{
    public class AHK
    {
        AutoHotkey.Interop.AutoHotkeyEngine ahk;

        public AHK()
        {
            ahk = new AutoHotkey.Interop.AutoHotkeyEngine();
        }

        public void LoadHotKeyFile()
        {
#if MAPLESTORY
            ahk.LoadFile(Constants.classDDFilePath);
            ahk.LoadFile(Constants.doingFilePath);
            ahk.LoadFile(Constants.blasterFilePath);
            //ahk.LoadFile(Constants.mapleFilePath);
#elif RANDOM_DICE
            ahk.LoadFile(Constants.classDDFilePath);
#endif
        }

        public void HotKeyRegister()
        {
            string line;
            StreamReader file = new StreamReader(Constants.mainFilePath);
            StringBuilder str = new StringBuilder();
            while ((line = file.ReadLine()) != null)
                str.AppendLine(line);
            ahk.ExecRaw(str.ToString());
        }
    }
}
