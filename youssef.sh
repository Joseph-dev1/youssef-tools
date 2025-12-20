#!/bin/bash

RED='\033[0;91m'
GREEN='\033[0;92m'
YELLOW='\033[0;93m'
BLUE='\033[0;94m'
PURPLE='\033[0;95m'
NC='\033[0m'
BOLD='\033[1m'

log_message() {
    case $1 in
        "success") echo -e "${GREEN}${BOLD}✅ $2${NC}" ;;
        "error") echo -e "${RED}${BOLD}❌ $2${NC}" ;;
        "warning") echo -e "${YELLOW}${BOLD}⚠️ $2${NC}" ;;
        "progress") echo -e "${PURPLE}${BOLD}⏳ $2${NC}" ;;
        "info") echo -e "${BLUE}${BOLD}⭕ $2${NC}" ;;
        *) echo -e "${PURPLE}${BOLD}🔹 $2${NC}" ;;
    esac
}

check_termux() {
    [ ! -d "/data/data/com.termux/files/usr" ] && {
        log_message "error" "This script is designed for Termux only!"
        log_message "warning" "Please run this on Termux app"
        exit 1
    }
}

show_header() {
    clear
    echo -e "${RED}"
    cat << "EOF"
██╗   ██╗ ██████╗ ██╗   ██╗███████╗███████╗███████╗
╚██╗ ██╔╝██╔═══██╗██║   ██║██╔════╝██╔════╝██╔════╝
 ╚████╔╝ ██║   ██║██║   ██║███████╗█████╗  █████╗  
  ╚██╔╝  ██║   ██║██║   ██║╚════██║██╔══╝  ██╔══╝  
   ██║   ╚██████╔╝╚██████╔╝███████║███████╗██║     
   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝╚═╝
EOF
    echo -e "${NC}"
    echo -e "${YELLOW}${BOLD}┌────────────────────────────────┐${NC}"
    echo -e "${RED}${BOLD}        YOUSSEF TOOL INSTALLER         ${NC}"
    echo -e "${YELLOW}${BOLD}└────────────────────────────────┘${NC}"
    echo ""
}

show_menu() {
    echo -e "${BLUE}${BOLD}"
    echo "┌────────────────────────────────────┐"
    echo "│           SELECT OPTION            │"
    echo "├────────────────────────────────────┤"
    echo "│  1. INSTALL ALL REQUIREMENTS       │"
    echo "│  2. RUN YOUSSEF TOOL               │"
    echo "│  3. OPEN SPAM CALLS WEBSITE        │"
    echo "│  4. TOOL INFO                      │"
    echo "│  5. EXIT                           │"
    echo "└────────────────────────────────────┘"
    echo -e "${NC}"
    echo -n -e "${YELLOW}${BOLD}SELECT OPTION (1-5): ${NC}"
}

open_url() {
    log_message "info" "$2"
    am start -a android.intent.action.VIEW -d "$1" > /dev/null 2>&1
}

open_spam_website() {
    echo -e "${RED}${BOLD}"
    echo "┌────────────────────────────────────┐"
    echo "│      OPENING SPAM CALLS WEBSITE    │"
    echo "└────────────────────────────────────┘"
    echo -e "${NC}"
    open_url "https://spam.arab-hacking.com" "Opening Spam Calls Website..."
}

show_tool_info() {
    clear
    echo -e "${PURPLE}"
    echo "┌────────────────────────────────────────────┐"
    echo "│             TOOL INFORMATION               │"
    echo "├────────────────────────────────────────────┤"
    echo "│                                            │"
    echo -e "│   ${YELLOW}🔹 Name: youssef Tool${PURPLE}                         │"
    echo -e "│   ${YELLOW}🔹 Developer: Youssef Saleeb${PURPLE}              │"
    echo "│                                            │"
    echo "└────────────────────────────────────────────┘"
    echo -e "${NC}"
    echo -e "${BLUE}${BOLD}1. ↩️ Back to main menu${NC}"
    read -p " " -n 1
}

install_requirements() {
    log_message "progress" "Updating system..."
    pkg update -y && pkg upgrade -y
    log_message "progress" "Installing Python & Git..."
    pkg install python python-pip git -y
    log_message "progress" "Installing Requests library..."
    pip install requests
    log_message "success" "All requirements installed successfully!"
}

# --- تشغيل البرنامج ---
check_termux
show_header

while true; do
    show_menu
    read -r choice
    case $choice in
        1) install_requirements ;;
        2) python3 youssef.py ;;
        3) open_spam_website ;;
        4) show_tool_info ;;
        5) exit 0 ;;
        *) log_message "error" "Invalid option! Please choose 1-5" ;;
    esac
    echo
    read -p "$(echo -e "${YELLOW}${BOLD}Press Enter to continue...${NC}")"
    show_header
done
