curVer := 1.0

#Include Gdip_all.ahk
#Include Gdip_ImageSearch.ahk
#Include Search_img.ahk
#NoTrayIcon

;이미지 로드
#Include Load_hbmp.ahk

;onedrive
;URLDownloadToFile, https://onedrive.live.com/download?cid=D0CC7D42B27EDDFA&resid=D0CC7D42B27EDDFA`%21620&authkey=APrPUn8zaeKGPq4, UpdateVer.txt


;google drive
URLDownloadToFile, https://docs.google.com/uc?export=download&id=1qPHReOPhW55Q-fYpIgPGa8R8KtU5PJLu, UpdateVer.txt
FileRead, updateVer, UpdateVer.txt
FileDelete, UpdateVer.txt

;이전 버전 삭제
FileDelete, Dice*.exe

if (curVer < UpdateVer)
{
	MsgBox, 새버전으로 업데이트 합니다.`n프로그램이 재시작 됩니다.
	URLDownloadToFile, https://docs.google.com/uc?export=download&id=1Rlm5J06kiR1m5GbZOE12fvkx4CJIaXFi, UpdateURL.txt
	FileRead, updateURL, UpdateURL.txt
	FileDelete, UpdateURL.txt
	;Url            = updateURL
	;DownloadAs     = Dice%UpdateVer%.exe
	;Overwrite      := True 
	;UseProgressBar := True
	;DownloadFile(Url, DownloadAs, Overwrite, UseProgressBar)
	URLDownloadToFile, %updateURL%, Dice%UpdateVer%.exe
	run, Dice%UpdateVer%.exe
	exitapp
}

URLDownloadToFile, https://docs.google.com/uc?export=download&id=1jP22jHfmFP8-D7ZnIv150_swMhCnDrAs, UserList.txt
FileRead, userList, UserList.txt
FileDelete, UserList.txt

if (userList = "hakhak")
{
	nick:="hakhak"
	MsgBox, , , %nick%님 어서오세요, 2
	goto, MAIN
}
MsgBox, 인증되지 않으셨습니다.`n프로그램을 종료합니다.
ExitApp


MAIN:


global appPlayerName := "LDPlayer-2"
global appPlayerID := 0
global repeatCount := 0
global gotoInit := 0

Gui, Add, Text, x20 y15 w90 h20, 앱플레이어 이름
Gui, Add, Edit, x20 y35 w90 h20 g앱플레이어 v앱플레이어, LDPlayer-2
;Gui, Add, Text, x20 y10 w70 h20, 성공횟수 :
;Gui, Add, Text, x95 y10 w40 h20 v성공횟수, 0 회

;Gui, Add, Text, x20 y63 w60 h20, 횟수제한 :
;Gui, Add, Edit, x85 y60 w40 h20 v제한, -1

;Gui, Add, CheckBox, x20 y85 w120 h20 v옵션1 Checked1, 번개부족 시 번충

;Gui, Add, Text, x20 y113 w45 h20, 맵선택 :
;Gui, Add, ComboBox, x70 y110 w60 h200 v목록 g옵션선택 Choose2, 화산|던전|이계|차원|레이드|아레나|월레나|시탑

;Gui, Add, Text, x20 y138 w45 h20, 별등급 :
;Gui, Add, ComboBox, x70 y135 w60 h200 v목록2 g옵션선택2 Choose2, 1성|2성|3성|4성

Gui, Add, Text, x150 y15 w150 h20, 사용할 주사위 선택
Gui, Add, Text, x150 y38 w50 h20, 1번째 :
Gui, Add, ComboBox, x200 y35 w80 h200 v1번째 Choose1, 태풍|SP|독|가시|방패|쇠|바람|얼음|텔포|잠금|균열|크리|지옥
Gui, Add, Text, x150 y63 w50 h20, 2번째 :
Gui, Add, ComboBox, x200 y60 w80 h200 v2번째 Choose13, 태풍|SP|독|가시|방패|쇠|바람|얼음|텔포|잠금|균열|크리|지옥
Gui, Add, Text, x150 y88 w50 h20, 3번째 :
Gui, Add, ComboBox, x200 y85 w80 h200 v3번째 Choose3, 태풍|SP|독|가시|방패|쇠|바람|얼음|텔포|잠금|균열|크리|지옥
Gui, Add, Text, x150 y113 w50 h20, 4번째 :
Gui, Add, ComboBox, x200 y110 w80 h200 v4번째 Choose4, 태풍|SP|독|가시|방패|쇠|바람|얼음|텔포|잠금|균열|크리|지옥
Gui, Add, Text, x150 y138 w50 h20, 5번째 :
Gui, Add, ComboBox, x200 y135 w80 h200 v5번째 Choose5, 태풍|SP|독|가시|방패|쇠|바람|얼음|텔포|잠금|균열|크리|지옥

Gui, Add, ListView, x300 y35 w200 h123 v로그 Grid, 시간     |동작

Gui, Add, Button, x19 y182 w60 h20 g시작, 시작
Gui, Add, Button, x90 y182 w90 h20 g정지, 정지/재시작
Gui, Add, Button, x190 y182 w90 h20 g엔드, 이번까지만
Gui, Add, Button, x290 y182 w60 h20 g리셋, 리셋
Gui, Add, Button, x360 y182 w70 h20 g상자깡, 상자깡
Gui, Add, Button, x440 y182 w60 h20 g종료, 종료

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
WinGet,appPlayerID,ID,%appPlayerName%
SetKeyDelay, Delay, 300
LogAdd("Start")
gotoInit := 0

Loop
{
	Doing()
	LogAdd("repeatCount : " . repeatCount)
	repeatCount++
	
	if (gotoInit = 1)
	{
		break
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


F9:: ;스크린샷

Gui, submit, nohide
GuiControl, , A, Macro On
DetectHiddenWindows, On 
SetControlDelay -1
WinGet,appPlayerID,ID,%appPlayerName%
pToken := Gdip_Startup() 
pBitmap := Gdip_BitmapFromHWND(appPlayerID) ;포인터
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
	if (SearchHbmpAndClickProtectError(matchButton1, 2000) || SearchHbmpAndClickProtectError(matchButton2, 2000))
	{
		repeatCount := 0
		if (SearchHbmpAndClickProtectError(quickMatchButton1, 1000))
		{
			Run()
		}
	}
	else if (SearchHbmpAndClickProtectError(advertiseButton1, 1000))
	{
		repeatCount := 0
		Loop, 2
		{
			if (SearchHbmpAndClickProtectError(yesButton1, 0))
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
			Loop, 8
			{
				temp := advertiseCloseButton%A_Index%
				if (SearchHbmpAndClickProtectError(temp, 1000))
				{
					finish := true
					break
				}
			}
			if (finish)
			{
				break
			}
			if (endcount > 15)
			{
				PostMessage, 0x100, 0x1b, 0x10001, RenderWindow1, %appPlayerName%
				PostMessage, 0x101, 0x1b, 0xc0010001, RenderWindow1, %appPlayerName%
				break
			}
			LogAdd("endcount : " . endcount)
			endcount++
		}
	}
	else if (repeatCount > 10)
	{
		PostMessage, 0x100, 0x1b, 0x10001, RenderWindow1, %appPlayerName%
		PostMessage, 0x101, 0x1b, 0xc0010001, RenderWindow1, %appPlayerName%
	}
	else if (repeatCount > 60)
	{
		;TODO : 껏다키기
	}
	else if (SearchHbmpAndClick(cancelButton1, 2000))
	{
	}
	else if (SearchHbmpAndClick(agreeButton1, 1000))
	{
	}
	else if (SearchHbmpAndClick(okButton1, 1000) || SearchHbmpAndClick(okButton2, 1000))
	{
	}
}

Run()
{
	runCount := 0
	Loop
	{
		if (SearchHbmpAndClickProtectError(okButton1, 1000) || SearchHbmpAndClickProtectError(okButton2, 1000))
		{
			runCount := 0
			break
		}
		else if (SearchHbmp(matchButton1) || SearchHbmp(matchButton2))
		{
			break
		}
		Loop, 3
		{
			if (SearchHbmpAndClick(DiceButton1, 500))
			{
				runCount := 0
			}
		}
		Playing()
		if (runCount > 10)
		{
			break
		}
		LogAdd("runCount : " . runCount)
		runCount++
	}
}

Playing()
{
	GuiControlGet, 1번째
	GuiControlGet, 2번째
	GuiControlGet, 3번째
	GuiControlGet, 4번째
	GuiControlGet, 5번째
	
	CheckDice(1번째)
	CheckDice(2번째)
	CheckDice(3번째)
	CheckDice(4번째)
	CheckDice(5번째)
}


CheckDice(dice)
{
	if (dice = "태풍")
	{
		SearchHbmpAndClick(typhoonUpgradeButton1, 500)
	}
	else if (dice = "SP")
	{
		SearchHbmpAndClick(spDamageUpgradeButton1, 500)
	}
	else if (dice = "독")
	{
		SearchHbmpAndClick(poisionUpgradeButton1, 500)
	}
	else if (dice = "가시")
	{
		SearchHbmpAndClick(thornUpgradeButton1, 500)
	}
	else if (dice = "방패")
	{
		SearchHbmpAndClick(shieldUpgradeButton1, 500)
	}
	else if (dice = "쇠")
	{
		SearchHbmpAndClick(steelUpgradeButton1, 500)
	}
	else if (dice = "바람")
	{
		SearchHbmpAndClick(windUpgradeButton1, 500)
	}
	else if (dice = "얼음")
	{
		SearchHbmpAndClick(coldUpgradeButton1, 500)
	}
	else if (dice = "텔포")
	{
		SearchHbmpAndClick(reverseUpgradeButton1, 500)
	}
	else if (dice = "잠금")
	{
		SearchHbmpAndClick(lockUpgradeButton1, 500)
	}
	else if (dice = "균열")
	{
		SearchHbmpAndClick(crackUpgradeButton1, 500)
	}
	else if (dice = "크리")
	{
		SearchHbmpAndClick(criticalUpgradeButton1, 500)
	}
	else if (dice = "지옥")
	{
		SearchHbmpAndClick(hellUpgradeButton1, 500)
	}
}

SearchHbmpAndClickProtectError(hbmp, delay)
{
	if (Search_img(hbmp,appPlayerID,VX,VY))
	{
		LogAdd("image")
		sleep, 300
		RanClickOkButton(VX, VY)
		sleep, %delay%
		if (Search_img(hbmp,appPlayerID,VX,VY))
		{
			sleep, 300
			RanClickOkButton(VX, VY)
			sleep, %delay%
			return true
		}
		else
		{
			return true
		}
	}
	return false
}

SearchAndClickProtectError(image, delay)
{
	if (Search_img(image,appPlayerID,VX,VY))
	{
		LogAdd(image)
		sleep, 300
		RanClickOkButton(VX, VY)
		sleep, %delay%
		if (Search_img(image,appPlayerID,VX,VY))
		{
			LogAdd("again" . image)
			sleep, 300
			RanClickOkButton(VX, VY)
			sleep, %delay%
			return true
		}
		else
		{
			return true
		}
	}
	return false
}

SearchHbmpAndClick(hbmp, delay)
{
	if (SearchFromHbitmap(hbmp,appPlayerID,VX,VY))
	{
		LogAdd("image")
		sleep, 300
		RanClickOkButton(VX, VY)
		sleep, %delay%
		return true
	}
	return false
}

SearchAndClick(image, delay)
{
	if (Search_img(image,appPlayerID,VX,VY))
	{
		LogAdd(image)
		sleep, 300
		RanClickOkButton(VX, VY)
		sleep, %delay%
		return true
	}
	return false
}

SearchHbmp(hbmp)
{
	if (SearchFromHbitmap(hbmp,appPlayerID,VX,VY))
	{
		LogAdd("image")
		return true
	}
	return false
}

Search(image)
{
	if (Search_img(image,appPlayerID,VX,VY))
	{
		LogAdd(image)
		return true
	}
	return false
}

RanClick(x1, x2, y1, y2)
{
	
	Random, randx, %x1%, %x2%
	Random, randy, %y1%, %y2%
	ControlClick, x%randx% y%randy%, %appPlayerName%
	return
}

RanClickOkButton2(VX, VY)
{
	Random, randx, -5, 5
	Random, randy, -5, 5
	VX += randx
	VY += randy
	ControlClick, x%VX% y%VY%, %appPlayerName%
}

RanClickOkButton(VX, VY)
{
	CoordMode, Mouse, Window
	Random, randx, -5, 5
	Random, randy, -5, 5
	VX += randx
	VY += randy

	좌표값 := (VY * 65536) + VX
	PostMessage, 0x201, 1, %좌표값%, RenderWindow1, %appPlayerName%
	PostMessage, 0x202, 0, %좌표값%, RenderWindow1, %appPlayerName%
}

LogAdd(텍스트)
{
	FormatTime, OutTime, ,H:m:s
	LV_Add("",OutTime, 텍스트)
	SendMessage, 0x1014, 0, 1000,SysListView321,매크로 ;스크롤 아래로 1000만큼
	return 
}

앱플레이어:

GuiControlGet, 앱플레이어
appPlayerName := 앱플레이어
return

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

엔드:

gotoInit := 1
return

리셋:

Send {F3}
return

상자깡:

Gui, submit, nohide
GuiControl, , A, Macro On
DetectHiddenWindows, On 
SetControlDelay -1
WinGet,appPlayerID,ID,%appPlayerName%
SetKeyDelay, Delay, 300
LogAdd("Start")
gotoInit := 0

Loop
{
	if (SearchAndClick("Image\openBoxButton1.bmp", 2000))
	{
		if (SearchAndClick("Image\openButton1.bmp", 2000))
		{
			if (SearchAndClick("Image\tapBoxButton1.bmp", 6000))
			{
				Loop, 4
				{
					if (SearchAndClick("Image\agreeButton1.bmp", 1000))
					{
					}
				}
			}
			else if (SearchAndClick("Image\agreeButton2.bmp", 2000))
			{
				break
			}
		}
	}
	if (gotoInit = 1)
	{
		break
	}
}

GuiControl, , A, Macro Off
LogAdd("End")
return

종료:

Send {F4}
return


DownloadFile(UrlToFile, SaveFileAs, Overwrite := True, UseProgressBar := True)
{
	If (!Overwrite && FileExist(SaveFileAs))
		Return
	If (UseProgressBar) 
	{
		WebRequest := ComObjCreate("WinHttp.WinHttpRequest.5.1")
		WebRequest.Open("HEAD", UrlToFile)
		WebRequest.Send()
		FinalSize := WebRequest.GetResponseHeader("Content-Length")
		Progress, H80, , Downloading..., %UrlToFile%
		SetTimer, __UpdateProgressBar, 10
	}
	UrlDownloadToFile, %UrlToFile%, %SaveFileAs%
	If (UseProgressBar) 
	{
		Progress, Off
		SetTimer, __UpdateProgressBar, Off
	}
	Return

	__UpdateProgressBar:
	CurrentSize := FileOpen(SaveFileAs, "r").Length
	CurrentSizeTick := A_TickCount
	Speed := Round((CurrentSize/1024-LastSize/1024)/((CurrentSizeTick-LastSizeTick)/1000)/1000) . " Mb/s"
	LastSizeTick := CurrentSizeTick
	LastSize := FileOpen(SaveFileAs, "r").Length
	PercentDone := Round(CurrentSize/FinalSize*100)
	Progress, %PercentDone%, %PercentDone%`% Done, Downloading...  (%Speed%), Downloading %SaveFileAs% (%PercentDone%`%)
	Return
}