Set WshShell = WScript.CreateObject("WScript.Shell")
KeyPath = "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\DigitalProductId"
Function ExtractKey(KeyInput)
Const KeyOffset = 52
i = 28
CharWhitelist = "BCDFGHJKMPQRTVWXY2346789"
Do
Cur = 0
x = 14
Do
Cur = Cur * 256
Cur = KeyInput(x + KeyOffset) + Cur
KeyInput(x + KeyOffset) = (Cur \ 24) And 255
Cur = Cur Mod 24
x = x -1
Loop While x >= 0
i = i -1
KeyOutput = Mid(CharWhitelist, Cur + 1, 1) & KeyOutput
If (((29 - i) Mod 6) = 0) And (i <> -1) Then
i = i -1
KeyOutput = "-" & KeyOutput
End If
Loop While i >= 0
ExtractKey = KeyOutput
End Function
Dim fso, MyFile
Set fso = CreateObject("Scripting.FileSystemObject")
Set MyFile = fso.CreateTextFile(CreateObject("WScript.Shell").ExpandEnvironmentStrings("") & "Windows\Key\Windows-Key.txt", True)
MyFile.WriteLine(ExtractKey(WshShell.RegRead(KeyPath)))
MyFile.Close