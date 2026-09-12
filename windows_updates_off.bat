@echo off

:: Stop
net stop wuauserv >nul 2>&1

:: Startup type: manual
sc config wuauserv start= demand >nul 2>&1

echo Windows Update service stopped...
exit /b