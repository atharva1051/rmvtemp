@echo off
set LOGFILE=batch.log
call :LOG > %LOGFILE%
exit /B

:LOG
del /q /s "%C:\WINDOWS\Prefetch\*.*"
del /q /s "%USERPROFILE%\Local Settings\Temporary Internet Files\*.*"
del /q /s "%USERPROFILE%\Local Settings\Temp\*.*"
del /q /s "%USERPROFILE%\Recent\*.*"
del /q /s "%USERPROFILE%\Cookies\*.*"
del /q /s "c:\winnt\temp\*.*"
Rmdir /q /s "%USERPROFILE%\Local Settings\Temporary Internet Files"
Rmdir /q /s "%USERPROFILE%\Local Settings\Temp"
Rmdir /q /s "%USERPROFILE%\Cookies\*.*"
Rmdir /q /s "c:\winnt\Temp"
Rmdir /q /s "c:\windows\prefetch"
md "%USERPROFILE%\Local Settings\Temporary Internet Files"
md "%USERPROFILE%\Documents and Settings\administrator\Desktop"
md "c:\winnt\Temp"
md "%USERPROFILE%\Local Settings\Temp"
md "%USERPROFILE%\Cookies"
md "c:\windows\prefetch"