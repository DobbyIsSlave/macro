; ##################################################################################
; # This #Include file was generated by Image2Include.ahk, you must not change it! #
; ##################################################################################
Create_tapBoxButton1_bmp(NewHandle := False) {
Static hBitmap := 0
If (NewHandle)
   hBitmap := 0
If (hBitmap)
   Return hBitmap
VarSetCapacity(B64, 3672 << !!A_IsUnicode)
B64 := "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"
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