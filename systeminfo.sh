#!/bin/bash

# Script Name:                  System Info Script
# Author:                       Your Name
# Date of latest revision:      10/31/2023
# Purpose:                      Display system information using lshw and grep

# Declaration of variables

# Declaration of functions
display_component_info() {
    component_name="$1"
    lshw_output="$(lshw -short)"
    component_info="$(echo "$lshw_output" | grep -E "$2" | sed 's/^[ \t]*//;s/[ \t]*$//')"
    echo "=== $component_name ==="
    echo "$component_info"
}

# Main
# Check if the script is running as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script as root using 'sudo'."
    exit 1
fi

# Display information about the computer
display_component_info "Name of the computer" "system|processor|memory|display|network"
display_component_info "CPU" "processor|product|vendor|physical id|bus info|width"
display_component_info "RAM" "memory|description|size"
display_component_info "Display adapter" "display|description|product|vendor|physical id|bus info|width|clock|capabilities|configuration|resources"
display_component_info "Network adapter" "network|description|product|vendor|physical id|bus info|logical name|version|serial|size|capacity|width|clock|capabilities|configuration|resources"

# End