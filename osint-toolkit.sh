#!/bin/bash
# OSINT Toolkit by Tech Vyana
# Run: bash osint-toolkit.sh

clear
echo "===================================="
echo "   🕵️ OSINT TOOLKIT by TECH VYANA 🕵️"
echo "===================================="
echo ""
echo "Select a tool to use:"
echo "1️⃣  theHarvester"
echo "2️⃣  Sherlock"
echo "3️⃣  Holehe"
echo "4️⃣  Whois Lookup"
echo "5️⃣  IP Info"
echo "6️⃣  Nmap Quick Scan"
echo "7️⃣  Exit"
echo ""
read -p "Enter your choice [1-7]: " choice
echo ""

case $choice in
1)
  cd $HOME/theHarvester
  read -p "Enter domain (ex: example.com): " domain
  python theHarvester.py -d $domain -b google
  ;;
2)
  cd $HOME/sherlock
  read -p "Enter username: " user
  python sherlock.py $user --print-found
  ;;
3)
  cd $HOME/holehe
  read -p "Enter email: " email
  python -m holehe $email
  ;;
4)
  read -p "Enter domain: " domain
  whois $domain | head -n 30
  ;;
5)
  read -p "Enter IP: " ip
  curl -s https://ipinfo.io/$ip/json
  ;;
6)
  read -p "Enter target (IP/Domain): " target
  nmap -Pn --top-ports 50 $target
  ;;
7)
  echo "Goodbye 👋"
  exit 0
  ;;
*)
  echo "Invalid choice!"
  ;;
esac

echo ""
read -p "Press Enter to return to menu..."
bash $HOME/osint-toolkit.sh
