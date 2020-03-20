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
	DD._key_press("q")
}
return

w::
if (macroActive = true)
{
	MagPangTest()
}
else
{
	DD._key_press("w")
}
return

a::
if (macroActive = true)
{
	ShockWaveTest("x")
}
else
{
	DD._key_press("a")
}
return

s::
if (macroActive = true)
{
	ShockWaveTest("z")
}
else
{
	DD._key_press("s")
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