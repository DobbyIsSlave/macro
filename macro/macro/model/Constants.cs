using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace macro
{
    public class Constants
    {
#if MAPLESTORY
        public static readonly string mainFilePath = Application.StartupPath + "\\ahk\\MapleStory\\Maple.ahk";
#elif RANDOM_DICE
        public static readonly string main0FilePath = Application.StartupPath + "\\ahk\\Random_Dice\\main0.ahk";
        public static readonly string main1FilePath = Application.StartupPath + "\\ahk\\Random_Dice\\Random_Dice.ahk";
#endif

        public static readonly string mapleFilePath = Application.StartupPath + "\\ahk\\MapleStory\\Maple.ahk";
        public static readonly string doingFilePath = Application.StartupPath + "\\ahk\\MapleStory\\Doing.ahk";
        public static readonly string blasterFilePath = Application.StartupPath + "\\ahk\\MapleStory\\Blaster.ahk";
        public static readonly string strikerFilePath = Application.StartupPath + "\\ahk\\MapleStory\\Striker.ahk";

        public static readonly string classDDFilePath = Application.StartupPath + "\\ahk\\Library\\Class_DD.ahk";
        public static readonly string gdip_AllFilePath = Application.StartupPath + "\\ahk\\Library\\Gdip_all.ahk";
        public static readonly string gdip_ImageSearchFilePath = Application.StartupPath + "\\ahk\\Library\\Gdip_ImageSearch.ahk";
        public static readonly string search_ImgFilePath = Application.StartupPath + "\\ahk\\Library\\Search_img.ahk";
    }
}
