Dim i
Set wshshell = wscript.CreateObject("WScript.Shell")
wscript.Sleep 10000
i=0
do until i=30
i=1+i
wscript.Sleep 500
wshshell.Sendkeys "oh yeah"
wscript.Sleep 500
wshshell.Sendkeys "{ENTER}"
loop
