'Prevents harddrive spindown by writing a dummy file every 60 seconds, terminate wscript.exe from task manager to quit
'You don't need this if you're running from an SSD or flash memory
'nirklars.wordpress.com
Dim Act :Set Act = CreateObject("Wscript.Shell")
Dim Fso :Set Fso = CreateObject("Scripting.FileSystemObject")
Dim File, SizeFile

SizeFile = "1"

Dim Ts

if Fso.FileExists("z.zzz")	then 
	Err.Clear
	On Error Resume Next
	FSO.DeleteFile("z.zzz")	
	if Err.Number <> 0 then
		WScript.Quit
	end if
end if

Do
	Set Ts = Fso.CreateTextFile("z.zzz", True)
	Set File = Fso.GetFile("z.zzz")	
	Ts.Write "ÿ"
	WScript.Sleep 60000 'Wait 60 seconds
	Ts.Close
	FSO.DeleteFile("z.zzz")	
Loop	 

