﻿; ##################################################################################
; # This #Include file was generated by Image2Include.ahk, you must not change it! #
; ##################################################################################
Create_advertiseCloseButton8_bmp(NewHandle := False) {
Static hBitmap := 0
If (NewHandle)
   hBitmap := 0
If (hBitmap)
   Return hBitmap
VarSetCapacity(B64, 1832 << !!A_IsUnicode)
B64 := "Qk1eBQAAAAAAADYAAAAoAAAAFAAAABYAAAABABgAAAAAACgFAAAAAAAAAAAAAAAAAAAAAAAALkk5LkY4LUA2Kzk2JjMyIjAwIC4uHi0tHi0tIC4uIjAwJjMzKTY2LTk5Lzw8e4SEzdDQn6WlKjk5JjU1M009M0w9MUo6LkY4LD81Kjk0JzMyJDIxJDIyJjMzKDY2LDg4Lzs7Mz4+iZCQ+/v7////////a3V1Jjc3UmhbNU8/NU9AMk09L0o6LUg3K0Q1LTs2Kzg4LDg4Ljs7Mj4+NUBAi5GR+/v7////////////bnd3JjU14+flV21gOFBCN09ANk9ANE4/MUw8MUg6Mkc6NUI+NkJBOENDjJKS+/v7////////////vMDALj08JDMz////5unnXXFlO1JEPFNFO1JEOVJDOFBCOFBCOlBDPE5Ej5aT/Pz8////////////wMTEMkFAJjU1ITEx////////6OvpYXRpQVZJQVZJQVZJQldKQldKQldLkZ2W/Pz8////////////xcnINUFAKTY2IzIyHi8u////////////6+3saXpwRllOR1pPSVtQSVxQlZ+Z/Pz8////////////yM7LOUxCKkE1IzkxHjYtGDcr5enn////////////7O7tcYB4TV5UT19VmaOd/Pz8////////////zdPPPVZHLEk4JkUzHkAsGj4pEz8nUW5f6e3r////////////7/DveIV+mqOe/Pz8////////////0dbTRl1PMk4+Kkg2IkMwG0AsFz4nEjwkJ0w6WXJl6u3r////////////8vTz/Pz8////////////1drXT2RYOlNEMU09KUk3IkUxHEIsFT4nEToiK1A5MFNCYnpu7vDv////////////////////////2NzaV2lfQlhLOlRFMk8/KUg2IkQwHEEtF0ApEj4mOGUxNFZAOVdIbIB28vPy////////////////3eDeXGxjSV1RQlhLO1RGM1BAK0s5JEYzHkMuGkArFD8oQmwzQmM8PFxIkaCZ/Pz8////////////////8fLxdYV9R11RQllNPFZINlFDLk49KEo4IkczGkMtFkIrRGo2Sm0+j6GV/P38////////////////////////8PHwcIN5QVlMPVhLOFVHMVBAK0w7JUo3IEgzGkUvR2o5l6uP+/z7////////////2+Dd7/Hw////////////7/HwbIB2PVhKOVZINVNEL1A/KU06I0o3HkcylamO/Pz7////////////1dvXSmlbaIB17/Hw////////////7/Hwan90OldIN1ZGMlNCLU8+KE07IUs2/Pz7////////////1N3ST29LNlpDMVZEYn1w7vHv////////////7/HwaIB0OFhJNVhIL1NCKk89JE46////////////0drPTnFEPmkzNl43LFY+KVNAXXxt7fDv////////////7vDvaIF1NVhIMVVELFE/J1E9////////ztfLSWw/PWMzOmMuNWUrJlI0Ik86JFI9Wnpr7fDv////////////7vHvZH5yMFRELFRCJ1E9////zNbJRmk6OmEvOGEtOGItM2cmI1IxHU85H044IU86WH5u7fHw////////////7vHwYH9xLFZDJ1ZByNPGRWs6N10rNl8qN2IsNGIqLmEfHUwqF002GlE6Gks1IEg3W3tn7fHv////////////7PDuPmdVI1VARGw7N18qMVkkMV0kMl8mLVoeJlUWGEonFEw1HVIxJFooKFsmLV8nYIde7fHu////////////dpWIIFdA"
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