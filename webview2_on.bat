@echo off
echo Restoring WebView2...

cd /d "C:\Program Files (x86)\Microsoft\EdgeWebView\Application\150.0.4078.99"

:: Rename back
ren "msedgewebview2Renamed.exe" "msedgewebview2.exe"

:: Start WebView2-related apps normally when needed

exit /b