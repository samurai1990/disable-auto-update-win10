sc config wuauserv start= disable
sc config bits start= disable
sc config DcomLaunch start= disable
net stop wuauserv
net stop bits
net stop DcomLaunch
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /v NoAutoUpdate  /t REG_DWORD /d 1 /f
Powershell -Command "Disable-ScheduledTask -TaskPath ""\Microsoft\Windows\WindowsUpdate\"" -TaskName ""Scheduled Start"""