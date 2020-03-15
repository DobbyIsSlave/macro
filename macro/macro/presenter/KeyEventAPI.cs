using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using System.Diagnostics;

namespace macro
{
    public class KeyEventAPI
    {
        private static bool bStart = false;

        [DllImport("user32.dll")]
        private static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, int dwExtraInfo);

        [DllImport("user32.dll")]
        private static extern IntPtr CallNextHookEx(IntPtr hhk, int nCode, IntPtr wParam, IntPtr lParam);

        [DllImport("user32.dll")]
        private static extern IntPtr SetWindowsHookEx(int idHook, LowLevelKeyboardProc lpfn, IntPtr hMod, uint dwThreadId);

        [DllImport("kernel32.dll")]
        private static extern IntPtr GetModuleHandle(string lpModuleName);

        [DllImport("user32.dll")]
        private static extern bool UnhookWindowsHookEx(IntPtr hhk);

        [DllImport("user32.dll")]
        private static extern IntPtr FindWindow(string lpClassName, string lpWindowName);

        [DllImport("user32.dll", SetLastError = true)]
        private static extern IntPtr GetWindow(IntPtr hWnd, uint uCmd);

        [DllImport("user32.dll")]
        public static extern IntPtr SendMessage(IntPtr hWnd, uint Msg, IntPtr wParam, IntPtr lParam);

        [DllImport("user32.dll")]
        public static extern IntPtr PostMessage(IntPtr hWnd, uint Msg, IntPtr wParam, IntPtr lParam);

        private const int WH_KEYBOARD = 2;
        private const int WH_KEYBOARD_LL = 13;
        private const int WM_KEYDOWN = 0x0100;
        private const int WM_KEYUP = 0x0101;
        private static LowLevelKeyboardProc _proc = HookCallBack;
        private static IntPtr _hookID = IntPtr.Zero;

        private delegate IntPtr LowLevelKeyboardProc(int nCode, IntPtr wParam, IntPtr lParam);

        public static void HookStart()
        {
            using (Process curProcess = Process.GetCurrentProcess())
            using (ProcessModule curModule = curProcess.MainModule)
            {
                _hookID = SetWindowsHookEx(WH_KEYBOARD_LL, _proc, GetModuleHandle(curModule.ModuleName), 0);
            }
        }

        public static void HookEnd()
        {
            UnhookWindowsHookEx(_hookID);
        }

        private static IntPtr HookCallBack(int nCode, IntPtr wParam, IntPtr lParam)
        {
            if (nCode >= 0 && wParam == (IntPtr)WM_KEYDOWN)
            {
                int vkCode = Marshal.ReadInt32(lParam);
                if ((Keys)vkCode == Keys.F1)
                {
                    bStart = true;
                }
                else if ((Keys)vkCode == Keys.F2)
                {
                    bStart = false;
                }
                else if ((Keys)vkCode == Keys.A)
                {
                    /*SendMessage(FindWindow(null, "MapleStory"), WM_KEYDOWN, ((IntPtr)Key.VK_C), IntPtr.Zero);
                    Delay(100);
                    SendMessage(FindWindow(null, "MapleStory"), WM_KEYUP, ((IntPtr)Key.VK_C), IntPtr.Zero);

                    KeyDown(Key.VK_C);
                    Delay(100);
                    KeyUp(Key.VK_C);

                    SendKeys.Send("c");
                    SendKeys.SendWait("c");*/
                    //AutoHotKeyAPI.a();
                    Delay(100); // TODO 딜레이 해결
                    return (IntPtr)1;
                }
            }
            else if (nCode >= 0 && wParam == (IntPtr)WM_KEYUP)
            {
                int vkCode = Marshal.ReadInt32(lParam);
                if ((Keys)vkCode == Keys.A)
                {
                    return (IntPtr)1;
                }
            }

            return CallNextHookEx(_hookID, nCode, wParam, lParam);
        }

        public static void KeyDown(int keycode)
        {
            keybd_event((byte)keycode, 0, 0, 0);
        }

        public static void KeyUp(int keycode)
        {
            keybd_event((byte)keycode, 0, 0x02, 0);
        }

        private static void Delay(int delay)
        {
            int t = Environment.TickCount;
            while ((Environment.TickCount - t) < delay) ;
        }
    }
}
