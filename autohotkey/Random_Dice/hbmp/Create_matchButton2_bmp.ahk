﻿; ##################################################################################
; # This #Include file was generated by Image2Include.ahk, you must not change it! #
; ##################################################################################
Create_matchButton2_bmp(NewHandle := False) {
Static hBitmap := 0
If (NewHandle)
   hBitmap := 0
If (hBitmap)
   Return hBitmap
VarSetCapacity(B64, 2952 << !!A_IsUnicode)
B64 := "Qk2mCAAAAAAAADYAAAAoAAAAIwAAABQAAAABABgAAAAAAHAIAAAAAAAAAAAAAAAAAAAAAAAA/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7VlAAAA/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl2JlW25tX/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7VlAAAAclEt/7Vl/7Vl/7Vlsn5HgFszQzAbNCUVHxYNIRgOMyQVQzAbgVwzuYNJ/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7VlAAAALCAS4qBa/7VlimI3IRgORUVFfn5+n5+frKysq6urnJycfHx8QUFBKB0Qkmg6/7Vl/7Vl/7Vl/7Vl/7Vl5qNbjWQ4fFgxfFgxfFgxfFgxfFgxfFgxfFgxfFgxfFgxfFgxfFgxfFgxfFgxAAAAHxYN15lVnW8+EAwHiIiI+Pj4////////////////////////8/Pzf39/FxEKpnZC/7Vl/7Vl/7Vl/7VlfVkyFhYWQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAAAAAHxYN15lVbE0rUlJS////////kZGRU1NTQkJCQkJCU1NTmZmZ/////Pz8SEhIdFIu/7Vl/7Vl/7Vl969iOyoXgoKC+Pj4/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+/v7+5OTkAAAAHxYN15lVY0YnXl5e////////dHR0NDQ0IyMjIyMjNDQ0fHx8////////UlJSa0wq/7Vl/7Vl/7Vl/7VlRTEbenp6y8vLzMzMzMzMzMzMzMzM////////////zMzMzMzMzMzMzMzMycnJAAAAHxYN15lVl2s8BQUFn5+f////////8fHx39/f4ODg9PT0////////l5eXBgUDo3RB/7Vl/7Vl/7Vl/7VlsX5GIBcNDg4ODg4ODg4ODg4OMjIyysrK////k5OTHBwcDg4ODg4ODg4ODg4OAAAAOSgXc1IuKh4RHhYMDAwMcHBwoaGhvb29ysrKysrKubm5oKCgampqBgYGIBcNKx8SoXJA/7Vl/7Vl/7Vl/7Vlr3xFgVwzVDwhTTceSjUdFRUVysrK////jo6OHxYNTTceTTceXEEki2M3AAAAGRILDgoGkZGRoKCgoKCgoKCgoKCgoKCgo6Ojo6OjoKCgoKCgoKCgoKCgoKCglZWVCAYErnxF/7Vl/7Vl/7VlwYlMDQoGa2trb29vb29vc3Nz19fX////p6encXFxb29vb29vXl5eRjIcAAAAFg8JCwsLxsbG////////////////////////////////////////////////z8/PGxsbonNA/7Vl/7Vl/7VlfFgxQkJC6urq////////////////////////////////////vr6+BgYGAAAAHBQMLyITTk5OWlpaWlpaWlpaWlpac3Nz////////dHR0WlpaWlpaWlpaWlpaUlJSJhsQuoRK/7Vl/7Vl/7VlfFgxQkJC+vr6////qampkpKSkpKSkpKSkpKSkpKSxMTE////vr6+BgYGAAAAHxYNlGk6WkAkPT09tLS0ubm5ubm5wsLC////////xMTEubm5ubm5tbW1TU1NVDwhv4hM/7Vl/7Vl/7Vl/7VlfFgxQkJC+vr6////V1dXIBcNKh4RKh4RKh4RDQoGk5OT////vr6+BgYGAAAAHxYN15lVaksqV1dX////////9PT09fX1////////9fX18vLy8vLy6urqcHBwTTce/7Vl/7Vl/7Vl/7Vl/7VlfFgxQkJC+vr6////V1dXaEoplmo7lmo7kmg6Kh4Rk5OT////vr6+BgYGAAAAHxYN15lVaksqV1dX////////Z2dnUlJSUlJSUlJSUlJSUlJSUlJSTk5OEhISd1Qv/7Vl/7Vl/7Vl/7Vl/7VlfFgxQkJC+vr6////XFxcAwICBgUDBgUDBgUDCAgIlJSU////vr6+BgYGAAAAHxYN15lVaksqV1dX////////hoaGdHR0dHR0dHR0dHR0dHR0dHR0cXFxHR0dkWc5/7Vl/7Vl/7Vl/7Vl/7VlfFgxQkJC+vr6////y8vLt7e3t7e3t7e3t7e3t7e34uLi////vr6+BgYGAAAAHxYN15lVaksqV1dX/////////////////////////////////////Pz8YGBgW0Ek/7Vl/7Vl/7Vl/7Vl/7VlgVwzPT094ODg////////////////////////////////////urq6AwMCAAAAHxYN15lVk2g6KioqiYmJjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMiYmJKysrkGY5/7Vl/7Vl/7Vl/7Vl/7VlyY9QHBQMSEhISkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKSkpKPj4+UjogAAAAZ0kp/7Vl15lVWT8jNSYWNCUVNCUVNCUVNCUVNCUVNCUVNCUVNCUVNSYWVz4i05ZU/7Vl/7Vl/7Vl/7Vl/7Vl/7VlnW8+dVMuclEtclEtclEtclEtclEtclEtclEtclEtclEte1cxvodLAAAAyY9Q/7Vl/7Vl/7Vl9q9h9q9h9q9h9q9h9q9h9q9h9q9hzZJSs4BJw4tP/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7Vl/7VlAAAA"
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