@echo off
echo ========================================
echo PYTHON TOOLS RUNNER
echo ========================================
echo.
echo This will run all 4 Python tools with separate output files
echo.
echo WARNING: This tool extracts sensitive credentials from your system.
echo Only use this tool on systems you own and have permission to access.
echo.
pause

echo ========================================
echo RUNNING ALL PYTHON TOOLS
echo ========================================
echo.

echo [1/3] Running Ultimate Credential Extractor (ultimate.py)...
echo Output: output1.txt
python ultimate.py > output1.txt 2>&1
if %errorlevel% equ 0 (
    echo ✓ Ultimate extractor completed
) else (
    echo ✗ Ultimate extractor failed
)
echo.

echo [2/3] Running Aggressive Credential Extractor (aggressive.py)...
echo Output: output2.txt
python aggressive.py > output2.txt 2>&1
if %errorlevel% equ 0 (
    echo ✓ Aggressive extractor completed
) else (
    echo ✗ Aggressive extractor failed
)
echo.

echo [3/3] Running Remote Desktop Configuration (remote.py)...
echo Output: output3.txt
python remote.py > output3.txt 2>&1
if %errorlevel% equ 0 (
    echo ✓ Remote desktop configuration completed
) else (
    echo ✗ Remote desktop configuration failed
)
echo.

echo ========================================
echo ALL PYTHON TOOLS COMPLETED!
echo ========================================
echo.
echo OUTPUT FILES CREATED:
echo - output1.txt (Ultimate credential extractor)
echo - output2.txt (Aggressive credential extractor)
echo - output3.txt (Remote desktop configuration)
echo.
echo IMPORTANT SECURITY NOTES:
echo - All output files contain sensitive information
echo - Store them securely and delete when no longer needed
echo - Do not share these files with unauthorized parties
echo.
pause
