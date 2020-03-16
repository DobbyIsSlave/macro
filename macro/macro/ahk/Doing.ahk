doattack(key)
{
	Send {%key% down}
	ransleep(50,100)
	Send {%key% up}
	ransleep(150,200)
}
return

dojumpattack(direction, key)
{
	if (direction = "left")
	{
		domovewithjump("left")
		ranattack(95, key)
		ransleep(100,150)
	}
	else
	{
		domovewithjump("right")
		ranattack(95, key)
		ransleep(100,150)
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
	ransleep(50,100)
	doattack(key)
	Send {%direction% up}
	ransleep(50, 100)
}
return

domoveattack2(direction1, direction2, key)
{
	Send {%direction1% down}
	ransleep(30,70)
	Send {%direction2% down}
	ransleep(50,100)
	doattack(key)
	Send {%direction1% up}
	ransleep(30,70)
	Send {%direction2% up}
	ransleep(50, 100)
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
	ransleep(5,70)
	Send {%direction% up}
	ransleep(20, 30)
}
return

dojump()
{
	Send {c down}
	ransleep(5,30)
	Send {c up}
	ransleep(5,30)
	Send {c down}
	ransleep(5,30)
	Send {c up}
	ransleep(5,30)
}
return

dojumpdown()
{
	Send {down down}
	ransleep(5,70)
	Send {c down}
	ransleep(5,70)
	Send {c up}
	ransleep(5,70)
	Send {down up}
	ransleep(5,70)
}
return

dojumpup()
{
	Send {c down}
	ransleep(5,70)
	Send {up down}
	ransleep(5,70)
	Send {up up}
	ransleep(5,70)
	Send {up down}
	ransleep(5,70)
	Send {up up}
	ransleep(5,70)
	Send {c up}
	ransleep(5,70)
}
return

ransleep(min,max)
{
	Random, rand, min, max
	sleep, rand
}
return