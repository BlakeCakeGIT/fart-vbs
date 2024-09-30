MsgBox "Are you sure you want to continue? If not, please use TASK MANAGER to close this, the X Button Will still run the code.", 0, "Crasher"
Do While 1 < 5
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "calc.exe"
Loop
