; ##################################################################################
; # This #Include file was generated by Image2Include.ahk, you must not change it! #
; ##################################################################################
Create_openButton1_bmp(NewHandle := False) {
Static hBitmap := 0
If (NewHandle)
   hBitmap := 0
If (hBitmap)
   Return hBitmap
VarSetCapacity(B64, 2612 << !!A_IsUnicode)
B64 := "Qk2mBwAAAAAAADYAAAAoAAAAJQAAABEAAAABABgAAAAAAHAHAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////////////////////zs7OFBQUACk1AGB9AAAAbGxs////////8vLyg4ODERERAAAAADtNAJnGAMX/AMX/AMX/AMX/AD9SAAAArKys////////3d3dJycnAIeHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh46OjsvLy////////87OzhQUFAApNQBFWgAAAJ6env///////////////8DAwDo6OgAAAAAvPQCRvADF/wDF/wDF/wA/UgAAAKysrP///////93d3ScnJwCYmJiYmJiYmJiYmJiYmJiYmJiYmJiYmJiYmJjNzc3////////Ozs4UFBQAKTUAWnQAAAA1NTWoqKj////////////////l5eVMTEwAAAAALjsAlL8Axf8Axf8AP1IAAACsrKz////////d3d0nJycA////////////////////////////////////////////////zs7OFBQUACk1AJO/ADlKAAAAAAAAV1dXxcXF////////////8PDwT09PAAAAAD1PAK3gALLmAD9SAAAArKys////////3d3dJycnAP///////////////////////////////////////////////8PDwxQUFAApNQC68QC68QBtjQBBVAAAAA8PD5mZmf///////////+Xl5To6OgAAAABujgC88wBHXAAAAKysrP///////93d3ScnJwBbW1tbW1tbW1tbW1tbW1tbW1tbW1tbW1tbW1tbW1tbW1tbW1tbW1sAAAAAbo8Axf8Axf8Axf8AtOkAWHIABQYAAACKior///////////+7u7sFBQUAIiwAl8MAQVQAAACsrKz////////d3d0nJycA3NzcwcHBnp6eUFBQAAAAAAAAAAAAAAAAAwMDqKio////////wsLCExMTACo2ALrxAMX/AMX/AMX/AMX/AGyMABEWAgICpqam////////////cHBwAAAAAFx3ADRDAAAArKys////////3d3dJycnAP////////////Ly8o2NjWZmZmJiYmJiYmpqar6+vv///////87OzhQUFAApNQC68QDF/wDF/wDF/wDF/wDF/wBpiAAAAEhISPPz8////////8zMzBQUFAArOAApNQAAAKysrP///////93d3ScnJwDr6+v////////////////////////////////////////////Ozs4UFBQAKTUAuvEAxf8Axf8Axf8Axf8Axf8As+gAOEkAAACMjIz///////////9cXFwAAAAAGB8AAACsrKz////////d3d0nJycAMjIyXFxcy8vL////////////////////////////////////zs7OFBQUACk1ALrxAMX/AMX/AMX/AMX/AMX/AMX/AH+lAAAAQUFB9/f3////////lZWVAAAAAAwQAAAArKys////////3d3dJycnAAAdJgAAAFxcXP///////////6WlpYqKipCQkM3Nzf///////87OzhQUFAApNQC68QDF/wCCqABeegBCVgBBVABbdgA6SwAqNw4ODsrKyv///////8XFxQ4ODgAEBQAAAKysrP///////93d3ScnJwAQbIcAAABBQUH8/Pz///////9gYGAVFRUUFBSwsLD////////Ozs4UFBQGKjUcwfERdpQBBAUAAAAAAAAAAAAAAAAAAAAAAAAbGxulpaX////////l5eUvLy8AAAAAAACsrKz////////d3d0nJycAAAAAAAAAd3d3////////////z8/PwsLCwsLC6enp////////zs7OFBQUES01TczxGkRQAAAAhYWFr6+vsbGxsbGxsbGxsbGxsbGx2dnZ////////////SkpKAAAAAAAArKys////////3d3dJycnAHR0dJaWlvb29v///////////////////////////////////87OzhQUFBMtNU662hEoLxYWFs3Nzf///////////////////////////////////////1dXVwAAAAAAAKysrP///////93d3ScnJwD////////////////////s7Ozq6urq6urq6ur////////////Ozs4UFBQTLTVUy+4WNT4CAgK5ubn////////////////////////////////////Y2Ng9PT0AAAAAAACsrKz////////d3d0nJycA////////////v7+/XV1dNjY2MjIyMjIyMjIyr6+v////////zs7OFBQUEi01VM3xJl5uAAAAHh4eRERER0dHR0dHR0dHR0dHR0dHR0dHR0dHR0dHMjIyAAAABAkLAAAArKys////////3d3dJycnAJycnIaGhmRkZAAAAAAAABUyOwkVGQUNDwAAAKmpqf///////8LCwhQUFBItNVTN8Umy0SJSYA0fJQABAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAcQExY2PxAnLgAAAKampv///////8rKyicnJwA="
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