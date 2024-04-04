@echo off
:: BatchGotAdmin
::-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
::--------------------------------------
REM Check if Wi-Fi interface exists
netsh interface show interface | findstr /i "Wi-Fi" >nul
if %errorlevel% NEQ 0 (
    echo Wi-Fi interface not found.
    pause
    exit /B
)

REM Disable autoconfiguration for Wi-Fi
netsh wlan set autoconfig enabled=no interface="Wi-Fi"
if %errorlevel% NEQ 0 (
    echo Failed to disable autoconfiguration for Wi-Fi.
    pause
    exit /B
)

echo Autoconfiguration for Wi-Fi disabled successfully. Enjoy Low Latency Gaming!!!
pause
exit /B
