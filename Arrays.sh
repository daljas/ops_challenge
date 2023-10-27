
# Script Name:                  Arrays.sh
# Author:                       Jason Dallas
# Date of latest revision:      10/26/2023
# Purpose:                      Create directories and add text files to them

# Declaration of variables
dirs=("dir1" "dir2" "dir3" "dir4")
text="Hoping this works."

# Declaration of functions
Mkdir() {
    for dir in "${dirs[@]}"; do
        mkdir "$dir"
        echo "$text" > "$dir/text.txt"
    done
}

# Main
Mkdir






# End