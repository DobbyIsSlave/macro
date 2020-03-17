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
	ransleep(400,450)
	domoveranattack("up", 85, "d")
	ransleep(150,200)
	domoveranattack("up", 85, "d")
	ransleep(130,180)
	loop, 4
	{
		domovewithjump("right")
		ransleep(70, 90)
		MagPang()
		ransleep(20, 30)
		ranattack(10, "s")
		ranShockWave(30, A_Index)
	}
	ranattack(35, "f")
	ransleep(300,350)
	domoveranattack("up", 85, "d")
	ransleep(150,100)
	domoveranattack("up", 85, "d")
	ransleep(130,180)
	loop, 4
	{
		domovewithjump("left")
		ransleep(70, 90)
		MagPang()
		ransleep(20, 30)
		ranattack(10, "s")
		ranShockWave(30, A_Index)
	}
	ranattack(35, "f")
	ransleep(300,350)
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
	ransleep(delay1, delay2)
	Send {c}
}
return

MagPang()
{
	Send {LShift down}
	ransleep(10, 20)
	Send {Ins down}
	ransleep(10, 20)
	Send {Ins up}
	ransleep(110, 130)
	Send {Home down}
	ransleep(10, 20)
	Send {Home up}
	ransleep(170, 190)
	Send {LShift up}
	ransleep(10, 20)
	Send {c down}
	ransleep(10, 20)
	Send {c UP}
	ransleep(100, 110)
}
return

MagPangSlow()
{
	Send {LShift down}
	rankeyevent()
	ransleep(19, 31)
	Send {Ins down}
	rankeyevent()
	ransleep(20, 27)
	Send {Ins up}
	rankeyevent()
	ransleep(119, 135)
	Send {Home down}
	rankeyevent()
	ransleep(18, 30)
	Send {Home up}
	rankeyevent()
	ransleep(171, 191)
	Send {LShift up}
	ransleep(16, 22)
	Send {c down}
	rankeyevent()
	ransleep(19, 30)
	Send {c UP}
	rankeyevent()
	ransleep(101, 123)
}
return

MagPangFast()
{
	Send {LShift down}
	ransleep(10, 20)
	Send {Ins down}
	ransleepwithkeyevent(2, 4)
	Send {Ins up}
	ransleep(110, 130)
	Send {Home down}
	ransleepwithkeyevent(2, 4)
	Send {Home up}
	ransleepwithkeyevent(165, 185)
	Send {LShift up}
	ransleep(10, 20)
	Send {c down}
	ransleepwithkeyevent(2, 4)
	Send {c UP}
	rankeyevent()
	ransleep(85, 90)
}
return

RelaseHammer()
{
	Send {f down}
	ransleep(1, 3)
	Send {v down}
	ransleep(10, 20)
	Send {s down}
	ransleep(20, 30)
	Send {s up}
	ransleep(200, 210)
	Send {f up}
	ransleep(240, 250)
	Send {v up}
	ransleep(1, 3)
	Send {c}
	ransleep(70, 80)
}