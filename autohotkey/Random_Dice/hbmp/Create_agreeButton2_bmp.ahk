﻿; ##################################################################################
; # This #Include file was generated by Image2Include.ahk, you must not change it! #
; ##################################################################################
Create_agreeButton2_bmp(NewHandle := False) {
Static hBitmap := 0
If (NewHandle)
   hBitmap := 0
If (hBitmap)
   Return hBitmap
VarSetCapacity(B64, 2000 << !!A_IsUnicode)
B64 := "Qk3aBQAAAAAAADYAAAAoAAAAGQAAABMAAAABABgAAAAAAKQFAAAAAAAAAAAAAAAAAAAAAAAA4+Pj4+Pj4+Pj4+Pj4+Pj////////////////SEhIAAAAAI22AMX/AMX/AMX/AI+5AAMEODg48vLy////////l5eXAAAAAAQFAAQFAP////////////////////////////////j4+EhISAAAAACNtgDF/wDF/wDF/wCPuQADBDg4OPLy8v///////5iYmAAAAABIXQCUwADExMTExMTExMTExMTExMTIyMjNzc3Nzc2mpqYeHh4AHSUAreAAxf8Axf8Axf8Aj7kAAwQ4ODjy8vL///////+YmJgAAAAATGIAxf8AbGxsY2NjW1tbUlJSQkJCaGhosLCwyMjIo6OjHBwcAB4nAK/iAMX/AMX/AMX/AJvJAA8ULS0ts7Oz4ODg0NDQampqAAAAAFZvALHlANbW1sLCwrCwsJycnHV1dZGRkf////////f390hISAAAAACNtgDF/wDF/wDF/wCh0AA6SwAAAAAAACcnJx4eHgAAAAAAAAAAAAA/UQD////////////////i4uK6urr///////////9ISEgAAAAAjbYAxf8Axf8AnswAOEkAAAALCwtgYGCKioqioqKcnJx+fn5CQkIAAAAAy8vLxsbG09PT4eHhubm5ra2t////////////SEhIAAAAAI22AMX/AKfYADE/AAAAMjIytra2////////////////////+/v7nJycAKSkpICAgEJCQiIiIjIyMoODg////////////0hISAAAAABeegCm1wBTawAAAD09PeLi4v///////////////////////////////wD////u7u51dXUAAAAAAABubm7///////////9fX18CAgIAAAAAHycAERYVFRW5ubn///////////+9vb2KioqOjo7Nzc3///////8A////////////VVVVAgICbm5u////////////xcXFqampaWlpAAAAAAAATU1N////////////m5ubEhISAAAAAAAALS0tx8fH////AOLi4v///////5CQkB8fH25ubv///////////////////8zMzA8PDwAAAHd3d////////////05OTgAAAB5SYRY+SQAAAICAgP///wD///////////96enoVFRVubm7///////////////////+5ubkLCwsAAAB4eHj///////////9MTEwAAAAlW2seSlcAAAB+fn7///8A////////v7+/GxsbAAAAbm5u////////////jo6OYGBgLi4uAAAAAAAAVlZW////////////jo6OAAAAAAAAAAAAHBwcu7u7////AMXFxYeHh1RUVBQUFAAAAG5ubv///////////1BQUAAAAAoYHBtCTggUGCEhIcTExP///////////6enp3R0dHx8fLy8vP///////wDLy8u5ubmxsbGgoKBRUVFzc3P///////////9ISEgAAAA1gplY1/0hUV8AAABKSkr9/f3///////////////////////////////8A////////////////g4ODfn5+////////////SEhIAAAAQJu2Wdn/SbLREy83AAAARkZGy8vL////////////////////////srKyAOHh4dXV1dXV1cPDw2FhYXR0dP///////////0hISAAAAECbtlnZ/1nZ/0SmwxUyOwAAABwcHHJycpycnLa2trKyspSUlFdXVwAAAABUVFQXFxcXFxcTExMODg5qamr+/v7////q6upISEgAAABAm7ZZ2f9Z2f9Z2f9FqMYlWWkHEBMAAAAAAAAAAAAAAAAAAAAAAAAWNT4ADAwMAAAAECYtESsyAAAAFxcXfn5+j4+PeXl5AAAAFjZAWNb7Wdn/Wdn/Wdn/Wdn/Wdn/QqG9MHWJI1VkGj9KG0JOJ19wM32TSbPSAA=="
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