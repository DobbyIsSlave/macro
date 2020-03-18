SetBatchLines, -1
global macroActive := false

a::
if (macroActive = true)
{
	MagPangFast()
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