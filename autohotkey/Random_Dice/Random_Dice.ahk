#Include Gdip_all.ahk
#Include Gdip_ImageSearch.ahk
#Include Search_img.ahk
global appPlayer := 0
global repeatCount := 0

Gui, Add, Text, x20 y30 w70 h20, 실패횟수 :
Gui, Add, Text, x95 y30 w40 h20 v실패횟수, 0 회
Gui, Add, Text, x20 y10 w70 h20, 성공횟수 :
Gui, Add, Text, x95 y10 w40 h20 v성공횟수, 0 회
Gui, Add, Text, x20 y53 w60 h20, 횟수제한 :
Gui, Add, Edit, x85 y50 w40 h20 v제한, -1
Gui, Add, CheckBox, x20 y75 w120 h20 v옵션1 Checked1, 번개부족 시 번충
Gui, Add, CheckBox, x20 y95 w120 h20 v옵션2 Checked1, 번개부족 시 번충
Gui, Add, Text, x20 y123 w45 h20, 맵선택 :
Gui, Add, ComboBox, x70 y120 w60 h200 v목록 g옵션선택 Choose2, 화산|던전|이계|차원|레이드|아레나|월레나|시탑
Gui, Add, Text, x20 y148 w45 h20, 별등급 :
Gui, Add, ComboBox, x70 y145 w60 h200 v목록2 g옵션선택2 Choose2, 1성|2성|3성|4성
Gui, Add, Text, x150 y10 w150 h20, 룬 판매 등급 [룬선택시]
Gui, Add, Text, x150 y38 w50 h20, 5성 :
Gui, Add, ComboBox, x180 y35 w100 h60 v룬판매5성 Choose4, 희귀이하 판매|영웅이하 판매|모두 판매|전설 공속제외
Gui, Add, Text, x150 y63 w50 h20, 6성 :
Gui, Add, ComboBox, x180 y60 w100 h60 v룬판매6성 Choose1, 희귀이하 판매|영웅이하 판매
Gui, Add, ListView, x300 y35 w200 h123 v로그 Grid, 시간     |동작
Gui, Add, Button, x45 y182 w60 h20 g시작, 시작
Gui, Add, Button, x155 y182 w100 h20 g정지, 정지/재시작
Gui, Add, Button, x295 y182 w60 h20 g리셋, 리셋
Gui, Add, Button, x405 y182 w60 h20 g종료, 종료
Gui, Font, S8 CDefault Bold, Verdana
Gui, Add, Text, x435 y10 w65 h20 vA, Macro Off
Gui,Show, x1404 y803 w510 h210,  매크로
GuiControl, Disable, 목록2
return

F1::

Gui, submit, nohide
GuiControl, , A, Macro On
DetectHiddenWindows, On 
SetControlDelay -1
WinGet,appPlayer,ID,LDPlayer
SetKeyDelay, Delay, 300
LogAdd("Start")

if (제한 = -1)
{
	Loop
	{
		Doing()
		LogAdd("repeatCount : " . repeatCount)
		repeatCount++
	}
}
else
{
	Loop, %제한%
	{
		Doing()
	}
}

GuiControl, , A, Macro Off
LogAdd("End")
return


F2::

pause
return


F3::

reload
return


F4::

ExitApp
return


F5::
Gui, submit, nohide
GuiControl, , A, Macro On
DetectHiddenWindows, On 
SetControlDelay -1
WinGet,appPlayer,ID,LDPlayer
SetKeyDelay, Delay, 300
LogAdd("Start")

PostMessage, 0x100, 0x1b, 0x10001, RenderWindow1, LDPlayer
PostMessage, 0x101, 0x1b, 0xc0010001, RenderWindow1, LDPlayer

GuiControl, , A, Macro Off
LogAdd("End")
return


F9:: ;스크린샷

Gui, submit, nohide
GuiControl, , A, Macro On
DetectHiddenWindows, On 
SetControlDelay -1
WinGet,appPlayer,ID,LDPlayer
pToken := Gdip_Startup() 
pBitmap := Gdip_BitmapFromHWND(appPlayer) ;포인터
sFileTo = %A_ScriptDir%\Image\ScreenShot\%A_MM%월%A_DD%일%A_Hour%시%A_Min%분%A_Sec%초.bmp ;경로
Gdip_SaveBitmapToFile(pBitmap, sFileTo, Quality=100) ;스크린샷 저장
Gdip_Shutdown(pToken)
return


GuiClose:

ExitApp
return

