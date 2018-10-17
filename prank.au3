#NoTrayIcon
#include <Misc.au3>

$dll = DllOpen("user32.dll")
While 1
    for $i=1 to 221
        If _IsPressed(Hex($i, 2), $dll) Then
			ConsoleWrite('should beep now')
            beep(random(100,1000,1), 100)
            ExitLoop
        EndIf
    Next
    Sleep ( 100 )
WEnd
DllClose($dll)
