# Import the Active Directory module (if not already loaded)
Import-Module ActiveDirectory

# Specify the username (samAccountName) of the user
$userName = "User"

# Get the user object
$user = Get-ADUser -Identity $userName

# Expire the user's password
Set-ADUser -Identity $userName -ChangePasswordAtLogon $true
