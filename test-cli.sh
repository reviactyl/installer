#!/bin/bash
BASE_DIR="$(dirname "$(realpath "$0")")"
PRE_DIR="$BASE_DIR/pre"
SCRIPT_DIR="$BASE_DIR/scripts"

source "$BASE_DIR/lib/core.sh"

# Check color formatting
echo -e "${INFO} sup world"
echo -e "${WARN} sup world"
echo -e "${ERROR} sup world"
echo -e "${SUCCESS} sup world"
echo -e "${TAG} sup world"

# Check progress bar
echo ""
echo -e "${INFO} Testing progress bar..."
for i in {1..100}; do
    draw_progress $i 100
    sleep 0.05
done
echo ""

# Check Progress bar ie depreciating
echo -e "${INFO} Testing progress bar depreciation..."
for i in {50..1}; do
    draw_progress $i 50
    sleep 0.05
done
echo ""

# Check directory structure
echo -e "${INFO} Checking directory structure..."
if [ -d "$PRE_DIR" ] && [ -d "$SCRIPT_DIR" ] && [ -d "$BASE_DIR/lib" ]; then
    echo -e "${SUCCESS} Directory structure is correct."
    echo -e "${INFO} BASE_DIR: $BASE_DIR"
    echo -e "${INFO} PRE_DIR: $PRE_DIR"
    echo -e "${INFO} SCRIPT_DIR: $SCRIPT_DIR"
else
    echo -e "${ERROR} Directory structure is incorrect."
fi
echo ""