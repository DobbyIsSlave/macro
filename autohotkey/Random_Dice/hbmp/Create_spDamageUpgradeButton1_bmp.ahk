; ##################################################################################
; # This #Include file was generated by Image2Include.ahk, you must not change it! #
; ##################################################################################
Create_spDamageUpgradeButton1_bmp(NewHandle := False) {
Static hBitmap := 0
If (NewHandle)
   hBitmap := 0
If (hBitmap)
   Return hBitmap
VarSetCapacity(B64, 2528 << !!A_IsUnicode)
B64 := "Qk1mBwAAAAAAADYAAAAoAAAAGgAAABcAAAABABgAAAAAADAHAAAAAAAAAAAAAAAAAAAAAAAAqswAqswAqswAscom0eJt////////////////////////////////////////////////////////////////////////7fbS3e6q3u6qAACqzACqzACuyxbV2Jr8/N7////////////////////////////////////Pz8uEhHlERDNGRjZ/f3TPz8v////////////3/t3f8Kze7qoAAKrMAKrMDtXmgODxreDxrfDy3f///f///v///////////////9zc2SIiESouBV5jLoCzAXOJJFVnDysrCSIiEdzc2f///////+Hwtd7uqgAAqswAyeRl4PGt4PGt4PGt4PCx8vbd/v79////////////dHRlIyMBmboAlcUAi74AiLsAiLsAi74Ak8YAibwAJSUBa2tU////7PjA3u6qAACrzSXh9org8a3g8a3g8a3d7qre7q3v8N79/f3///+CgncpKRGZuwCZuwDu/ATz/wXw/wLu/wDw/wLx/QWk1w6XygArKwl4eGz+//ne7qoAAMbgXt3uquPvquPvquPvquPvquPvquPvqur3wdrezCIiEYqwAOn2BPn/Avv0AfvqAP3sAP3tAfvsAPzzAfT/BuDwAYi7ACIiEdnZ1vHxzgAA0+1r3e6q4++q4++q4++q4++q4++q4++q3e6qPD4me50I5fQJ9f4G/eUA/+sD/+0G/OsO/u4R/u4R/+4R/OsA+vgA7vkAdo4GNDQi/f3zAADc7qfd7qrj76rj76rj76rj76rj76rj76rd7qoiIgq52RX1+wr66Qb/7xP/7hb/7hnm1xNVXxhXYxrv3h7/7hj78wf6+gDA1RshIQ7+/v4AAODxreDxrePvquPvquPvquPvquPvquPvqo6UZjU1E/z8Avr1BP3vFdLFG6CWDtPHIqCZKbW1mM3Svl1qHtHFGPzuGPz0B+7/AEJLCpaWjgAA4PGt4PGt4++q4++q4++q4++q4++q4++qSUsvdH4G9f0G9uYmX18bZ3U7wMKUcHBEW1sXvLypz8+8hIRQi4tfW1sa7t4o+fkLcXsJSEg6AADg8a3g8a3j76rj76rj76rj76rj76rj76pDRSuBiwb5/grMux9wcET///9ZWST///+Dg1W8vKn5+fS7u6r6+tjKyq14eDT1+BiAigZHRzkAAODxreDxrePvquPvquPvquPvquPvquPvqkNFK4GLBvn+Ct7RMFpaFpWVfe/v6P///25uQL+/q+Hh0lRUIZmZd/v73V1dGfX4GICKBkNELQAA4PGt4PGt4++q4++q4++q4++q4++q4++qfoNZXl4G+/8M18sfbn1P////iIhVrq6PTloivLyp7OznVWYivr6w///0YmIe/PwQa2sNen5aAADh8a/g8K/j76rj76rj76rj76rj76rj76rb56QiIhH6+gbo4x9UZSH6+vrw8PDn5+dVZiK1tZvd3db19fX///9kZCPJvSTu/xEjJw7f564AAPb26OHh0N/wrN/wrN/wrN/wrN/wrN/wrN/wrCgpFc3QEfLzEK6yMF9fHllgHlhgHry0NmZmImNjIlxcIWdnFJyTHPnuIt7oCiUlEuvrvQAA///9+Pj09/vq9/vq9/vq9fnj7fHU7fHU6u7RqKuQLi4F8vkE/ewQ/+4R/+4g/+4i/Osf/+4i+u4i7u4i/+4R/PAP+P4GMzMRqKiY+vrvAAD///////////////////////////////////////9bW05CQgvu7gD98wP87AT97QX/6wf/6wn+6wj76wT/8wP19RRKSg1QUED///////8AAP///////////////////////////////////////////zs7KicpDPX/Ke//Bu7/APP2Bv//APr/AO7/AN3dADIyCisrGP///////////wAA////////////////////////////+/v7/f3b+fnQ+fnQ///urKyjIiIRW2oPobIE6u0B7vUJpbAMTU8BMzMRp6ee////////////////AAD////////////////////+/v7299fn6rTl5rHl5rHl5rHe7qre7qre7qu+x61wcGIxMR4wMB1sbF/ExL/29uXs7Mj7++b///v///////8AAP////////////////////39+ejyw93uquPvquPvquPvquPvquPvquPvqt3uquXwv+720u721Pv97v///vj47O/vwOXlsvDwyv39+v///wAA///////////////////////99Pbm3u6t4++q4++q4++q4++q4++q4++q3e6q3e6q3e6q3e6q4fCy8/Pm/////v748fHh7Oy5/f32////AAD///j///j///////////////7///7z8+bn8bPi76ri76ri76ri76ri76re7qre7qre7qre7qre7qrh7635+97///////////////////8AAA=="
If !DllCall("Crypt32.dll\CryptStringToBinary", "Ptr", &B64, "UInt", 0, "UInt", 0x01, "Ptr", 0, "UIntP", DecLen, "Ptr", 0, "Ptr", 0)
   Return False
VarSetCapacity(Dec, DecLen, 0)
If !DllCall("Crypt32.dll\CryptStringToBinary", "Ptr", &B64, "UInt", 0, "UInt", 0x01, "Ptr", &Dec, "UIntP", DecLen, "Ptr", 0, "Ptr", 0)
   Return False
; Bitmap creation adopted from "How to convert Image data (JPEG/PNG/GIF) to hBITMAP?" by SKAN
; -> http://www.autohotkey.com/board/topic/21213-how-to-convert-image-data-jpegpnggif-to-hbitmap/?p=139257
hData := DllCall("Kernel32.dll\GlobalAlloc", "UInt", 2, "UPtr", DecLen, "UPtr")
pData := DllCall("Kernel32.dll\GlobalLock", "Ptr", hData, "UPtr")
DllCall("Kernel32.dll\RtlMoveMemory", "Ptr", pData, "Ptr", &Dec, "UPtr", DecLen)
DllCall("Kernel32.dll\GlobalUnlock", "Ptr", hData)
DllCall("Ole32.dll\CreateStreamOnHGlobal", "Ptr", hData, "Int", True, "PtrP", pStream)
hGdip := DllCall("Kernel32.dll\LoadLibrary", "Str", "Gdiplus.dll", "UPtr")
VarSetCapacity(SI, 16, 0), NumPut(1, SI, 0, "UChar")
DllCall("Gdiplus.dll\GdiplusStartup", "PtrP", pToken, "Ptr", &SI, "Ptr", 0)
DllCall("Gdiplus.dll\GdipCreateBitmapFromStream",  "Ptr", pStream, "PtrP", pBitmap)
DllCall("Gdiplus.dll\GdipCreateHBITMAPFromBitmap", "Ptr", pBitmap, "PtrP", hBitmap, "UInt", 0)
DllCall("Gdiplus.dll\GdipDisposeImage", "Ptr", pBitmap)
DllCall("Gdiplus.dll\GdiplusShutdown", "Ptr", pToken)
DllCall("Kernel32.dll\FreeLibrary", "Ptr", hGdip)
DllCall(NumGet(NumGet(pStream + 0, 0, "UPtr") + (A_PtrSize * 2), 0, "UPtr"), "Ptr", pStream)
Return hBitmap
}