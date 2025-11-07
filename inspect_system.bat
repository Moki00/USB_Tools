@echo off
color 0A
mode con: cols=170 lines=40
title Cyber-Tool USB Launcher
cls

:MENU
cls
echo.
echo  ============================================================================
echo.
echo   I N S P E C T   S Y S T E M   T O O L K I T
echo.
echo  ============================================================================
echo.
echo      [1]  Scan for Bloatware/Adware (AdwCleaner)
echo.
echo      [2]  Advanced Uninstaller (Bulk Crap Uninstaller)
echo.
echo      [3]  Network Port Scan (Nmap - Fast)
echo.
echo      [4]  Network Vulnerability Audit (Nmap - Scripts)
echo.
echo      [5]  Deep Traffic Inspection (Wireshark)
echo.
echo      [6]  Exit
echo.
echo  ============================================================================
echo.
set /p choice=   Select an option (1-6): 

if "%choice%"=="1" goto ADW
if "%choice%"=="2" goto BCU
if "%choice%"=="3" goto NMAPFAST
if "%choice%"=="4" goto NMAPVULN
if "%choice%"=="5" goto WIRESHARK
if "%choice%"=="6" exit

goto MENU

:ADW
cls
echo.
echo   ----------------------------------------
echo    L A U N C H I N G   A D W C L E A N E R
echo   ----------------------------------------
echo.
start "" "%~dp0Tools\adwcleaner.exe"
pause
goto MENU

:BCU
cls
echo.
echo   ----------------------------------------
echo    L A U N C H I N G   U N I N S T A L L E R
echo   ----------------------------------------
echo.
start "" "%~dp0Tools\BCU\BCUninstaller.exe"
goto MENU

:NMAPFAST
cls
echo.
echo   ----------------------------------------
echo    F A S T   N E T W O R K   S C A N
echo   ----------------------------------------
echo.
echo   Target Default Gateway is usually 192.168.1.1 or 10.0.0.1
echo.
set /p target=   Enter Target IP (e.g., 127.0.0.1 for this PC): 
"%~dp0Tools\Nmap\nmap.exe" -sT -F %target%
pause
goto MENU

:NMAPVULN
cls
echo.
echo   ----------------------------------------
echo    V U L N E R A B I L I T Y   S C A N
echo   ----------------------------------------
echo.
set /p target=   Enter Target IP: 
"%~dp0Tools\Nmap\nmap.exe" -sT -sV --script=vuln %target%
pause
goto MENU

:WIRESHARK
cls
echo.
echo   ----------------------------------------
echo    L A U N C H I N G   W I R E S H A R K
echo   ----------------------------------------
echo.
start "" "%~dp0Tools\WiresharkPortable.exe"
goto MENU