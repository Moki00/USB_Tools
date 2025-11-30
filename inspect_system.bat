@echo off
color 0A
title Cyber-Tool USB Launcher
cls

:MENU
cls
echo =================================================
echo      SYSTEM INSPECTION & VULNERABILITY KIT
echo =================================================
echo.
echo  [1] Scan for Bloatware/Adware (AdwCleaner)
echo  [2] Advanced Uninstaller (Bulk Crap Uninstaller)
echo  [3] Network Port Scan (Nmap - Fast)
echo  [4] Network Vulnerability Audit (Nmap - Scripts)
echo  [5] Deep Traffic Inspection (Wireshark)
echo  [6] Exit
echo.
echo =================================================
set /p choice=Select an option (1-6): 

if "%choice%"=="1" goto ADW
if "%choice%"=="2" goto BCU
if "%choice%"=="3" goto NMAPFAST
if "%choice%"=="4" goto NMAPVULN
if "%choice%"=="5" goto WIRESHARK
if "%choice%"=="6" exit

goto MENU

:ADW
cls
echo Launching AdwCleaner...
start "" "%~dp0Tools\adwcleaner.exe"
pause
goto MENU

:BCU
cls
echo Launching Bulk Crap Uninstaller...
start "" "%~dp0Tools\BCU\BCUninstaller.exe"
goto MENU

:NMAPFAST
cls
echo Running Fast Network Scan (Top 100 ports)...
echo Target Default Gateway is usually 192.168.1.1 or 10.0.0.1
set /p target=Enter Target IP (e.g., 127.0.0.1 for this PC): 
:: -sT uses TCP connect (no driver needed), -F is fast mode
"%~dp0Tools\Nmap\nmap.exe" -sT -F %target%
pause
goto MENU

:NMAPVULN
cls
echo Running Vulnerability Script Scan...
set /p target=Enter Target IP: 
:: -sV checks versions, --script=vuln runs vulnerability scripts
"%~dp0Tools\Nmap\nmap.exe" -sT -sV --script=vuln %target%
pause
goto MENU

:WIRESHARK
cls
echo Launching Wireshark...
start "" "%~dp0Tools\WiresharkPortable.exe"
goto MENU