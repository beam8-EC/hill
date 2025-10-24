@echo off
echo ========================================
echo REMOTE DESKTOP ENABLEMENT SCRIPT
echo ========================================
echo.
echo This script will enable Remote Desktop on your PC
echo Make sure you are running this as Administrator!
echo.
pause

echo Enabling Remote Desktop...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
if %errorlevel% equ 0 (
    echo ✓ Remote Desktop enabled successfully
) else (
    echo ✗ Failed to enable Remote Desktop
)

echo.
echo Configuring Windows Firewall...
netsh advfirewall firewall set rule group="Remote Desktop" new enable=yes
if %errorlevel% equ 0 (
    echo ✓ Firewall configured successfully
) else (
    echo ✗ Failed to configure firewall
)

echo.
echo Adding Administrator to Remote Desktop Users group...
net localgroup "Remote Desktop Users" Administrator /add
if %errorlevel% equ 0 (
    echo ✓ User added to Remote Desktop Users group
) else (
    echo ✗ Failed to add user to group
)

echo.
echo Restarting Remote Desktop services...
net stop TermService
net start TermService
net stop UmRdpService
net start UmRdpService
echo ✓ Services restarted

echo.
echo ========================================
echo CONFIGURATION COMPLETED!
echo ========================================
echo.
echo Your PC can now be accessed remotely using:
echo.
echo IP Addresses:
echo   - Local Network: 192.168.174.128
echo   - External: 70.39.70.194
echo.
echo Username: Administrator
echo Port: 3389
echo.
echo IMPORTANT: Make sure to set a strong password for the Administrator account!
echo.
echo To connect from another PC:
echo 1. Open Remote Desktop Connection (mstsc)
echo 2. Enter IP address: 192.168.174.128
echo 3. Enter username: Administrator
echo 4. Enter your password
echo 5. Click Connect
echo.
echo For external connections, configure port forwarding on your router.
echo.
pause
