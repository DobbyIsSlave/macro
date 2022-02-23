SetBatchLines, -1
global macroActive := true

q::
if (macroActive = true)
{
	Random, rand, 0, 1
	if (rand = 0)
	{
		KeyDown("x")
	}
	else
	{
		KeyDown("z")
	}
	while GetkeyState("q", "P")
	{
		RanSleep(1, 2)
	}
	RanSleep(10, 20)
	if (rand = 0)
	{
		KeyUp("x")
	}
	else
	{
		KeyUp("z")
	}
	RanSleep(10, 20)
	DD._key_press("c")
}
else
{
	Send, q
}
return

^w::
if (macroActive = true)
{
	MagPangTest()
}
else
{
	Send, w
}
return

a::
if (macroActive = true)
{
	ShockWaveTest("x")
}
else
{
	Send, a
}
return

s::
if (macroActive = true)
{
	ShockWaveTest("z")
}
else
{
	Send, s
}
return

w::
if (macroActive = true)
{
	StrikerAttack()
}
else
{
	Send, w
}
return

ScrollLock::
{
	if (macroActive = true)
	{
		macroActive := false
	}
	else
	{ 
		macroActive := true
	}
}
return