global appPlayer := 0


F1::

Gui, submit, nohide
DetectHiddenWindows, On 
SetControlDelay -1
WinGet,appPlayer,ID,LDPlayer
SetKeyDelay, Delay, 300

Loop
{
	Doing()
}
return


Doing()
{
	if (Search_Img("ahk/Random_Dice/Image/matchButton1.bmp",appPlayer,VX,VY))
	{
		RanClickOkButton(VX, VY)
		sleep, 1000
		if (Search_Img("ahk/Random_Dice/Image/quickMatchButton1.bmp",appPlayer,VX,VY))
		{
			RanClickOkButton(VX, VY)
			sleep, 1000
			Run()
		}
	}
	else if (Search_Img("ahk/Random_Dice/Image/advertiseButton1.bmp",appPlayer,VX,VY))
	{
		RanClickOkButton(VX, VY)
		sleep, 1000
		Loop, 2
		{
			if (Search_Img("ahk/Random_Dice/Image/yesButton1.bmp",appPlayer,VX,VY))
			{
				RanClickOkButton(VX, VY)
				break
			}
			sleep, 1000
		}
		endcount := 0
		Loop
		{
			finish := false
			Loop, 6
			{
				if (Search_Img("ahk/Random_Dice/Image/advertiseCloseButton" . A_Index . ".bmp",appPlayer,VX,VY))
				{
					sleep, 1000
					RanClickOkButton(VX, VY)
					finish := true
					sleep, 1000
					break
				}
			}
			if (finish)
			{
				break
			}
			if (endcount > 60)
			{
				ControlSend, , {ESC}, LDPlayer
				break
			}
			endcount++
		}
	}
}

Run()
{
	Loop
	{
		if (Search_Img("ahk/Random_Dice/Image/okButton1.bmp",appPlayer,VX,VY))
		{
			RanClickOkButton(VX, VY)
			sleep, 1000
			break
		}
		Loop, 3
		{
			SearchAndClick("ahk/Random_Dice/Image/DiceButton1.bmp", 500)
		}
		Attacker()
	}
}

Attacker()
{
	SearchAndClick("ahk/Random_Dice/Image/windUpgradeButton1.bmp", 500)
	SearchAndClick("ahk/Random_Dice/Image/spDamageUpgradeButton1.bmp", 500)
	SearchAndClick("ahk/Random_Dice/Image/poisionUpgradeButton1.bmp", 500)
	SearchAndClick("ahk/Random_Dice/Image/ThornUpgradeButton1.bmp", 500)
	SearchAndClick("ahk/Random_Dice/Image/damageBuffUpgradeButton1.bmp", 500)
}

Supporter()
{
	SearchAndClick("ahk/Random_Dice/Image/windUpgradeButton1.bmp", 500)
	SearchAndClick("ahk/Random_Dice/Image/reverseUpgradeButton1.bmp", 500)
	SearchAndClick("ahk/Random_Dice/Image/coldUpgradeButton1.bmp", 500)
	SearchAndClick("ahk/Random_Dice/Image/lockUpgradeButton1.bmp", 500)
	SearchAndClick("ahk/Random_Dice/Image/defenceUpgradeButton1.bmp", 500)
}

SearchAndClick(image, delay)
{
	if (Search_Img(image,appPlayer,VX,VY))
	{
		RanClickOkButton(VX, VY)
		sleep, %delay%
	}
}

RanClick(x1, x2, y1, y2)
{
	Random, randx, %x1%, %x2%
	Random, randy, %y1%, %y2%
	ControlClick, x%randx% y%randy%, LDPlayer
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