# OSINT Toolkit Setup for Termux

This guide will help you install essential OSINT tools on Termux easily.

---

## ⚙️ Step 1 – Update & Install Dependencies

```bash
pkg update -y && pkg upgrade -y
pkg install -y git python python-pip curl wget nano
```

We also need **Termux:API** for better interaction:

```bash
pkg install termux-api
```
👉 (Install the Termux:API app from **F-Droid** or **Play Store**, too.)

---

## ⚙️ Step 2 – Install Each OSINT Tool

### 🕵️ 1. theHarvester

```bash
cd $HOME
git clone https://github.com/laramies/theHarvester.git
cd theHarvester
pip install -r requirements.txt
```

**Test it:**

```bash
python theHarvester.py -d example.com -b google
```

---

### 🔎 2. Sherlock

```bash
cd $HOME
git clone https://github.com/sherlock-project/sherlock.git
cd sherlock
pip install -r requirements.txt
```

**Test it:**

```bash
python sherlock.py techvyana --print-found
```

---

### 📧 3. Holehe

```bash
cd $HOME
git clone https://github.com/megadose/holehe.git
cd holehe
pip install -r requirements.txt
```

**Test it:**

```bash
python -m holehe test@gmail.com
```

---

### 🌍 4. Whois / IP Tracker

```bash
pkg install -y whois
pkg install -y nmap
pkg install -y dnsutils
```

**Usage:**

```bash
whois example.com
nslookup example.com
nmap -Pn example.com
```

---

### ✅ All Set!
You’ve now installed powerful OSINT tools in Termux.  
Enjoy exploring the open-source intelligence world!

**Created by:** Tech Vyana 2.0
