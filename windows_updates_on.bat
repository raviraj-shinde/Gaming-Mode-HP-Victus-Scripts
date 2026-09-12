
@echo off

echo Restoring Windows Update service...

::Startup type: auto
sc config wuauserv start= auto >nul 2>&1

:: Start
net start wuauserv >nul 2>&1

exit /b