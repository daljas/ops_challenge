
#!/bin/bash

# Script Name:                 login_history.sh
# Author:                       Jason Dallas
# Date of latest revision:      10/25/2023
# Purpose:                       login history of username
#Execution                    bash add.sh or ./add.sh chmod -x and .sh

# Declaration of variables

usernmae="username"


# Declaration of functions
print_login_history() {
    if [ -f /var/log/auth.log ]; then
        # Replace 'username' with the desired username for which you want to view the login history.
        username="username"
        echo "Login history for $username:"
        
        # Search the auth.log file for login entries related to the specified username.
        grep "$username" /var/log/auth.log | grep "session opened" | awk '{print "  - Date: " $1 " " $2 ", IP Address: " $11}'
        
        echo "This is the login history."
    else
        echo "Auth log file not found."
    fi
}


# Main
print_login_history

#End