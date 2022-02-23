doattack(key)
{
	Send {%key% down}
	RanSleep(50,100)
	Send {%key% up}
	RanSleep(150,200)
}
return

dojumpattack(direction, key)
{
	if (direction = "left")
	{
		domovewithjump("left")
		ranattack(95, key)
		RanSleep(100,150)
	}
	else
	{
		domovewithjump("right")
		ranattack(95, key)
		RanSleep(100,150)
	}
}
return

ranattack(percent, key)
{
	a := 100 - percent
	Random, rand, 1, 100
	if (rand > a)
	{
		doattack(key)
		return 1
	}
	return 0
}
return

domoveattack(direction, key)
{
	Send {%direction% down}
	RanSleep(50,100)
	doattack(key)
	Send {%direction% up}
	RanSleep(50, 100)
}
return

domoveattack2(direction1, direction2, key)
{
	Send {%direction1% down}
	RanSleep(30,70)
	Send {%direction2% down}
	RanSleep(50,100)
	doattack(key)
	Send {%direction1% up}
	RanSleep(30,70)
	Send {%direction2% up}
	RanSleep(50, 100)
}
return

domoveranattack(direction, percent, key)
{
	a := 100 - percent
	Random, rand, 1, 100
	if (rand > a)
	{
		domoveattack(direction, key)
		return 1
	}
	return 0
}
return

domoveranattack2(direction1, direction2, percent, key)
{
	a := 100 - percent
	Random, rand, 1, 100
	if (rand > a)
	{
		domoveattack2(direction1, direction2, key)
		return 1
	}
	return 0
}
return

domovewithjump(direction)
{
	Send {%direction% down}
	dojump()
	RanSleep(5,70)
	Send {%direction% up}
	RanSleep(20, 30)
}
return

dojump()
{
	Send {c down}
	RanSleep(5,30)
	Send {c up}
	RanSleep(5,30)
	Send {c down}
	RanSleep(5,30)
	Send {c up}
	RanSleep(5,30)
}
return

dojumpdown()
{
	Send {down down}
	RanSleep(5,70)
	Send {c down}
	RanSleep(5,70)
	Send {c up}
	RanSleep(5,70)
	Send {down up}
	RanSleep(5,70)
}
return

dojumpup()
{
	Send {c down}
	RanSleep(5,70)
	Send {up down}
	RanSleep(5,70)
	Send {up up}
	RanSleep(5,70)
	Send {up down}
	RanSleep(5,70)
	Send {up up}
	RanSleep(5,70)
	Send {c up}
	RanSleep(5,70)
}
return

RanSleepWithKeyEvent(min, max)
{
	RanKeyEvent()
	RanSleep(min, max)
}
return

RanSleepOrEvent(count, min, max)
{
	Loop, %count%
	{
		Random, rand, 0, 2
		{
			if (rand = 0 || rand = 1)
			{
				RanKeyEvent()
			}
			else if (rand = 2)
			{
				RanSleep(25, 30)
			}
		}
	}
	RanSleep(min, max)
}
return

RanKeyEvent()
{
	Random, rand, 0, 6
	if (rand = 0)
	{
		KeyEvent("^!a")
	}
	else if (rand = 1)
	{
		KeyEvent("^!b")
	}
	else if (rand = 2)
	{
		KeyEvent("^!c")
	}
	else if (rand = 3)
	{
		KeyEvent("^!d")
	}
	else if (rand = 4)
	{
		KeyEvent("^!e")
	}
	else if (rand = 5)
	{
		KeyEvent("^!f")
	}
	else if (rand = 6)
	{
		KeyEvent("^!g")
	}
}
return

KeyEvent(key)
{
	RanSleep(12, 14)
	;Send {%key% down}
	KeyDown(key)
	RanSleep(13, 15)
	;Send {%key% up}
	KeyUp(key)
}

RanSleep(min,max)
{
	Random, rand, min, max
	sleep, rand
}
return

KeyDown(key)
{
	DD._key(key, "Down")
}
return

KeyUp(key)
{
	DD._key(key, "Up")
}
return