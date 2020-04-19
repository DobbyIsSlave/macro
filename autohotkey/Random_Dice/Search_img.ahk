Search_Img(image,hwnd, byref vx, byref vy, e1 = "55", x1 = "0", x2 = "0", y1 = "0", y2 = "0")
{
	pToken:=Gdip_Startup() 
	pBitmapHayStack:=Gdip_BitmapFromhwnd(hwnd) 
	pBitmapNeedle:=Gdip_CreateBitmapFromFile(image) 

	Sleep, 1000
	if Gdip_ImageSearch(pBitmapHayStack,pBitmapNeedle,list,x1,y1,x2,y2,e1,0x000000,1,1)
	{  
		StringSplit, LISTArray, LIST, `,  
		vx:=LISTArray1 
		vy:=LISTArray2
		Gdip_DisposeImage(pBitmapHayStack), Gdip_DisposeImage(pBitmapNeedle)
		Gdip_Shutdown(pToken)
		return true
	}
	else 
	{
		Gdip_DisposeImage(pBitmapHayStack), Gdip_DisposeImage(pBitmapNeedle)
		Gdip_Shutdown(pToken)
		return false
	}
}