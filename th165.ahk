#ifWinActive ahk_exe th165.exe  ;秘封噩梦日记窗口激活才可用
	*LCtrl::
	/*GetKeyState, S, LShift
	;BlockInput On
	if (S="D"){
		;MsgBox 111
		sleep 500
		Send {LShift Up}
		sleep 500
	}
	*/
	Loop {
		sleep 30
		GetKeyState, S, LShift
		if (S="U"){  ;shift抬起才继续
			Break
		}
	}
	sleep 20
	SendInput {Up Up}
	SendInput {Down Up}
	SendInput {Left Up}
	SendInput {Right Up}
	SendInput {LShift Down}
	sleep 35  ;如果不能触发瞬移，尝试将数值改大
	SendInput {LShift Up}
	Sleep 35  ;如果不能触发瞬移，尝试将数值改大
	SendInput {LShift Down}
	sleep 35  ;如果不能触发瞬移，尝试将数值改大
	;BlockInput Off	
	Loop {
		;sleep 100
		GetKeyState, U, Up
		GetKeyState, D, Down
		GetKeyState, L, Left
		GetKeyState, R, Right
		B:=U = "D" OR D = "D" OR L = "D" OR R = "D"
		if (B=1){  ;瞬移完成后取消低速状态
			;MsgBox 111
			sleep 100
			SendInput {LShift Up}
			;KeyHistory		
			Break
		}		
	}