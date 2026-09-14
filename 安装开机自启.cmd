@echo off
set "APP=%~dp0SZULightTrack.hta"
set "STARTUP=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\深大光电每日行动台.lnk"
powershell -NoProfile -Command "$w=New-Object -ComObject WScript.Shell;$s=$w.CreateShortcut('%STARTUP%');$s.TargetPath='C:\Windows\System32\mshta.exe';$s.Arguments='\"%APP%\"';$s.WorkingDirectory='%~dp0';$s.Save()"
echo 已安装开机自启。重启或下次登录 Windows 后将自动打开。
pause
