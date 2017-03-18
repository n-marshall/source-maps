#include <Misc.au3>

Local $hDll = DllOpen("user32.dll"), $iPaused = False
HotKeySet("!{ESC}", "_Terminate")
HotKeySet("!{PAUSE}", "_Pause")

While 1
    Sleep(10)
    If $iPaused <> True And _IsPressed("20", $hDll) Then
        Send("{SPACE UP}")
        Send("{SPACE DOWN}")
        Sleep(10)
    EndIf
WEnd

Func _Pause()
    $iPaused = Not $iPaused
EndFunc

Func _Terminate()
    Exit 0
EndFunc   ;==>Terminate