@echo off

:: Taking ownership + blocking SearchHost...
set "TARGET=C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\SearchHost.exe"
set "DIR=C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy"

:: 1) Take ownership
takeown /f "%TARGET%" >nul 2>&1

:: 2) Grant full control to Administrators
icacls "%TARGET%" /grant administrators:F >nul 2>&1

:: 3) Stop service + kill process
net stop WSearch >nul 2>&1
taskkill /f /im SearchHost.exe >nul 2>&1

:: 4) Rename
cd /d "%DIR%"
if exist "SearchHost.exe" ren "SearchHost.exe" "SearchHostX.exe"

:: 5) Check
if exist "%DIR%\SearchHost.exe" (
    echo [!] Still present (rename failed)
)

echo SearchHost stopped...
exit /b