;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         A.N.Other <myemail@nowhere.com>
;
; Script Function:
;	Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



Gui 1:+LastFound
GUI1:=WinExist() , hDC:=DllCall("GetDC",UInt,Gui1)
Gui, Add, Text, w32 h32 0xE hwndhPic ; SS_BITMAP = 0xE
GoSub, LoadBitmap1
hBMP := DllCall( "CreateDIBitmap", UInt,hDC, UInt,(bmiHAddr:=&BMP+14)
       ,UInt,(CBM_INIT:=4), UInt,&BMP+NumGet(BMP,10), UInt,&BMP+14, UInt,(DIB_PAL_COLORS:=1) )       
SendMessage, (STM_SETIMAGE:=0x172), (IMAGE_BITMAP:=0x0), hBMP,, ahk_id %hPic%
Gui, Show, w160 h120, sample
Return

GuiClose:
GuiEscape:
ExitApp
Return

LoadBitmap1:
BMPH =
(
424d360c000000000000360000002800000020000000200000000100180000000000000c000012170000121700000000000000000000ffffffffffffffffffffffffffffffffffffffffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000ffffffffffff000000ffffffffffffffffffffffffffffffffffff00000000000033ccff33ccff000000ffffffffffffffffff000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000000000ffffffffffffffffffffffffffffffffffff00000000000033ccff33ccff33ccff000000ffffffffffff000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000ffffffffffffffffffffffff00000000000033ccff33ccff33ccff33ccff33ccff000000ffffff000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000ffffffffffff00000000000033ccff33ccff33ccff33ccff000000000000000000000000000000ffff
)
BMPH =%BMPH%
(
ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00000000000033ccff33ccff33ccff33ccff33ccff0000006699cc6699cc6699cc000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00000033ccff33ccff33ccff33ccff0000006699cc6699cc6699cc6699cc6699cc000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00000033ccff33ccff33ccff33ccff0000006699cc6699cc6699cc6699cc6699cc000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00000033ccff33ccff33ccff0000006699cc6699cc6699cc6699cc6699cc6699cc6699cc000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00000033ccff33ccff33ccff0000006699cc000000000000000000000000000000000000000000000000000000000000ffffffffffffffffffffffffffffffffffffffffffff
)
BMPH =%BMPH%
(
ffffffffffffffffffffffffffffffffffffffffffffffffffff00000033ccff33ccff33ccff0000006699cc0000006699cc6699cc6699cc6699cc6699cc6699cc6699cc6699cc6699cc000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00000000000033ccff33ccff33ccff0000006699cc6699cc6699cc6699cc6699cc6699cc6699cc6699cc6699cc6699cc6699cc000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00000033ccff33ccff00000033ccff33ccff33ccff0000006699cc6699cc6699cc6699cc6699cc6699cc6699cc6699cc6699cc000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00000033ccff33ccff33ccff33ccff33ccff33ccff33ccff0000006699cc6699cc6699cc6699cc6699cc6699cc6699cc6699cc000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000ffffff00000000000000000033ccff33ccff33ccff33ccff33ccff33ccff0000000000000000006699cc6699cc6699cc6699cc000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000ffffff00000000000033ccff33ccff
)
BMPH =%BMPH%
(
33ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff000000000000000000000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00000000000000000033ccff33ccff00000033ccff33ccff33ccff00000000000000000000000033ccff33ccff33ccff33ccff33ccff000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00000033ccff33ccff00000000000033ccff33ccff33ccff000000ffffffffffffffffffffffff00000033ccff33ccff33ccff33ccff000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00000033ccff33ccff00000033ccff33ccff33ccff000000ffffffffffff000000ffffffffffffffffff000000000000000000000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00000033ccff33ccff33ccff33ccff33ccff33ccff33ccff000000ffffffffffffffffffffffffffffffffffff000000ffffffffffffffffff000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00000033ccff33ccff33ccff33ccff33ccff33ccff33ccff000000ffffffffffffffffffffffffffffffffffff000000ffffff0000
)
BMPH =%BMPH%
(
00ffffff000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00000033ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff000000ffffffffffffffffffffffff000000ffffffffffffffffffffffff000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00000033ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff000000000000000000000000000000ffffffffffffffffff000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00000033ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff000000000000000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00000033ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00000033ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
)
BMPH =%BMPH%
(
ffffffffffffffffffffffffffff00000033ccff00000033ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000ffffff00000033ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff33ccff000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000ffffff00000000000000000033ccff33ccff33ccff33ccff33ccff33ccff000000000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000000000ffffffffffff000000000000000000000000000000000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000000000000000ffffffffffff000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000000000000000000000
)
BMPH =%BMPH%
(
ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
)




; Laszlo's MCode() ; http://www.autohotkey.com/forum/viewtopic.php?p=135302#135302 
nSize := StrLen(BMPH)//2 
VarSetCapacity( BMP,nSize ) 
Loop % nSize 
  NumPut( "0x" . SubStr(BMPH,2*A_Index-1,2), BMP, A_Index-1, "Char" )
BMPH= ; empty it

Return