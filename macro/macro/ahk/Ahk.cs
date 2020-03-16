using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using sharpAHK;
using System.Threading;

namespace macro
{
    public class AHK
    {
        AutoHotkey.Interop.AutoHotkeyEngine ahk;

        public AHK()
        {
            ahk = new AutoHotkey.Interop.AutoHotkeyEngine();
        }
        public static void C_Press()
        {
            var ahk = new AutoHotkey.Interop.AutoHotkeyEngine();
            try
            {
                while (true)
                {
                    ahk.ExecRaw("Send {c down}");
                    ahk.ExecRaw("sleep, 50");
                    ahk.ExecRaw("Send {c up}");
                    Thread.Sleep(50);
                }
            }
            catch (Exception e)
            {
            }
        }

        public void doing()
        {
            while (true)
            {
                ahk.ExecFunction("MagPang");
                Thread.Sleep(50);
            }
        }

        public void LoadHotKeyFile()
        {
            ahk.LoadFile("C:\\macro\\macro\\macro\\ahk\\Doing.ahk");
            ahk.LoadFile("C:\\macro\\macro\\macro\\ahk\\Blaster.ahk");
        }

        public void MakeHotKey()
        {
            StringBuilder str = new StringBuilder();
            str.AppendLine("s::");
            //ahk.ExecFunction("MagPang");
            str.AppendLine("MagPang()");
            str.AppendLine("return");
            ahk.ExecRaw(str.ToString());
 
            /*StringBuilder str = new StringBuilder();
            str.AppendLine("a::");
            str.AppendLine("Send {c down}");
            str.AppendLine("sleep, 50");
            str.AppendLine("Send {c up}");
            str.AppendLine("sleep, 100");
            str.AppendLine("return");
            ahk.ExecRaw(str.ToString());*/

            /*ahk.ExecRaw("Send {c down}");
            ahk.ExecRaw("sleep, 50");
            ahk.ExecRaw("Send {c up}");
            ahk.ExecRaw("sleep, 50");
            ahk.ExecRaw("return");*/
        }


        public void MakeAttack()
        {

        }

        public void MakeRandom()
        {
            StringBuilder name = new StringBuilder();
            name.AppendLine("ransleep(min, max)");

            StringBuilder doing = new StringBuilder();
            doing.AppendLine("Random, rand, min, max");
            doing.AppendLine("sleep, rand");

            string str = MakeBaseFunction("ransleep(min, max)", doing.ToString());

            ahk.ExecRaw(str);
        }

        public string MakeBaseFunction(string name, string doing)
        {
            StringBuilder str = new StringBuilder();
            str.AppendLine(name);
            str.AppendLine("{");
            str.AppendLine(doing);
            str.AppendLine("return");
            str.AppendLine("}");
            return str.ToString();
        }
    }
}
