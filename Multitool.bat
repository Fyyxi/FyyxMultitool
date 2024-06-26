@echo off
setlocal EnableDelayedExpansion

title Professional Multi-Tool

:install_dependencies
echo Installing necessary libraries and dependencies...
call "%~dp0install_dependencies.bat"
goto menu

:menu
cls
color 0F
echo ==================================================
echo.
echo     ______  __  __  __  __
echo    / ____/ / / / / / / / /
echo   / /_    / / / / / /_/ / 
echo  / __/   / / / / / __  /  
echo /_/     /_/ /_/ /_/ /_/   
echo.
echo ==================================================
color 0E

echo [1]  Ping an IP
echo [2]  Find DNS of IP address
echo [3]  Find information with username
echo [4]  IP Pinger (Continuous ping)
echo [5]  IP Port Scanner
echo [6]  Get your own IP
echo [7]  Get your own device information
echo [8]  Show network adapters
echo [9]  Display disk usage
echo [10] List running processes
echo [11] Display current date and time
echo [12] Check system uptime
echo [13] List installed programs
echo [14] Display current directory
echo [15] Show active network connections
echo [16] Display environment variables
echo [17] Check disk health (SMART)
echo [18] Display system path
echo [19] List all users on the system
echo [20] Install Libraries and Dependencies
echo [21] Website Mass Pinger
echo [22] Trace Route
echo [23] Bandwidth Speed Test
echo [24] System Hardware Information
echo [25] Network Traffic Monitoring
echo [26] File Search
echo [27] Remote Desktop Connection
echo [28] System Event Viewer
echo [29] System Backup and Restore
echo [30] Remote System Shutdown
echo [31] Task Scheduler
echo [32] Password Generator
echo [33] Base64 Encoder/Decoder
echo [34] Quick System Cleanup
echo [35] Scan Wireless Networks
echo [36] Display ARP Table
echo [37] DNS Cache Viewer
echo [38] IP Geolocation
echo [39] Check Internet Connectivity
echo [40] Monitor System Performance
echo [41] Open Network and Sharing Center
echo [42] Manage Firewall
echo [43] Reset Network Settings
echo [44] Create Hidden Admin Account
echo [45] Exit
echo ==================================================
echo.

set /p choice="Select an option (1-45) --> "

if "%choice%"=="1" call :ping
if "%choice%"=="2" call :finddns
if "%choice%"=="3" call :finduser
if "%choice%"=="4" call :pinger
if "%choice%"=="5" call :portscan
if "%choice%"=="6" call :getip
if "%choice%"=="7" call :deviceinfo
if "%choice%"=="8" call :netadapters
if "%choice%"=="9" call :diskusage
if "%choice%"=="10" call :processes
if "%choice%"=="11" call :datetime
if "%choice%"=="12" call :uptime
if "%choice%"=="13" call :installedprograms
if "%choice%"=="14" call :currentdir
if "%choice%"=="15" call :netconnections
if "%choice%"=="16" call :envvars
if "%choice%"=="17" call :diskhealth
if "%choice%"=="18" call :syspath
if "%choice%"=="19" call :listusers
if "%choice%"=="20" (
    call :install_dependencies
    goto menu
)
if "%choice%"=="21" call :websitepinger
if "%choice%"=="22" call :traceroute
if "%choice%"=="23" call :speedtest
if "%choice%"=="24" call :hardwareinfo
if "%choice%"=="25" call :networkmonitor
if "%choice%"=="26" call :filesearch
if "%choice%"=="27" call :rdpconnect
if "%choice%"=="28" call :eventviewer
if "%choice%"=="29" call :backuprestore
if "%choice%"=="30" call :remoteshutdown
if "%choice%"=="31" call :taskscheduler
if "%choice%"=="32" call :passgen
if "%choice%"=="33" call :base64
if "%choice%"=="34" call :cleanup
if "%choice%"=="35" call :scanwifi
if "%choice%"=="36" call :arptable
if "%choice%"=="37" call :dnscache
if "%choice%"=="38" call :ipgeolocation
if "%choice%"=="39" call :checkinternet
if "%choice%"=="40" call :perfmonitor
if "%choice%"=="41" call :netsharingcenter
if "%choice%"=="42" call :firewall
if "%choice%"=="43" call :resetnetwork
if "%choice%"=="44" call :hiddenadmin
if "%choice%"=="45" exit

