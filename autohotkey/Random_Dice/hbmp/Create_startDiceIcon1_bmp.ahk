; ##################################################################################
; # This #Include file was generated by Image2Include.ahk, you must not change it! #
; ##################################################################################
Create_startDiceIcon1_bmp(NewHandle := False) {
Static hBitmap := 0
If (NewHandle)
   hBitmap := 0
If (hBitmap)
   Return hBitmap
VarSetCapacity(B64, 1252 << !!A_IsUnicode)
B64 := "Qk2qAwAAAAAAADYAAAAoAAAAEQAAABEAAAABABgAAAAAAHQDAAAAAAAAAAAAAAAAAAAAAAAA5eMX1Nguj5E+QEEmJiYaIB8XJSAXKiUaOzkjeno0y88w3fIY3vkU4f0V4vwV5PgU6PEUAODgKpGPOzQ0IB8dFCccFEEpFFc3FU01FTQpFiooGWNmL7/RLtv0F+T7FOL5FOTwFOnkFAC2ujZLSyokIRc6JhN5SROwcxW/jRWfixRjVRQwLBQlJhd1fDPH2iPZ8BPc8RTk7RTo4hQAi401MjEfKx4Ufk4TzYwU564U5sIU0cAUnI4UTFETHyESOz8hrrwvy+AUz+UT2e0U4+cUAHN1MignGjMfFJVWFNeXFOjBFObKFNiwFLmkFGpzFCYoEyQmGJahM8jaF8jeE83lFNPjEwBxczAmJhkxHBRyMxTCfRTapBXXmxPOnxS6phR/ihQsMRQgIheLmTPB0xjF2hPH3xPD2hMAhYczMTEdTDEUczgTsXIUv4cUv6gUurYUsqgUh4kWJikUJykamqc0wNQWxNkTy+ATx94TAK+vOEBAI0k5FJlnFKJjE4pGEaN+E62uFaenFWBfFBcXE0pNKbTCK8zcE9PgE9DeFMzgFADU0ix0dC8uKxhhShSbdx2kfyCslCGgoB9sdBcnKRMpKx6NlTbE0xvR3BPi3xTk3hTV4BQA3tIZu7kvYmUsLy8aPzwbWVojW14kQkUdJygYNDcheYYzvtAk0eAU3N8T6t4U7N4U4+ATAOPNE9fOGbq5LYCDLlRWJkBBIjk7IUJGJV9nK46eL7jTItDsFeHvFOrnFO3jFOzhE+bdEwDtzBPdzRTSyhfIxCC3uSekqyqcqCqltimzyyS92hy92BPP5hTm8xTo7RTq7RTn6xTe4hQA7skT3ssU180V1c0V09MW0dwYz+YYzO4WvuoUs+QUstkTx94T4vMU4vQU4fUU2vYU0PMUAOG9E9jGFNfPFdbSFdbWFdffFNPrFMn1FLbwE6jiE6PJFMLXFOPtFOLtFN/xFNb6E8r7FADTsxPZyRTY0BXW0hXW1BXV2BTP3RTJ6hS77ROs6ROx3hPR5RTj5xTk5xTg6xPd9RPa/BQAvaUT28kU188U1NAV0tEV0tIVztUUx94Txe4TwfkUyvsU0vUU1+wT2+wT2O8T4vcU6PYUALiiE9bEFNLMFcjLFcXIFcTFFMTKFL/SFLXdE7z1FMP8FMj8FM75FND3FNH5FOL6FOz3FAA="
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