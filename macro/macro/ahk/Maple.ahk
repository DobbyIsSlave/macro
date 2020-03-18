global macroActive := false

PgUp::
if (macroActive = false)
{
	macroActive := true
	hotkey, a, BlasterA, On
}
else
{
	macroActive := false
	hotkey, a, BlasterA, Off
}
return

BlasterA:

MagPangFast()
return