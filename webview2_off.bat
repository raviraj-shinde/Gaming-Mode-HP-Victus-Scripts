@echo off

:: Kill WebView2
taskkill /f /im msedgewebview2.exe >nul 2>&1

:: Go to install folder
cd /d "C:\Program Files (x86)\Microsoft\EdgeWebView\Application\150.0.4078.99"

if exist "msedgewebview2.exe" echo msedgewebview2.exe exists
if exist "msedgewebview2Renamed.exe" echo msedgewebview2Renamed.exe exists

:: Rename here
ren "msedgewebview2.exe" "msedgewebview2Renamed.exe"

if exist "msedgewebview2.exe" echo msedgewebview2.exe exists
if exist "msedgewebview2Renamed.exe" echo msedgewebview2Renamed.exe exists

:: Kill again just in case
taskkill /f /im msedgewebview2.exe >nul 2>&1

echo msedgewebview2 stopped...
exit /b