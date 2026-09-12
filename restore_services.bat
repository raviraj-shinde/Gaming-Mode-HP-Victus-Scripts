@echo off

echo Restoring services...

:: AMD
net start "AMD External Events Utility" >nul 2>&1 
:: spaces includes hence quotes

:: Windows Update / Delivery
net start BITS >nul 2>&1
net start IUService >nul 2>&1
:: net start SysMain >nul 2>&1 
:: I don't want this

:: App services
net start InstallService >nul 2>&1

:: Notifications
net start WpnService >nul 2>&1

:: Others
net start OneSyncSvc_5f2d0 >nul 2>&1
net start WpnUserService_5f2d0 >nul 2>&1
net start webthreatdefusersvc_5f2d0 >nul 2>&1
net start NPSMSvc_5f2d0 >nul 2>&1
net start cbdhsvc_5f2d0 >nul 2>&1
net start UsoSvc >nul 2>&1
net start ClipSVC >nul 2>&1
net start camsvc >nul 2>&1
net start AppXSvc >nul 2>&1
net start StorSvc >nul 2>&1
net start SynTPEnhService >nul 2>&1

:: HP
net start HPSysInfoCap >nul 2>&1
net start HPDiagsCap >nul 2>&1
net start HPOmenCap >nul 2>&1
net start HPNetworkCap >nul 2>&1
net start HPAppHelperCap >nul 2>&1
net start HpTouchpointAnalyticsService >nul 2>&1


:: ===================================
:: Restarting processes... (exe)
:: ===================================

start "" "C:\Windows\System32\atieclxx.exe"
start "" "C:\Windows\System32\DriverStore\FileRepository\amdfendr.inf_amd64_bea53a1d416fbcfa\amdfendrsr.exe"
start "" "C:\Windows\System32\SECOCL64.exe"
start "" "C:\Windows\System32\SECOMN64.exe"
start "" "C:\Windows\System32\SynTPEnh.exe"


:: Setting to Auto again
sc config HpTouchpointAnalyticsService start= auto >nul 2>&1

exit /b