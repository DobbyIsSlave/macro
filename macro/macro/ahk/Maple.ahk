SetBatchLines, -1
global macroActive := false

a::
if (macroActive = true)
{
	MagPangHardware()
}
else
{
	Send, a
}
return

s::
if (macroActive = true)
{
	MagPangTest()
}
else
{
	Send, a
}
return

PgUp::
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