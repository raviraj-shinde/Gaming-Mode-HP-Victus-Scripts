@echo off

echo Stopping services...
echo ==================================

:: AMD
echo [1] AMD External Events Utility
net stop "AMD External Events Utility" >nul 2>&1 
:: spaces includes hence quotes

:: Windows Update / Delivery
echo [2] BITS
net stop BITS >nul 2>&1

echo [3] IUService.exe
net stop IUService >nul 2>&1

echo [4] SysMain
net stop SysMain >nul 2>&1

:: App services
echo [5] InstallService
net stop InstallService >nul 2>&1

:: Notifications / sync
echo [6] WpnService
net stop WpnService >nul 2>&1

:: HP services
echo [7] Killing HP and AMD services and processes
net stop HPSysInfoCap >nul 2>&1
net stop HPDiagsCap >nul 2>&1
net stop HPOmenCap >nul 2>&1
net stop HPNetworkCap >nul 2>&1
net stop HPAppHelperCap >nul 2>&1

:: Killing HP processes
taskkill /f /im atieclxx.exe >nul 2>&1
taskkill /f /im amdfendrsr.exe >nul 2>&1
taskkill /f /im OmenInstallMonitor.exe >nul 2>&1
taskkill /f /im OverlayHelper.exe >nul 2>&1
taskkill /f /im SystemOptimizer.exe >nul 2>&1
taskkill /f /im OmenCap.exe >nul 2>&1
taskkill /f /im OmenCommandCenterBackground.exe >nul 2>&1
taskkill /f /im SECOCL64.exe >nul 2>&1
taskkill /f /im SECOMN64.exe >nul 2>&1 
taskkill /f /im SynTPEnh.exe >nul 2>&1

:: Others
echo [8] Others 
net stop OneSyncSvc_5f2d0 >nul 2>&1
net stop WpnUserService_5f2d0 >nul 2>&1
net stop webthreatdefusersvc_5f2d0 >nul 2>&1
net stop NPSMSvc_5f2d0 >nul 2>&1
net stop cbdhsvc_5f2d0 >nul 2>&1
net stop UsoSvc >nul 2>&1
net stop InstallService >nul 2>&1
net stop ClipSVC >nul 2>&1
net stop camsvc >nul 2>&1
net stop AppXSvc >nul 2>&1
net stop StorSvc >nul 2>&1
net stop ClipSVC >nul 2>&1

:: 🙃 May restart again (Notice Taskmanager)
net stop SynTPEnhService >nul 2>&1
taskkill /f /im AppActions.exe >nul 2>&1
net stop HpTouchpointAnalyticsService >nul 2>&1 
net stop TouchpointAnalyticsClientService.exe >nul 2>&1


:: ✅ Put in Manual mode (HP) to stop auto restart again
sc config HpTouchpointAnalyticsService start= demand >nul 2>&1

:: Explorer (optional UI off)
:: echo [18] Explorer
:: taskkill /f /im explorer.exe >nul 2>&1

exit /b