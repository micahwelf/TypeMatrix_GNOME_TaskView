;TypeMatrix GNOME Task View
;This modified AutoHotKey script gives Windows 10 a GNOME style behavior for the
;Win-key.  Specially created for the TypeMatrix keyboard, you only have to press
;Fn+Win to get the usual Start Menu (Fn makes the single Win key act as a RWin key).

;Suggestion: place the Task Bar on the top of the screen if you want a more GNOME-like
; experience.

; Original Comment:
;This autohotkey script for Windows 10 will let you use your mouse to open Task View.
;Simply move your mouse pointer to the upper left corner and Task View will open.
; Optional:
;You can toggle this script to pause (currently binded to the scroll lock key) if you
; want to turn this functionality temporarily off during games.

; Uncomment to Hide AutoHotKey Tray Icon
;#NoTrayIcon

#Persistent
#InstallKeybdHook

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

LWin::
Send, {LWin down}

return

LWin Up::
if !(A_PriorKey = "LWin") {
	Send, {LWin up}
}
if (A_PriorKey = "LWin") {
	Send, {LWin down}{tab down}
	Send, {LWin up}{tab up}
}
return

; Uncomment to activate:
;ScrollLock::
;Suspend
;Pause,,1
;return































