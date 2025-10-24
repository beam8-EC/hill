@echo off
echo Installing ULTIMATE Credential Extractor Dependencies...
echo This will install MULTIPLE libraries for MAXIMUM credential extraction capability
echo.

echo Installing pywin32...
pip install pywin32 pywin32-ctypes

echo.
echo Installing cryptography libraries...
pip install pycryptodome cryptography pycryptodomex

echo.
echo Installing system access libraries...
pip install keyring psutil

echo.
echo Installing network libraries...
pip install requests

echo.
echo Installing XML processing...
pip install lxml

echo.
echo Installing additional utilities...
pip install colorama tqdm

echo.
echo Installing memory access libraries...
pip install pymem

echo.
echo Installation complete!
echo You can now run: python ultimate_extractor.py
echo.
echo NOTE: Some libraries may require additional system dependencies
echo If you encounter errors, try running as Administrator
echo.
echo This ULTIMATE version extracts:
echo - Browser saved passwords (Chrome, Firefox, Safari, Edge, Opera, Brave)
echo - Windows Credential Manager (ALL stored credentials)
echo - macOS Keychain (ALL stored credentials)
echo - Browser cache and session data
echo - Cookies and authentication tokens
echo - Auto-fill data and form data
echo - Extension stored credentials
echo - System credential stores
echo - Network credentials
echo - Registry credential entries
echo - Memory credential dumps
echo.
