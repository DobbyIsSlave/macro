#Include Create_xxx_bmp.ahk
global BMPh := Create_xxx_bmp()

ImageSearch, mouseClickX, mouseClickY, 0,0, 1920, 1080, HBITMAP:*%BMPh%