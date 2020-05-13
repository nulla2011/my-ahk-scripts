;按空格相当于鼠标点击。按ctrl+shift+a会在指针附近弹出气泡显示所指像素偏移提前量的蓝色分量的值，显示大于0x70的值说明在白色区域，显示00附近的小数值说明在黄色区域。鼠标指到条的下缘与黄白分界线交汇处，当显示为00左右时按下d打开开关，提示waiting表示打开成功，会自动在perfect时点击，有一定误差。
;CoordMode, Pixel, Screen
;CoordMode, Mouse, Screen
Process, Priority, , High
Space::
MouseClick, left
return
^+a::
kd:=0
m=4 ;m为提前量，单位为像素
loop{
	MouseGetPos , x , y
	PixelGetColor, FcolorC, x-m , y-15 , rgb
	PixelGetColor, FcolorB, x-m , y+2 , rgb
	;PixelGetColor, Mcolor, x , y , rgb
	;if (Mcolor=="0xFFFFFF")
	SetFormat, integer, hex
	bc:=mod(FcolorC,0x100) ;获取蓝色分量的值
	bb:=mod(FcolorB,0x100) ;获取蓝色分量的值
	;gc:=mod(((FcolorC-bc)/0x100),0x100) 
	;gb:=mod(((FcolorB-bb)/0x100),0x100)
	stat:=(bb>=0x70 or bc>=0x40)? 1 : 0
	if (kd==0)
	{
		ToolTip, %bc%
		if (GetKeyState("d") and stat==0)
		{
			kd:=1
			ToolTip , Waiting...
		}
	}
	else
	if(stat==1){
		MouseClick, left
		;Send {PrintScreen}
		;MsgBox, SUCCESS!!!
		kd:=0
	}
	sleep 10
	if GetKeyState("s")
		break
}
