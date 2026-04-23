#!/bin/bash

# CLI - Styles
BOLD="\e[1m"
DIM="\e[2m"
UNDERLINE="\e[4m"
RESET="\e[0m"

# CLI - Foregrounds (Color)
FG_BLACK="\e[30m"
FG_RED="\e[31m"
FG_GREEN="\e[32m"
FG_YELLOW="\e[33m"
FG_BLUE="\e[34m"
FG_MAGENTA="\e[35m"
FG_CYAN="\e[36m"
FG_LIGHT_GRAY="\e[37m"

FG_DARK_GRAY="\e[90m"
FG_LIGHT_RED="\e[91m"
FG_LIGHT_GREEN="\e[92m"
FG_LIGHT_YELLOW="\e[93m"
FG_LIGHT_BLUE="\e[94m"
FG_LIGHT_MAGENTA="\e[95m"
FG_LIGHT_CYAN="\e[96m"
FG_WHITE="\e[97m"

# CLI - Backgrounds (Color)
B_BLACK="\e[40m"
B_RED="\e[41m"
B_GREEN="\e[42m"
B_YELLOW="\e[43m"
B_BLUE="\e[44m"
B_MAGENTA="\e[45m"
B_CYAN="\e[46m"
B_LIGHT_GRAY="\e[47m"

B_DARK_GRAY="\e[100m"
B_LIGHT_RED="\e[101m"
B_LIGHT_GREEN="\e[102m"
B_LIGHT_YELLOW="\e[103m"
B_LIGHT_BLUE="\e[104m"
B_LIGHT_MAGENTA="\e[105m"
B_LIGHT_CYAN="\e[106m"
B_WHITE="\e[107m"

# CLI - Tags
INFO="${BOLD}${FG_WHITE}${B_BLUE} INFO ${RESET}"
WARN="${BOLD}${FG_WHITE}${B_YELLOW} WARN ${RESET}"
ERROR="${BOLD}${FG_WHITE}${B_RED} ERROR ${RESET}"
SUCCESS="${BOLD}${FG_WHITE}${B_GREEN} SUCCESS ${RESET}"
TAG="${BOLD}${FG_WHITE}${B_RED} RCYL²⁶ ${RESET}"

# CLI - Progress Bar
PRIMARY_COLOR="${BOLD}${FG_BLUE}"
SECONDARY_COLOR="${BOLD}${FG_LIGHT_GRAY}"

cursor_up() { echo -en "\033[1A"; }

clear_line() { echo -en "\033[K"; }

cursor_start() { echo -en "\r"; }

draw_progress() {
  local progress=$1
  local total=$2
  local width=$(( $(tput cols) - 6 ))
  local percentage=$(( progress * 100 / total ))
  local filled=$(( width * progress / total ))
  local empty=$(( width - filled ))

  local bar="${PRIMARY_COLOR}"
  for ((i=0;i<filled;i++)); do bar+="─"; done
  bar+="${SECONDARY_COLOR}"
  for ((i=0;i<empty;i++)); do bar+="─"; done

  cursor_start
  clear_line
  echo -n -e "${bar} ${percentage}%\x1b[0m"
}