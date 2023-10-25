#!/bin/bash

# Script Name:                 add.sh
# Author:                       Jason Dallas
# Date of latest revision:      10/25/2023
# Purpose:                       adding two numbers
#Execution                    bash add.sh or ./add.sh chmod -x and .sh

# Declaration of variables

num1=20
num2=40

# Declaration of functions

add_two_numbers() {
    sum=$(($num1+$num2))
    echo $sum
}

# Main
add_two_numbers
#End