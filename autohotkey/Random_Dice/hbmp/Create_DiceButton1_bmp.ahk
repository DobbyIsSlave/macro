﻿; ##################################################################################
; # This #Include file was generated by Image2Include.ahk, you must not change it! #
; ##################################################################################
Create_DiceButton1_bmp(NewHandle := False) {
Static hBitmap := 0
If (NewHandle)
   hBitmap := 0
If (hBitmap)
   Return hBitmap
VarSetCapacity(B64, 6608 << !!A_IsUnicode)
B64 := "Qk1aEwAAAAAAADYAAAAoAAAALgAAACMAAAABABgAAAAAACQTAAAAAAAAAAAAAAAAAAAAAAAAq6urq6urp6enpKSkoqOioKCgnp6empqamZmZk5OTlJSUlJSUjo6Ojo6OioqKioqKioqKioqKi4uLhYWFhISEeXp5bm5uWVlZUFBQREREQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCRkZGRkZGREREUFBQTU1NTU1NTU1NU1NTZmZmcnJyh4aHmZiZAACrq6urq6unp6ekpKSioqKgn6CampqampqTk5OTk5OUlJSOjo6Ojo6KioqKioqKioqKioqKioqFhYWFhYV/f391dHVoaGi3t7f///////////////////////////////////////////////////////////////////////////////+Af4CSkZIAAKurq6enp6enp6SkpKGhoZ2enZmZmZmZmZSUlJSUlI6Ojo6OjoqKioqKioqKioqKiouLi4WFhYWFhYOEg319fXNzc19fX////////////////////////////////////////////////////////////////////////////////////3t5e5KQkgAAq6urp6eno6OjpKSkn6Cfm52bmZmZk5OTlJSUlJSUjo6Ojo6OioqKioqKioqKioqKhYWFhYWFg4SDgYOBfX19c3NzX19f////////////////////////////////////////////////////////////////////////////////////d3Z3jo2OAACrq6unp6ekpKSfn5+enp6ampqZmZmTk5OUlJSUlJSOjo6KioqKioqKioqLi4uFhYWFhYWFhYWDg4OAgIB9fX1wcHBfX1////////////////8RERFzc3P////////////////////////////////////Ozs4AAACEhIT///////////9zc3OPj48AAKurq6enp6SkpJ+fn56enpqampmZmZOTk5SUlI6Ojo6OjoqKioqKioqKiouLi4WFhYWFhYWFhYODg4CAgH19fXBwcF9fX////////////wAAAAAAAAAAAP///////////////////////////////////wAAAAAAAAAAAP///////////3Nzc4+PjwAAra2tp6enpKSkn5+fnp6empqamZmZk5OTlJSUjo6Ojo6OioqKioqKioqKi4uLhYWFhYWFg4ODgoOCgH+AfX19cHBwX19f////////////CQkJAAAAAAAA////////////////////////////////////AAAAAAAAAAAA////////////c3Nzj4+PAACnp6enp6ekpKSfn5+enp6ampqZmZmTk5OUlJSOjo6Ojo6KioqKioqKioqFhYWFhYWDhIOBgoGCgoKAfoB9fX1wcHBfX1////////////////+mpqb////////////////////////////////////////7+/t7e3v///////////////9zc3OPj48AAK2traenp6SkpJ+fn56enpqampmZmZOTk5SUlI6Ojo6OjoqKioqKioyMjISEhIKBgn9/f39/f319fX19fXV1dXBwcFpaWv///////////////////////////////////////////////////////////////////////////////////3V0dY6OjgAAra2tp6enpKSkn5+fnp6empqamZmZk5OTlJSUjo6Ojo6OioqKioqKgoKCf39/fXx9eXl5eXl5eXl5fX19dXV1cHBwWlpa////////////////////////////////////////////////////////////////////////////////////dXR1jo6OAACqq6qmp6akpKShoaGenp6ampqZmZmTk5OUlJSOjo6KioqMjIyDg4N9fX11dXVra2tra2tra2txcXF1dXV4d3hubW5fX1////////////////////////////////////////8bGxuEhIT///////////////////////////////////91dHWOjo4AAKqrqqanpqSkpKGhoZ6enpqampmZmZOTk5SUlI6OjoqKioKCgnV1dWtra2VlZVtbW1tbW1tbW2NjY21tbXZ1dmxrbF9fX////////////////////////////////////wAAAAAAAAAAAP///////////////////////////////////3V0dY6OjgAAq6urp6enpKSkn5+fnp6empqanJyclJSUjo6OioqKf39/cnNyaGdoXFxcUFBQREREoqKioqKiVlZWZWVlbGxsZmZmWlpa////////////////////////////////////AAAAAAAAAAAA////////////////////////////////////c3Nzj4+PAACrq6unp6ekpKSkpKSenp6ampqSkpKOjo6JiYl/f39wcHBkY2RWVVZKSkqSkpL6+vr///////+NjY1bW1tmZmZmZmZaWlr////////////////////////////////////k5OSSkpL///////////////////////////////////////9zc3OPj48AAKurq6enp6SkpJ6enp6enpSUlI6PjoGBgXh3eGlpaVVVVVVVVVpaWv7+/v///////////////////1VVVVtbW2FhYVlZWf///////////////////////////////////////////////////////////////////////////////////3Nzc4+PjwAAq6urp6enpKSknp6elJSUioqKfX59cXFxY2JjVVVVVVVVzMzM+vr6////////////////////////rq6uUlJSWFhYWVlZ////////////////////////////////////////////////////////////////////////////////////eXl5j4+PAACtra2kpKSbnJuRkZGIh4h5eHlmZmZWVlZWVlaYmJj///////////////////////////////////////9aWlpQUFBLS0v///////////9zc3MAAAAAAAD///////////////////////////////////9ISEgAAAAAAAD///////////95eHmQj5AAAKOjo5qamo2NjYOCg3Nyc2VkZVZWVnZ2dv///////////////////////////7+/v5mZmf///////////9XV1UpKSkNDQ////////////wAAAAAAAAAAAO7u7v///////////////////////////////wAAAAAAAAAAAP///////////3l4eZCPkAAAmpuaioqKeHh4bm5uVFRUVFRU/v7+////////////////////////////6urqAAAAAAAAOjo6////////////dXV1Q0ND////////////ampqAAAAAAAA////////////////////////////////////Ly8vAAAAAAAA////////////goKClJSUAACKiop6eXpoaGhSUlKrq6v///////////////////////////////////+qqqoAAAAAAAA6Ojr///////////////9DQ0P///////////////////////////////////////////////////////////////////////////////////+MjIyampoAAHx8fGZmZqurq////////////////////////////////////////////////2JiYlFRUf///////////////////3d3d////////////////////////////////////////////////////////////////////////////////////5eXl52dnQAAo6Oj////////////////////////////////////////////////////////////////////////////////////////d3d3////////////////////////////////////////////////////////////////////////////7+/voaGhp6enAAD////////////////////////////////////////////////////////////////////////////////////////////X19dbW1txcXGEhISEhISQkJCQkJCQkJCQkJCTk5OTk5OTk5OTk5OTk5OZmZmdnZ2dnZ2dnZ2dnZ2fn5+fn5+lpaWrq6sAAP///////////////////////////////////////////////////////////////////////////////////////////////1tbW2ZmZnx8fIyMjJKSkpKSkpycnJycnJmZmZmZmZ+fn5+fn5+fn5+fn6Ojo6Ojo6enp6enp6qqqqqqqqurq6urqwAA5ubm////////////////////////////////////////////////////////////////////////////////////////////8vLyZ2dndnV2h4eHk5OTmZmZnJ2cnp+en6CfoaGhnp6epKSkp6enp6enq6urq6urq6urq6urq6urr6+vr6+vr6+vAACioqL///////////////////////////////////////////////+Xl5fn5+f////////////////////////////////////6+vqSkpJwb3CBgYGTk5OZmZmgoKCioqKhoaGjoqOjo6Onp6enp6etra2rq6urq6urq6urq6uvr6+vr6+vr6+vr68AAJ6ensvLy////////////////////////////////////////xAQEAAAAAAAAP///////////////////////////////////////////2xsbHd3d46Pjpqamp+fn6SkpKOjo6Ojo6enp62traurq6urq6urq6urq6urq6urq6+vr6+vr6+vr6+vrwAAqqqqoaGh////////////////////////////////////////AAAAAAAAAAAA////////////////////////////////////////////u7u7d3d3jo+OmpqapKSkpKSkp6enp6enq6urq6urq6urr6+vq6urq6urr6+vr6+vr6+vr6+vr6+vr6+vAACys7KkpaSzs7P////////////////////////////////////7+/sVFRV7e3v///////////////////////////////////////////////+Hh4eRkpGdnZ2np6elpaWrq6urq6urq6uvr6+rq6urq6uvr6+vr6+1tbWvr6+vr6+vr6+1tbWvr68AALq7uqytrKSkpPj4+P///////////////////////////////////////////////////////////////////////////////////////////9XV1ZeXl6Oio6enp6urq6urq6urq6+vr6urq6urq6+vr6+vr6+vr6+vr6+vr6+vr6+vr6+vr6+vrwAAu7u7s7Ozo6Ojo6Oj////////////////////////////////////////////////////////////////////////////////////////////paWlnZ2dpaWlq6urq6urr6+vr6+vr6+vr6+vr6+vra2ttbW1r6+vr6+vr6+vr6+vr6+vr6+vr6+vAAC7u7u3t7eqqqqgoKDg4OD////////////////////////////////////////////////////////////////////////////////u7u6hoaGlpaWnp6erq6uvr6+vr6+vr6+vr6+vr6+vr6+1tbWzs7Ozs7Ozs7Otra2tra21tbW1tbWvr6+vr68AAL6+vru7u7e3t62traOjo/////////////////////////////////////////////////////////////////////////j4+KOjo52dnaenp62tra+vr6+vr7W1ta+vr7W1tbW1ta2trbOzs7Ozs7Ozs7Ozs7Ozs7Ozs62trbOzs7Ozs7Ozs7W1tQAAvr6+vr6+vb29ra2to6OjxMTE////////////////////n5+f////////////////////////////////////////1dXVpKSko6Ojra2tr6+vr6+vs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztbW1AAC/v7+/v7+/v7+3t7evr6+goKD///////////////8AAAAAAAAAAAD////////////////////////////b29ukpKSnp6etra2tra2zs7Ozs7Ozs7Ozs7Ozs7Ozs7O3t7ezs7O3t7ezs7O3t7ezs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7MAAA=="
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