set wshshell = wscript.CreateObject("wscript.shell")
x= msgbox ("open the file in volume D",1)
if x= 1 then
wshshell.run"""D:\study materials\books\Goldstein.pdf"""
wshshell.run"""https://chatgpt.com/?oai-dm=1"""

end if

