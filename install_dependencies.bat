@echo off
setlocal EnableDelayedExpansion

echo Installing necessary libraries for the tool...

:: Check if Chocolatey is installed
choco -?
if %errorlevel% neq 0 (
    echo Chocolatey is not installed. Installing Chocolatey...
    @powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
    if %errorlevel% neq 0 (
        echo Error: Failed to install Chocolatey. Please install it manually and rerun this script.
        pause
        exit /b 1
    )
)

:: Install required packages using Chocolatey
choco install nmap -y
choco install powershell -y

:: Download speedtest CLI executable
powershell -Command "Invoke-WebRequest -Uri 'https://install.speedtest.net/app/cli/ookla-speedtest-1.1.1-win64.zip' -OutFile 'speedtest.zip'"
if %errorlevel% neq 0 (
    echo Error: Failed to download speedtest utility.
    pause
    exit /b 1
)

:: Extract speedtest CLI executable
powershell -Command "Expand-Archive -Path 'speedtest.zip' -DestinationPath '.'"
if %errorlevel% neq 0 (
    echo Error: Failed to extract speedtest utility.
    pause
    exit /b 1
)

:: Move speedtest executable to current directory
move "ookla-speedtest-1.1.1-win64/speedtest.exe" .
if %errorlevel% neq 0 (
    echo Error: Failed to move speedtest utility.
    pause
    exit /b 1
)

echo Libraries installed successfully.

pause
