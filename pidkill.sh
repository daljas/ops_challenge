#!/bin/bash

# Script Name:                  pidkill.sh
# Author:                       Jason Dallas
# Date of latest revision:      10/27/2023
# Purpose:                      Continuously display running processes and prompt for PID to kill a process

# Declaration of variables

# Declaration of functions

# Main

while true; do
    clear 

    echo "Running Processes:"
    ps aux

    read -p "Enter the PID of the process to kill (Ctrl + C to exit): " pidToKill

    if [[ -n $pidToKill && $pidToKill =~ ^[0-9]+$ ]]; then
        kill -9 "$pidToKill" 2>/dev/null
        if [ $? -eq 0 ]; then
            echo "Process with PID $pidToKill has been terminated."
        else
            echo "Failed to kill the process with PID $pidToKill. Please make sure the PID is correct."
        fi
    else
        echo "Invalid input. Please enter a valid numeric PID."
    fi

    read -p "Press Enter to continue..."