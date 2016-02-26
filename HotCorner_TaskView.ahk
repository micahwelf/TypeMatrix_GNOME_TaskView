;This autohotkey script for Windows 10 will let you use your mouse to open Task View.
;Simply move your mouse pointer to the upper left corner and Task View will open.
;You can toggle this script to pause (currently binded to the scroll lock key) if you want to turn this functionality temporarily off during games.

#Persistent
SetTimer, HotCorners, 0
return

HotCorners:
CoordMode, Mouse, Screen
WinGetPos, X, Y, Xmax, Ymax, Program Manager  ; get desktop size
T = 5  ; adjust tolerance value if desired
MouseGetPos, MouseX, MouseY
Xcenter := Xmax/2
Ycenter := Ymax/2

CornerTopLeft := (MouseY < T and MouseX < T)
CornerTopRight := (MouseY < T and MouseX > Xmax - T)
CornerBottomLeft := (MouseY > Ymax - T and MouseX < T)
CornerBottomRight := (MouseY > Ymax - T and MouseX > Xmax - T)


if CornerTopLeft
{
	Send, {LWin down}{tab down}
	Send, {LWin up}{tab up}
	Sleep, 700
}

return

ScrollLock::
Suspend
Pause,,1
return