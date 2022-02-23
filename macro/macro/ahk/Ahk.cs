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
        private IAhkListener ahkListener;

        public AHK(IAhkListener ahkListener)
        {
            ahk = new AutoHotkey.Interop.AutoHotkeyEngine();
            this.ahkListener = ahkListener;
        }

        public void LoadHotKeyFile()
        {
            ahk.LoadFile(Constants.classDDFilePath);
            ahk.LoadFile(Constants.gdip_AllFilePath);
            ahk.LoadFile(Constants.gdip_ImageSearchFilePath);
            ahk.LoadFile(Constants.search_ImgFilePath);
#if MAPLESTORY
            ahk.LoadFile(Constants.doingFilePath);
            ahk.LoadFile(Constants.blasterFilePath);
            ahk.LoadFile(Constants.strikerFilePath);
            //ahk.LoadFile(Constants.mapleFilePath);
#elif RANDOM_DICE

#endif
        }

        public void HotKeyRegister()
        {
            string AppPlayer = ahkListener.OnGetViewText("TextBox", "AppPlayer", -1);
            string[] DiceList = new string[5];
            for (int index = 0; index < 5; index++)
            {
                DiceList[index] = ahkListener.OnGetViewText("ComboBox", "Dice", index);
            }

            string line;
            StreamReader file;
            StringBuilder str = new StringBuilder();


            str.AppendLine(@"global appPlayerName := """ + AppPlayer + @"""");


            file = new StreamReader(Constants.main0FilePath);
            while ((line = file.ReadLine()) != null)
                str.AppendLine(line);


            for (int index = 0; index < 5; index++)
            {
                str.AppendLine(@"global " + index.ToString() + @"번째 := """ + DiceList[index] + @"""");
            }


            file = new StreamReader(Constants.main1FilePath);
            while ((line = file.ReadLine()) != null)
                str.AppendLine(line);


            ahk.ExecRaw(str.ToString());
        }
    }
}