goto menu

:ping
cls
color 0A
echo ============================
echo Ping an IP Address
echo ============================
set /p ip="Enter IP address to ping: "
ping %ip%
pause
goto menu

:finddns
cls
color 0B
echo ============================
echo Find DNS of IP Address
echo ============================
set /p ip="Enter IP address to find DNS: "
nslookup %ip%
pause
goto menu

:finduser
cls
color 0C
echo ============================
echo Find Information with Username
echo ============================
set /p username="Enter username to search: "
PowerShell -Command "Start-Process 'https://www.google.com/search?q=%username%'"
pause
goto menu

:pinger
cls
color 0D
echo ============================
echo Continuous IP Ping
echo ============================
set /p ip="Enter IP address to continuously ping: "
:pingloop
ping %ip%
timeout /t 2 >nul
goto pingloop

:portscan
cls
color 0E
echo ============================
echo IP Port Scanner
echo ============================
set /p ip="Enter IP address to scan: "
set /p ports="Enter ports to scan (e.g., 1-1000): "
nmap -p %ports% %ip%
pause
goto menu

:getip
cls
color 0F
echo ============================
echo Get Your Own IP Address
echo ============================
ipconfig | findstr /i "IPv4"
pause
goto menu

:deviceinfo
cls
color 0A
echo ============================
echo Device Information
echo ============================
systeminfo
pause
goto menu

:netadapters
cls
color 0B
echo ============================
echo Network Adapters
echo ============================
ipconfig /all
pause
goto menu

:diskusage
cls
color 0C
echo ============================
echo Disk Usage
echo ============================
wmic logicaldisk get size,freespace,caption
pause
goto menu

:processes
cls
color 0D
echo ============================
echo Running Processes
echo ============================
tasklist
pause
goto menu

:datetime
cls
color 0E
echo ============================
echo Current Date and Time
echo ============================
date /t
time /t
pause
goto menu

:uptime
cls
color 0F
echo ============================
echo System Uptime
echo ============================
systeminfo | find "System Boot Time"
pause
goto menu

:installedprograms
cls
color 0A
echo ============================
echo Installed Programs
echo ============================
wmic product get name,version
pause
goto menu

:currentdir
cls
color 0B
echo ============================
echo Current Directory
echo ============================
echo Current Directory: %cd%
pause
goto menu

:netconnections
cls
color 0C
echo ============================
echo Active Network Connections
echo ============================
netstat -an
pause
goto menu

:envvars
cls
color 0D
echo ============================
echo Environment Variables
echo ============================
set
pause
goto menu

:diskhealth
cls
color 0E
echo ============================
echo Disk Health (SMART)
echo ============================
wmic diskdrive get status
pause
goto menu

:syspath
cls
color 0F
echo ============================
echo System Path
echo ============================
echo System Path:
echo %PATH%
pause
goto menu

:listusers
cls
color 0A
echo ============================
echo List All Users
echo ============================
net user
pause
goto menu

:websitepinger
cls
color 0B
echo ============================
echo Website Mass Pinger
echo ============================
set /p website="Enter website URL to ping: "
set /p count="Enter number of pings: "
set /a windows=5

:: Start pinging the website in multiple console windows
for /l %%i in (1,1,%windows%) do (
    start cmd /c "ping -n %count% %website%"
)

pause
goto menu

:traceroute
cls
color 0C
echo ============================
echo Trace Route
echo ============================
set /p destination="Enter destination IP or domain: "
tracert %destination%
pause
goto menu

:speedtest
cls
color 0D
echo ============================
echo Bandwidth Speed Test
echo ============================
speedtest.exe
pause
goto menu

:hardwareinfo
cls
color 0E
echo ============================
echo System Hardware Information
echo ============================
msinfo32
pause
goto menu

