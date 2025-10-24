# Credential Extractor & Remote Desktop Tools

A comprehensive collection of tools for credential extraction and remote desktop configuration on Windows systems.

## ⚠️ SECURITY WARNING

**These tools extract sensitive credentials from your system. Only use these tools on systems you own and have permission to access. Use responsibly and ensure credentials are handled securely.**

## 📁 File Structure

### Core Tools
- **`run.py`** - Basic credential extractor
- **`ultimate.py`** - Ultimate credential extractor with advanced methods
- **`aggressive.py`** - Aggressive credential extractor with multiple decryption techniques
- **`remote.py`** - Remote desktop configuration tool

### Installation & Setup
- **`install.bat`** - Install all required dependencies
- **`requirements.txt`** - Python dependencies list

### Remote Desktop
- **`remote.bat`** - Enable remote desktop (run as administrator)
- **`ultimate.bat`** - Run ultimate credential extractor
- **`config.txt`** - Remote desktop configuration report
- **`guide.txt`** - Remote desktop setup guide

### Output Files
- **`output.txt`** - Credential extraction results
- **`info.txt`** - Additional information
- **`README.md`** - This file

## 🚀 Quick Start

### 1. Install Dependencies
```bash
.\install.bat
```

### 2. Extract Credentials
```bash
# Basic extraction
python run.py

# Ultimate extraction (recommended)
python ultimate.py

# Aggressive extraction (maximum methods)
python aggressive.py
```

### 3. Enable Remote Desktop
```bash
# Run as administrator
.\remote.bat
```

## 🔧 Usage Methods

### Method 1: Basic Credential Extraction
```bash
python run.py
```
**What it extracts:**
- Git credentials
- Browser passwords (Chrome, Firefox, Safari, Edge)
- SSH keys
- Email configurations
- System credentials

### Method 2: Ultimate Credential Extraction
```bash
python ultimate.py
```
**What it extracts:**
- All basic features PLUS:
- Browser cookies and sessions
- Auto-fill data
- Extension credentials
- Cache credentials
- Registry entries
- Memory dumps
- Network credentials

### Method 3: Aggressive Credential Extraction
```bash
python aggressive.py
```
**What it extracts:**
- All ultimate features PLUS:
- Multiple decryption methods
- Advanced password cracking
- Enhanced error handling
- Fallback decryption techniques

### Method 4: Remote Desktop Configuration
```bash
# Run as administrator
.\remote.bat
```
**What it configures:**
- Enables Windows Remote Desktop
- Configures firewall rules
- Sets user permissions
- Provides connection instructions

## 📊 Expected Results

### Credential Extraction Output
The tools will create `output.txt` containing:
- **Browser Passwords** - Usernames and encrypted passwords
- **System Credentials** - Windows Credential Manager entries
- **Network Credentials** - Network stored credentials
- **SSH Keys** - Private and public keys
- **API Tokens** - Various service tokens
- **Registry Entries** - Windows Registry credentials

### Remote Desktop Configuration
The tools will provide:
- **PC Information** - IP addresses, username, computer name
- **Connection Instructions** - How to connect remotely
- **Troubleshooting Guide** - Common issues and solutions
- **Security Recommendations** - Best practices

## 🔍 What Gets Extracted

### Browser Credentials
- **Chrome** - Passwords, cookies, autofill, sessions
- **Firefox** - Passwords, form data, sessions
- **Safari** - Keychain integration
- **Edge** - Chrome-compatible extraction
- **Opera** - Chrome-compatible extraction
- **Brave** - Chrome-compatible extraction

### System Credentials
- **Windows Credential Manager** - All stored credentials
- **macOS Keychain** - All stored credentials
- **Registry Entries** - Windows Registry credentials
- **Network Credentials** - Network stored credentials
- **Memory Dumps** - Process memory analysis

### Additional Data
- **SSH Keys** - Private and public keys
- **API Tokens** - GitHub, GitLab, AWS tokens
- **Email Configurations** - Outlook, Mail.app settings
- **Extension Credentials** - Browser extension data
- **Cache Credentials** - Browser cache and local storage

## 🌐 Remote Desktop Connection

### Your PC Information
- **Username:** Administrator
- **Computer Name:** DESKTOP-IG9R1CC
- **IP Addresses:**
  - Local Network: `192.168.174.128`
  - External IP: `70.39.70.194`

### Connection Methods
```bash
# Local network connection
mstsc /v:192.168.174.128

# External connection
mstsc /v:70.39.70.194
```

### Connection Steps
1. Open Remote Desktop Connection (`mstsc`)
2. Enter IP address
3. Username: `Administrator`
4. Enter your password
5. Click "Connect"

## ⚠️ Important Notes

### Security Considerations
- **Encrypted Passwords** - Most browser passwords are encrypted and cannot be decrypted without user interaction
- **Permissions** - Some operations may require administrator privileges
- **File Security** - The output file contains sensitive information - store it securely
- **Cleanup** - Delete the output file when no longer needed

### Legal and Ethical Use
This tool is intended for:
- Security auditing of your own systems
- Credential backup and migration
- Educational purposes

**Do not use this tool to:**
- Extract credentials from systems you don't own
- Perform unauthorized access to other people's accounts
- Violate any terms of service or laws

## 🛠️ Troubleshooting

### Common Issues
1. **Permission Denied** - Run as administrator
2. **File Not Found** - Some credential stores may not exist
3. **Encrypted Data** - Many passwords are encrypted and cannot be decrypted automatically
4. **Firewall Blocking** - Check Windows Firewall settings

### Error Messages
The tools log all operations and errors. Check the console output for specific error messages.

## 📋 Dependencies

### Required Libraries
- `pywin32` - Windows API access
- `pycryptodome` - Advanced cryptography
- `keyring` - System credential store access
- `psutil` - System information
- `requests` - Network operations
- `lxml` - XML processing

### Installation
```bash
.\install.bat
```

## 🔄 File Processing

All files have been renamed to single words for easier use:
- `aggressive_extractor.py` → `aggressive.py`
- `enable_remote_desktop.bat` → `remote.bat`
- `install_ultimate.bat` → `install.bat`
- `remote_desktop_config.py` → `remote.py`
- `remote_desktop_config.txt` → `config.txt`
- `remote_desktop_setup_guide.txt` → `guide.txt`
- `run_ultimate.bat` → `ultimate.bat`
- `ultimate_extractor.py` → `ultimate.py`
- `ultimate_requirements.txt` → `requirements.txt`
- `run.txt` → `info.txt`

## 📞 Support

If you encounter issues:
1. Check the console output for error messages
2. Ensure you have administrator privileges
3. Verify all dependencies are installed
4. Check the troubleshooting section in `guide.txt`

## 📄 License

This tool is provided as-is for educational and legitimate security purposes. Use at your own risk and ensure compliance with all applicable laws and regulations.

---

**Remember: Only use these tools on systems you own and have permission to access!**