# Windows-Write-Execute
Find subfolders in the Windows folder which have bad ACL and allow write and execute
This is done using two powershell script:
- Enum.ps1 enumerates all subfolders of the C:\Windows folder and should be run as System to allow most folders to be found. It writes the result to a file.
- Test.ps1 Tries to copy C:\Windows\System32\calc.exe to all folders in the supplied file. Successful copies are written to a file
The check for execute persmissions are manual so far, but I only found between 13 and 19 folders depending on OS and arcitecture.
My results on default Windows 7 - 32 bit, Windows 8.1 - 32 bit and Windows 8.1 - 64 bit are listed below, a X indicates execute permissions:

Win8 64 bit
C:\Windows\Tasks X
C:\Windows\Temp X
C:\Windows\tracing
C:\Windows\debug\WIA X
C:\Windows\Registration\CRMLog
C:\Windows\System32\FxsTmp
C:\Windows\System32\Tasks X
C:\Windows\System32\Com\dmp
C:\Windows\System32\Microsoft\Crypto\RSA\MachineKeys X
C:\Windows\System32\spool\PRINTERS
C:\Windows\System32\spool\SERVERS
C:\Windows\System32\spool\drivers\color X
C:\Windows\System32\Tasks\Microsoft\Windows\RemoteApp and Desktop Connections Update X
C:\Windows\System32\Tasks\Microsoft\Windows\WCM X
C:\Windows\System32\Tasks\Microsoft\Windows\PLA\System X
C:\Windows\SysWOW64\FxsTmp
C:\Windows\SysWOW64\Tasks X
C:\Windows\SysWOW64\Com\dmp
C:\Windows\SysWOW64\Tasks\Microsoft\Windows\RemoteApp and Desktop Connections Update X
C:\Windows\SysWOW64\Tasks\Microsoft\Windows\WCM X
C:\Windows\SysWOW64\Tasks\Microsoft\Windows\PLA\System X

Win8 32 bit
C:\Windows\Tasks X
C:\Windows\Temp X
C:\Windows\tracing
C:\Windows\debug\WIA X
C:\Windows\Registration\CRMLog
C:\Windows\System32\FxsTmp
C:\Windows\System32\Tasks X
C:\Windows\System32\Com\dmp
C:\Windows\System32\Microsoft\Crypto\RSA\MachineKeys X
C:\Windows\System32\spool\PRINTERS
C:\Windows\System32\spool\SERVERS
C:\Windows\System32\spool\drivers\color X
C:\Windows\System32\Tasks\Microsoft\Windows\RemoteApp and Desktop Connections Update X
C:\Windows\System32\Tasks\Microsoft\Windows\WCM X
C:\Windows\System32\Tasks\Microsoft\Windows\PLA\System X

Win7 32 bit
C:\Windows\Tasks X
C:\Windows\Temp X
C:\Windows\tracing
C:\Windows\debug\WIA X
C:\Windows\Registration\CRMLog
C:\Windows\System32\FxsTmp 
C:\Windows\System32\Tasks X
C:\Windows\System32\catroot2\{F750E6C3-38EE-11D1-85E5-00C04FC295EE} X
C:\Windows\System32\com\dmp
C:\Windows\System32\spool\PRINTERS
C:\Windows\System32\spool\drivers\color X
C:\Windows\System32\Tasks\Microsoft\Windows\RemoteApp and Desktop Connections Update X
C:\Windows\System32\Tasks\Microsoft\Windows\PLA\System X
