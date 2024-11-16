Set wshmaker = wscript.CreateObject("WScript.Shell")
wscript.sleep 5000
wshmaker.AppActivate "New - Notepad"
wshmaker.Sendkeys "hi"