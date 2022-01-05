CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
hbColor:= "0xD13D4B"
coverColor:= "0xA62631"
firstLine:= 1292
firstDetectPointY:= 495
secondDetectPointY:= 430
thirdDetectPointY:= 330
fourthDetectPointY:= 279
closeButtonY:= 286
sleepTime:= 0
interval:= 800
; closeHB(detectRPosotion,closeButtonX){
; 	global closeButtonY
; 	PixelGetColor,color1,%detectRPosotion%,%closeButtonY%,rgb
; 	ToolTip, %color1%
; 	if (color1 == coverColor)
; 	{
; 		MouseMove, %closeButtonX%, %closeButtonY%
; 		Sleep, %sleepTime%
; 		MouseClick, left
; 	}
; 	if (color1 == hbColor)
; 	{
; 		KeyWait, LButton
; 	}
; }
Loop {
	Loop{
		PixelGetColor,color2,1200,358,rgb
	} Until color2 !="0xD4D4D4"
	PixelGetColor,color3,%firstLine%,%closeButtonY%,rgb
	if (color3 == coverColor || color3 == hbColor)
	{
		MouseMove, 1339, %closeButtonY%
		; Sleep, %sleepTime%
		MouseClick, left
	}
	; if (color3 == hbColor)
	; {
	; 	ToolTip, %color3%
	; 	KeyWait, LButton, D
	; }
	PixelGetColor,color1,%firstLine%,%firstDetectPointY%,rgb
	if (color1 == hbColor)
	{
		MouseMove,%firstLine%,%firstDetectPointY%
		; Sleep, %sleepTime%
		MouseClick, left
		Sleep, %interval%
		; closeHB(firstLine,1339)
		Continue
	}
	PixelGetColor,color1,%firstLine%,%secondDetectPointY%,rgb
	if (color1 == hbColor)
	{
		MouseMove,%firstLine%,%secondDetectPointY%
		; Sleep, %sleepTime%
		MouseClick, left
		Sleep, %interval%
		; closeHB(firstLine,1339)
		Continue
	}
	PixelGetColor,color1,%firstLine%,%thirdDetectPointY%,rgb
	if (color1 == hbColor)
	{
		MouseMove,%firstLine%,%thirdDetectPointY%
		; Sleep, %sleepTime%
		MouseClick, left
		Sleep, %interval%
		; closeHB(firstLine,1339)
		Continue
	}
	PixelGetColor,color1,%firstLine%,%fourthDetectPointY%,rgb
	if (color1 == hbColor)
	{
		MouseMove,%firstLine%,%fourthDetectPointY%
		; Sleep, %sleepTime%
		MouseClick, left
		Sleep, %interval%
		; closeHB(firstLine,1339)
		Continue
	}
}