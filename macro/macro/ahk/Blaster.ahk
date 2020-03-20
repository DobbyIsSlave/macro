ranpatternBL(percent, num)
{
	a := 100 - percent
	Random, rand, 1, 100
	if (rand > a)
	{
		if (num = 1)
		{
			dopatternBL1()
		}
	}
}
return

dopatternBL1()
{
	MagPang()
	ranattack(80, "s")
	RanSleep(400,450)
	domoveranattack("up", 85, "d")
	RanSleep(150,200)
	domoveranattack("up", 85, "d")
	RanSleep(130,180)
	loop, 4
	{
		domovewithjump("right")
		RanSleep(70, 90)
		MagPang()
		RanSleep(20, 30)
		ranattack(10, "s")
		ranShockWave(30, A_Index)
	}
	ranattack(35, "f")
	RanSleep(300,350)
	domoveranattack("up", 85, "d")
	RanSleep(150,100)
	domoveranattack("up", 85, "d")
	RanSleep(130,180)
	loop, 4
	{
		domovewithjump("left")
		RanSleep(70, 90)
		MagPang()
		RanSleep(20, 30)
		ranattack(10, "s")
		ranShockWave(30, A_Index)
	}
	ranattack(35, "f")
	RanSleep(300,350)
}
return

ranShockWave(percent, num)
{
	a := 100 - percent
	Loop, %num%
	{
		Random, rand, 1, 100
		if (rand > a)
		{
			Random,rannum,1,3
			if (rannum = 1)
			{
				ShockWaveQWE("q")
			}
			else if (rannum = 2)
			{
				ShockWaveQWE("w")
			}
			else
			{
				ShockWaveQWE("e")
			}
		}
	}
}
return

ShockWaveQWE(key)
{
	;Send {down down}
	;Send {up down}
	Loop, 5
	{
		if (key = "q")
		{
			ShockWave(100, 110, "x")
		}
		else if (key = "w")
		{
			ShockWave(1, 3, "v")
		}
		else
		{
			ShockWave(100, 110, "v")
		}
	}
	;Send {down up}
	;Send {up up}
}
return

ShockWave(delay1, delay2, key)
{
	Send {LShift}
	Send {%key%}
	RanSleep(delay1, delay2)
	Send {c}
}
return

MagPang()
{
	Send {LShift down}
	RanSleep(10, 20)
	Send {Ins down}
	RanSleep(10, 20)
	Send {Ins up}
	RanSleep(110, 130)
	Send {PgUp down}
	RanSleep(10, 20)
	Send {PgUp up}
	RanSleep(170, 190)
	Send {LShift up}
	RanSleep(10, 20)
	Send {c down}
	RanSleep(10, 20)
	Send {c up}
	RanSleep(100, 110)
}
return

MagPangFast()
{
	Send {LShift down}
	RanSleep(10, 20)
	Send {Ins down}
	RanSleep(10, 20)
	Send {Ins up}
	RanSleepOrEvent(4, 10, 15)
	Send {PgUp down}
	RanSleep(10, 20)
	Send {PgUp up}
	RanSleepOrEvent(6, 20, 25)
	Send {LShift up}
	RanSleep(10, 20)
	Send {c down}
	RanSleep(10, 20)
	Send {c up}
	RanSleepOrEvent(3, 25, 30)
}
return

MagPangSlow()
{
	Send {LShift down}
	RanSleep(10, 20)
	Send {Ins down}
	RanSleepWithKeyEvent(2, 4)
	Send {Ins up}
	RanSleep(110, 130)
	Send {PgUp down}
	RanSleepWithKeyEvent(2, 4)
	Send {PgUp up}
	RanSleepWithKeyEvent(165, 185)
	Send {LShift up}
	RanSleep(10, 20)
	Send {c down}
	RanSleepWithKeyEvent(2, 4)
	Send {c up}
	RanKeyEvent()
	RanSleep(85, 90)
}
return

MagPangHardware()
{
	KeyDown("LShift")
	RanSleep(10, 20)
	KeyDown("Ins")
	RanSleep(10, 20)
	KeyUp("Ins")
	RanSleepOrEvent(4, 10, 15)
	KeyDown("PgUp")
	RanSleep(10, 20)
	KeyUp("PgUp")
	RanSleepOrEvent(6, 20, 25)
	KeyUp("LShift")
	RanSleep(10, 20)
	KeyDown("c")
	RanSleep(10, 20)
	KeyUp("c")
	RanSleepOrEvent(3, 25, 30)
}
return

MagPangTest()
{
	KeyDown("Ins")
	RanSleep(10, 20)
	KeyUp("Ins")
	RanSleep(120, 130)
	KeyDown("PgUp")
	RanSleep(10, 20)
	KeyUp("PgUp")
}

ShockWaveTest2(key)
{
	DD._key_press("Shift")
	RanSleep(5, 10)
	DD._key_press(key)
}
return

ShockWaveTest(key)
{
	RanSleep(5, 10)
	KeyDown(key)
	RanSleep(5, 10)
	KeyDown("Shift")
	RanSleep(5, 10)
	KeyUp("Shift")
	RanSleep(230, 240)
	KeyUp(key)
	RanSleep(5, 10)
}
return

RelaseHammer()
{
	Send {f down}
	RanSleep(1, 3)
	Send {v down}
	RanSleep(10, 20)
	Send {s down}
	RanSleep(20, 30)
	Send {s up}
	RanSleep(200, 210)
	Send {f up}
	RanSleep(240, 250)
	Send {v up}
	RanSleep(1, 3)
	Send {c}
	RanSleep(70, 80)
}