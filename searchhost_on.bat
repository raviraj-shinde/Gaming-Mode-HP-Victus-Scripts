@echo off
echo Restoring SearchHost...

set "TARGET=C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\SearchHost.exe"
set "RENAMED=C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\SearchHostX.exe"
set "DIR=C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy"

cd /d "%DIR%"

:: 1) Rename back
if exist "SearchHostX.exe" ren "SearchHostX.exe" "SearchHost.exe"

:: 2) Restore ownership to TrustedInstaller
icacls "%TARGET%" /setowner "NT SERVICE\TrustedInstaller" >nul 2>&1

:: 3) Check
if not exist "%DIR%\SearchHost.exe" (
    echo [!] Rename failed, file could not found.
) 

:: 4) Start search service
net start WSearch >nul 2>&1

exit /b