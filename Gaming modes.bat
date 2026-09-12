@echo off

:: --- Auto run as Administrator ---
net session >nul 2>&1
if %errorLevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: Get current script folder
set "base=%~dp0"

:MENU
title Gaming Mode Controller

echo 1. Enable Gaming Mode
echo 2. Disable Gaming Mode
set /p choice=Enter choice:

if "%choice%"=="1" goto ON
if "%choice%"=="2" goto OFF
goto END

:ON
call "%base%webview2_off.bat"
call "%base%searchhost_off.bat"
call "%base%windows_updates_off.bat"
call "%base%stop_services.bat"

echo =======================================
echo           [+] ALL DONE
echo =======================================

goto END

:OFF
echo Restoring Normal Mode...
call "%base%webview2_on.bat"
call "%base%searchhost_on.bat"
call "%base%windows_updates_on.bat"
call "%base%restore_services.bat"

echo =======================================
echo           [+] ALL DONE
echo =======================================

goto END

:END
echo Press any key to exit...
pause >nul

goto :eof