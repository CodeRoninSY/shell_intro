#!/bin/bash
# srestore_term.sh
# save and restore terminal/screen content

# save, clear screen
tput smcup
clear

# read from terminal
read -n 1 -p "Press any key to continue..."

# restore
tput rmcup