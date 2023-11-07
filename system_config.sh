##!/bin/bash

# Script Name:                  Windows 10 Endpoint Configuration
# Author:                      Jason
# Date of latest revision:      11/06/2023
# Purpose:                      Automate the configuration of a new Windows 10 endpoint

# Declaration of variables

# Declaration of functions


# Main


Set-NetFirewallRule -Name "FileAndPrinterSharing-*" -Enabled True


Set-NetFirewallRule -Name "FileAndPrinterSharing-ICMP-In" -Enabled True


Enable-PSRemoting -Force

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All

Set-SmbServerConfiguration -EnableSMB1Protocol $false

echo "Configuration completed."

echo "Configuration completed."

# End

