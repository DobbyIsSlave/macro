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
        private bool bStart = false;
        private IKeyEventAPIListener keyEventAPIListener;
        private Thread thread;

        [DllImport("user32.dll")]
        private static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, int dwExtraInfo);

        [DllImport("user32.dll")]
        private static extern IntPtr CallNextHookEx(IntPtr hhk, int nCode, IntPtr wParam, IntPtr lParam);

        [DllImport("user32.dll")]
        private static extern IntPtr SetWindowsHookEx(int idHook, LowLevelKeyboardProcDelegate lpfn, IntPtr hMod, uint dwThreadId);

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

        [DllImport("user32.dll")]
        public static extern ushort GetAsyncKeyState(int vKey);

        private const int WH_KEYBOARD = 2;
        private const int WH_KEYBOARD_LL = 13;
        private const int WM_KEYDOWN = 0x0100;
        private const int WM_KEYUP = 0x0101;
        private static IntPtr _hookID = IntPtr.Zero;

        private delegate IntPtr LowLevelKeyboardProcDelegate(int nCode, IntPtr wParam, IntPtr lParam);

        public KeyEventAPI(IKeyEventAPIListener keyEventAPIListener)
        {
            this.keyEventAPIListener = keyEventAPIListener;
            thread = new Thread(HookStart);
            thread.IsBackground = true;
        }

        public void HookStart()
        {
            using (Process curProcess = Process.GetCurrentProcess())
            using (ProcessModule curModule = curProcess.MainModule)
            {
                _hookID = SetWindowsHookEx(WH_KEYBOARD_LL, LowLevelKeyboardProc, GetModuleHandle(curModule.ModuleName), 0);
            }
        }

        public void HookEnd()
        {
            UnhookWindowsHookEx(_hookID);
        }

        private IntPtr LowLevelKeyboardProc(int nCode, IntPtr wParam, IntPtr lParam)
        {
            if (nCode >= 0 && wParam == (IntPtr)WM_KEYDOWN)
            {
                int vkCode = Marshal.ReadInt32(lParam);
                if ((Keys)vkCode == Keys.F1)
                {
                    bStart = true;
                    keyEventAPIListener.OnSetStatus("On");
                }
                else if ((Keys)vkCode == Keys.F2)
                {
                    bStart = false;
                    keyEventAPIListener.OnSetStatus("Off");
                }
                else if ((Keys)vkCode == Keys.S)
                {
                    /*SendMessage(FindWindow(null, "MapleStory"), WM_KEYDOWN, ((IntPtr)Key.VK_C), IntPtr.Zero);
                    SendMessage(FindWindow(null, "MapleStory"), WM_KEYUP, ((IntPtr)Key.VK_C), IntPtr.Zero);*/

                    /*if (!IsKeyPress((int)Keys.A) || !thread.IsAlive)
                    {
                        thread.Start();
                    }*/

                    if (bStart == false)
                    {
                        bStart = true;
                        thread.Start();
                    }

                    //Delay(100); // TODO 딜레이 해결

                    return (IntPtr)1;
                }
            }
            else if (nCode >= 0 && wParam == (IntPtr)WM_KEYUP)
            {
                int vkCode = Marshal.ReadInt32(lParam);
                if ((Keys)vkCode == Keys.S)
                {
                    if (bStart == true)
                    {
                        thread.Interrupt();
                        thread.Join();
                        bStart = false;
                    }
                        
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

        private static bool IsKeyPress(int key)
        {
            ushort state = GetAsyncKeyState(key);
            if (state == 32768 || state == 32769)
            {
                return true;
            }
            else
            {
                MessageBox.Show(state.ToString());
            }

            return false;
        }
    }
}
