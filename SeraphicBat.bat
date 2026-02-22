@echo off
setlocal enabledelayedexpansion

for /f "tokens=2 delims=," %%a in ('tasklist /FI "IMAGENAME eq RobloxPlayerBeta.exe" /FO CSV /NH') do (
    set PID=%%a
)

if "%PID%"=="" (
    exit /b
)

start "" Ronix-Loader.exe %PID%