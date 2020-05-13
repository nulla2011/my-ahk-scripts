CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
Loop{
	PixelGetColor,color1,1269,501,rgb
	PixelGetColor,color2,1262,469,rgb
	;ToolTip, %color%
	if (color1=="0xD13D4B" or color2=="0xD13D4B")
	{
		MouseMove,1269,501
		Sleep , 300
		MouseClick, left
		Sleep , 200
		MouseMove,1321,706
		Sleep , 800
		;Sleep , 500
		;MouseClick, left
		;Send {Enter}
	}
}