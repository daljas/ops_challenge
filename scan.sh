#!/bin/bash

# Script Name:                  scan.sh
# Author:                       Jason Dallas
# Date of latest revision:      10/30/2023
# Purpose:                      scan for certain files

# Declaration of variables

directory_to_check=("/path/to/documents/op_challenges /path/to/documents/op_notes")
# Declaration of functions

check_and_create_directory() {
  for directory in "${directories_to_check[@]}"; do
    if [ ! -d "$directory" ]; then
      echo "Directory '$directory' is missing. Creating..."
      mkdir -p "$directory"
    else
      echo "Directory '$directory' already exists."
    fi
  done
}


# Main
check_and_create_directory



# End