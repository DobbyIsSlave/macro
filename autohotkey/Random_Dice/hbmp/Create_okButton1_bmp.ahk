﻿; ##################################################################################
; # This #Include file was generated by Image2Include.ahk, you must not change it! #
; ##################################################################################
Create_okButton1_bmp(NewHandle := False) {
Static hBitmap := 0
If (NewHandle)
   hBitmap := 0
If (hBitmap)
   Return hBitmap
VarSetCapacity(B64, 1896 << !!A_IsUnicode)
B64 := "Qk2OBQAAAAAAADYAAAAoAAAAGQAAABIAAAABABgAAAAAAFgFAAAAAAAAAAAAAAAAAAAAAAAAXl5exsbG////////////////////////rKysdHR0BwcHAgYIE5bGGMH/AQYIAAAA0NDQ////////////////xcXFGRkZAAAABCYxAAAAAAEBAXp6ev////////////////////f394ODgx0dHQABAQ1sjhjB/wEGCAAAANDQ0P///////////////8zMzFVVVQ0NDQAAAAAFKjcAAQIAAACOjo7///////////////////+1tbU5OTkAAAAISF4Ywf8BBggAAADQ0ND////////////////MzMx7e3tEREQEBAQAFargCUddAAABCgoK5OTk////////////////7OzsS0tLAAAABSw6GMH/AQYIAAAA0NDQ////////////////2trafX19dnZ2MjIyABjB/xSj1wQeJwAAAH19ff///////////////////2hoaAAAAAMZIRjB/wEGCAAAANDQ0P///////////////////7CwsH19fWxsbAAYwf8Yv/0MYoIAAAApKSn///////////////////+WlpYAAAACEBUYwf8BBggAAADQ0ND////////////////////7+/uYmJh9fX0AdNr8dNr8Xa/JAQEBBAQE/v7+////////////////t7e3AAAABgwOdNr8AwYIAAAA0NDQ////////////////////////8PDwh4eHAHTa/HTa/G/P7wECAwAAAO3t7f///////////////8HBwQAAAAUKDHTa/AMGCAAAANDQ0P///////////////////////////9zc3AB52/952/9tw+MBAgIAAADd3d3////////////////Ly8sAAAAGCw152/8EBggAAADQ0ND///////////////////////////////8Aedv/edv/To2kAQEBDQ0N1dXV////////////////z8/PAAAACRATedv/BAYIAAAA0NDQ////////////////////////////////AHnb/3PR8yE9RwAAADAwMNvb2////////////////7q6ugAAAA0ZHHnb/wQGCAAAANDQ0P///////////////////////////////wB42f1HgpcCAgMGBgZeXl7l5eX///////////////+ioqIAAAAXKzJ52/8EBggAAADQ0ND////////////////IyMji4uL///////8AQHWIBAYIAQEBMzMzfHx8+vr6////////////////iIiIAAAAJ0dSedv/BAYIAAAA0NDQ////////////////ubm5ODg4+vr6////AAAAAAYGBi4uLmtra5iYmP///////////////////09PTwAAADxsfnnb/wQGCAAAANDQ0P///////////////7m5uQAAAG9vb////wAqKipDQ0Nra2t9fX3FxcX////////////////+/v4UFBQCAwRUmbF52/8EBggAAADQ0ND///////////////+5ubkAAAAAAACrq6sAaWlpe3t7fX19ioqK+fn5////////////////xsbGAAAADhgda8Lhedv/BAYIAAAA0NDQ////////////////ubm5AAAAAAAADg4OAH19fX19fYCAgNvb2////////////////////1VVVQAAAClLWHfX+nnb/wQGCAAAANDQ0P///////////////7m5uQAAAAECAwAAAAB9fX2Kiorb29v////////////////////Z2dkDAwMDBgdQkKd52/952/8ECAkAAADQ0ND///////////////+5ubkAAAAGCgwIEBMA"
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