Doing()
{
	LogAdd("Repeat...")
	if (SearchAndClick("Image\matchButton1.bmp", 1000))
	{
		repeatCount := 0
		if (SearchAndClick("Image\quickMatchButton1.bmp", 1000))
		{
			Run()
		}
	}
	else if (SearchAndClick("Image\advertiseButton1.bmp", 1000))
	{
		repeatCount := 0
		Loop, 2
		{
			if (SearchAndClick("Image\yesButton1.bmp", 0))
			{
				break
			}
			sleep, 1000
		}
		endcount := 0
		Loop
		{
			LogAdd("Wait For Close")
			finish := false
			Loop, 6
			{
				if (SearchAndClick("Image\advertiseCloseButton" . A_Index . ".bmp", 1000))
				{
					finish := true
					break
				}
			}
			if (finish)
			{
				break
			}
			if (endcount > 40)
			{
				ControlSend, , {ESC}, LDPlayer
				PostMessage, 0x100, 0x1b, 0x10001, RenderWindow1, LDPlayer
				PostMessage, 0x101, 0x1b, 0xc0010001, RenderWindow1, LDPlayer
				break
			}
			LogAdd("endcount : " . endcount)
			endcount++
		}
	}
	else if (repeatCount > 10)
	{
		PostMessage, 0x100, 0x1b, 0x10001, RenderWindow1, LDPlayer
		PostMessage, 0x101, 0x1b, 0xc0010001, RenderWindow1, LDPlayer
	}
	else if (SearchAndClick("Image\CancelButton1.bmp", 1000))
	{
	}
	else if (SearchAndClick("Image\okButton1.bmp", 1000))
	{
	}
}

Run()
{
	runCount := 0
	Loop
	{
		if (SearchAndClick("Image\okButton1.bmp", 1000))
		{
			runCount := 0
			break
		}
		Loop, 3
		{
			if (SearchAndClick("Image\DiceButton1.bmp", 500))
			{
				runCount := 0
			}
		}
		Attacker()
		if (runCount > 10)
		{
			break
		}
		LogAdd("runCount : " . runCount)
		runCount++
	}
}

Attacker()
{
	SearchAndClick("Image\windUpgradeButton1.bmp", 500)
	SearchAndClick("Image\steelUpgradeButton1.bmp", 500)
	SearchAndClick("Image\poisionUpgradeButton1.bmp", 500)
	SearchAndClick("Image\ThornUpgradeButton1.bmp", 500)
	SearchAndClick("Image\damageBuffUpgradeButton1.bmp", 500)
}

Supporter()
{
	SearchAndClick("Image\windUpgradeButton1.bmp", 500)
	SearchAndClick("Image\reverseUpgradeButton1.bmp", 500)
	SearchAndClick("Image\coldUpgradeButton1.bmp", 500)
	SearchAndClick("Image\lockUpgradeButton1.bmp", 500)
	SearchAndClick("Image\defenceUpgradeButton1.bmp", 500)
}

SearchAndClick(image, delay)
{
	if (Search_img(image,appPlayer,VX,VY))
	{
		LogAdd(image)
		RanClickOkButton(VX, VY)
		sleep, %delay%
		return true
	}
	return false
}

RanClick(x1, x2, y1, y2)
{
	Random, randx, %x1%, %x2%
	Random, randy, %y1%, %y2%
	ControlClick, x%randx% y%randy%, LDPlayer
	return
}

RanClickOkButton2(VX, VY)
{
	Random, randx, -5, 5
	Random, randy, -5, 5
	VX += randx
	VY += randy
	ControlClick, x%VX% y%VY%, LDPlayer
}

RanClickOkButton(VX, VY)
{
	CoordMode, Mouse, Window
	Random, randx, -5, 5
	Random, randy, -5, 5
	VX += randx
	VY += randy

	좌표값 := (VY * 65536) + VX
	PostMessage, 0x201, 1, %좌표값%, RenderWindow1, LDPlayer
	PostMessage, 0x202, 0, %좌표값%, RenderWindow1, LDPlayer
}

LogAdd(텍스트)
{
	FormatTime, OutTime, ,H:m:s
	LV_Add("",OutTime, 텍스트)
	SendMessage, 0x1014, 0, 1000,SysListView321,매크로 ;스크롤 아래로 1000만큼
	return 
}

옵션선택:

GuiControlGet, 목록
if (목록 = "화산")
{
	GuiControl, , 제한, 9
	GuiControl, , 목록2, |1성|2성||3성|4성
	GuiControl, Enable, 목록2
}
else if (목록 = "월레나")
{
	GuiControl, , 제한, 30
}
else
{
	GuiControl, , 제한, -1
	GuiControl, , 목록2, |1성|2성||3성|4성
	GuiControl, Disable, 목록2
}
return

옵션선택2:

GuiControlGet, 목록2
if (목록2 = "1성")
{
	GuiControl, , 제한, 4
}
else if (목록2 = "2성")
{
	GuiControl, , 제한, 9
}
else if (목록2 = "3성")
{
	GuiControl, , 제한, 22
}
else if (목록2 = "4성")
{
	GuiControl, , 제한, 49
}
return

시작:

Send {F1}
return

정지:

Send {F2}
return

리셋:

Send {F3}
return

종료:

Send {F4}
return