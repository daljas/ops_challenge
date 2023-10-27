#!/bin/bash

# Script Name:                  Arrays.sh
# Author:                       Jason Dallas
# Date of latest revision:      10/26/2023
# Purpose:                      List name in a array

# Declaration of variables
dirs=("dir1" "dir2" "dir3" "dir4")
text="Hoping this works."


# Declaration of functions
    
Mkdir(){
    mkdir "$dirs"
    echo -e "$text" > "$dir/text.txt"
}



# Main
Mkdir "${dirs[@]}"





# End