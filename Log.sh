
# Script Name: log.sh
# Author: jason Dallas
# Date: 11/03/2023
# Purpose: Describe the purpose of the script

var1="Some value"
var2=42

my_function() {
    echo "Sample function."
    # Add your function code here
}

echo "Variable 1: $var1"
echo "Variable 2: $var2"

sudo journalctl --since "24 hours ago" > "$HOME/Desktop/last_24.txt"
sudo journalctl -p err > "$HOME/Desktop/errors.txt"
sudo journalctl _SYSTEMD_UNIT=systemd-logind.service --grep 'ID=16'
sudo journalctl -n 20
sudo journalctl -n 500 --no-pager