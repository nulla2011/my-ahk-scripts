CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
Loop{
	PixelGetColor,color1,1294,501,rgb
	PixelGetColor,color2,1287,469,rgb
	;ToolTip, %color%
	if (color1=="0xD13D4B" or color2=="0xD13D4B")
	{
		MouseMove,1294,501
		Sleep , 120
		MouseClick, left
		Sleep , 120
		MouseMove,1346,706
		Sleep , 800
		;Sleep , 500
		;MouseClick, left
		;Send {Enter}
	}
}