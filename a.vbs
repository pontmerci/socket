strComputer = "." 
Set objWMIService = GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colProcesses = objWMIService.ExecQuery("select * from win32_process Where Name = 'chrome.exe'" )
For Each objProcess in colProcesses

  
    Wscript.Echo "Process " & objProcess.Handle 
  
Next