:networkmonitor
cls
color 0F
echo ============================
echo Network Traffic Monitoring
echo ============================
netstat -aon
pause
goto menu

:filesearch
cls
color 0A
echo ============================
echo File Search
echo ============================
set /p filename="Enter file name or pattern: "
dir /s /b %filename%
pause
goto menu

:rdpconnect
cls
color 0B
echo ============================
echo Remote Desktop Connection
echo ============================
set /p remote_ip="Enter remote computer IP: "
mstsc /v:%remote_ip%
goto menu

:eventviewer
cls
color 0C
echo ============================
echo System Event Viewer
echo ============================
eventvwr
pause
goto menu

:backuprestore
cls
color 0D
echo ============================
echo System Backup and Restore
echo ============================
control /name Microsoft.BackupAndRestore
pause
goto menu

:remoteshutdown
cls
color 0E
echo ============================
echo Remote System Shutdown
echo ============================
set /p remote_ip="Enter remote computer IP: "
shutdown /m \\%remote_ip% /s /f /t 0
goto menu

:taskscheduler
cls
color 0F
echo ============================
echo Task Scheduler
echo ============================
taskschd.msc
pause
goto menu

:passgen
cls
color 0A
echo ============================
echo Password Generator
echo ============================
set /p length="Enter desired password length: "
powershell -Command "$length=%length%; ([char[]](33..126) | Get-Random -Count $length) -join ''"
pause
goto menu

:base64
cls
color 0A
echo ============================
echo Base64 Encoder/Decoder
echo ============================
echo [1] Encode a String
echo [2] Decode a String
set /p base64_choice="Select an option (1-2): "

if "%base64_choice%"=="1" (
    set /p string="Enter string to encode: "
    powershell -Command "[Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes('%string%'))"
) else if "%base64_choice%"=="2" (
    set /p base64string="Enter Base64 string to decode: "
    powershell -Command "[System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String('%base64string%'))"
)

pause
goto menu

:cleanup
cls
color 0C
echo ============================
echo Quick System Cleanup
echo ============================
echo Cleaning temporary files and cache...
del /s /q %temp%\*
rd /s /q %temp%
echo Done!
pause
goto menu

:scanwifi
cls
color 0A
echo ============================
echo Scan Wireless Networks
echo ============================
netsh wlan show networks
pause
goto menu

:arptable
cls
color 0B
echo ============================
echo Display ARP Table
echo ============================
arp -a
pause
goto menu

:dnscache
cls
color 0C
echo ============================
echo DNS Cache Viewer
echo ============================
ipconfig /displaydns
pause
goto menu

:ipgeolocation
cls
color 0D
echo ============================
echo IP Geolocation
echo ============================
set /p ip="Enter IP address to geolocate: "
powershell -Command "(Invoke-RestMethod 'https://ipinfo.io/%ip%/json').loc"
pause
goto menu


:checkinternet
cls
color 0E
echo ============================
echo Check Internet Connectivity
echo ============================
ping 8.8.8.8 -n 1 && echo Internet is accessible || echo Internet is not accessible
pause
goto menu

:perfmonitor
cls
color 0F
echo ============================
echo Monitor System Performance
echo ============================
perfmon
pause
goto menu

:netsharingcenter
cls
color 0A
echo ============================
echo Open Network and Sharing Center
echo ============================
control.exe /name Microsoft.NetworkAndSharingCenter
pause
goto menu

:firewall
cls
color 0B
echo ============================
echo Manage Firewall
echo ============================
start wf.msc
pause
goto menu

:resetnetwork
cls
color 0C
echo ============================
echo Reset Network Settings
echo ============================
netsh winsock reset
netsh int ip reset
ipconfig /release
ipconfig /renew
pause
goto menu

:hiddenadmin
cls
color 0D
echo ============================
echo Create Hidden Admin Account
echo ============================
net user hiddenadmin Password1 /add /active:yes
net localgroup administrators hiddenadmin /add
pause
goto menu

:exit
exit

