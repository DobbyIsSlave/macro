using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using sharpAHK;

namespace macro
{
    public class AutoHotKeyAPI
    {
        public static void a()
        {
            var ahk = new AutoHotkey.Interop.AutoHotkeyEngine();
            ahk.ExecRaw("Send {c down}");
            ahk.ExecRaw("sleep, 50");
            ahk.ExecRaw("Send {c up}");
            ahk.ExecRaw("sleep, 50");
        }
    }
}
