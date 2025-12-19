<h3 align="center">🚀 youssef — Advanced SMS Testing Utility for Termux on Android</h3>

<p align="center">
  Designed for <b>Security Researchers</b>, <b>Educators</b>, and <b>Ethical Hackers</b>.<br>
  Secure • Fast • Reliable • Anonymous
</p>

---

## 📑 Table of Contents
- [Overview](#-overview)
- [Features](#-features)
- [Requirements](#-requirements)
- [Installation](#-installation)
- [Usage](#-usage)
- [Security Features](#-security-features)
- [Technical Details](#-technical-details)
- [Legal Disclaimer](#%EF%B8%8F-legal-disclaimer)
- [Developer](#-developer)
- [FAQ](#-mo-tool-faq)
- [License](#-license)
- [Support](#-support-the-project)

---

## 🔍 Overview
**youssef Tool** is a powerful **command-line SMS testing utility** developed to help security researchers and penetration testers simulate controlled SMS delivery tests securely and effectively.  
Its **core purpose** is to improve **cybersecurity awareness** and **network resilience** by providing a controlled testing environment.

---

## ✨ Features

| Feature             | Description                                              |
|--------------------|----------------------------------------------------------|
| 🔐 Secure Login     | Password-protected access with 3-attempt lockout        |
| 🌐 Proxy Rotation   | 15+ automatic rotating proxies for anonymity & reliability |
| 📞 Number Validation| Advanced phone number & country code verification       |
| 🎨 Interactive UI   | Modern terminal dashboard with colored progress bars   |
| 📊 Live Monitoring  | Real-time tracking of sent, failed, and pending SMS    |
| ⚡ Optimized APIs    | Private high-performance endpoints for better delivery rates |
| 🛡️ Privacy First     | Zero logs, no tracking, fully anonymous               |
| 📱 Termux Ready      | Optimized exclusively for Android + Termux            |

---

## 📋 Requirements

| Component  | Minimum Requirement          |
|------------|------------------------------|
| OS         | Android 7.0+                 |
| App        | [Termux](https://f-droid.org/en/packages/com.termux/)                       |
| Python     | 3.x or higher                |
| Storage    | Minimum 100MB free           |
| Internet   | Stable connection required   |

---

## 🚀 Installation

```bash
# Update Termux packages
pkg update && pkg upgrade -y

# Install dependencies
pkg install git python -y

# Clone the repository
git clone https://github.com/Joseph-dev1/youssef-tool.git

# Enter project directory
cd youssf-tool

# Make installer executable
chmod +x youssef.sh

# Run installer
./youssef.sh
```

---

## 📖 Usage

```bash
# Start youssef-tool
./youssf.sh
```

**Steps:**

1. Select **Option 1** → Install dependencies
2. Select **Option 2** → Launch youssef Tool
3. Enter activation code → youssef
4. Accept the legal disclaimer
5. Enter SMS details:
   · **Country Code** → e.g., 1 (USA), 20 (Egypt)
   
   · **Target Number** → Without country code
   
   · **Number of SMS** → Range: 1 - 100
6. Monitor the real-time dashboard for delivery stats

---

## 🔐 Security Features

| Security Layer   | Description                                           |
|-----------------|-------------------------------------------------------|
| Access Control  | Encrypted password login with 3-attempt lockout      |
| Proxy System    | Automatic 15+ rotating proxies for complete anonymity |
| Validation      | Strict checks for numbers, country codes & SMS limits |
| Legal Notice    | Mandatory disclaimer before execution                |
| Privacy         | Zero logging, no tracking, full anonymity           |

---

## 📊 Technical Details

| Property        | Details                                              |
|-----------------|------------------------------------------------------|
| Language        | Python 3.x                                          |
| Platform        | Termux (Android)                                    |
| Dependencies    | requests, json, sys, re, time, random, string, os  |
| Proxy Support   | 15+ HTTP rotating proxies                            |
| API Design      | High-performance, optimized private endpoints       |
| UI              | Interactive CLI with rich terminal colors           |

---

## ⚠️ Legal Disclaimer
> ⚠️ **Final Note:**
Use responsibly, ethically, and with authorization only. Misuse may lead to legal action.

<p align="center">© 2025 Youssef Saleeb • All Rights Reserved</p>
