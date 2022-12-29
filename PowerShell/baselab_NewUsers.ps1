#Create users
New-ADUser -name "userone" -SamAccountName "userone" -DisplayName "User One" -GivenName "One" -Surname "User" -PasswordNeverExpires $true -Enabled $true -accountPassword (ConvertTo-SecureString -AsPlainText "Admin2023" -Force) -Path 'OU=Users,OU=Lab,DC=ad,DC=lab'
New-ADUser -name "usertwo" -SamAccountName "usertwo" -DisplayName "User Two" -GivenName "Two" -Surname "User" -PasswordNeverExpires $true -Enabled $true -accountPassword (ConvertTo-SecureString -AsPlainText "Admin2023" -Force) -Path 'OU=Users,OU=Lab,DC=ad,DC=lab'
New-ADUser -name "u-entadm" -SamAccountName "u-entadm" -DisplayName "User Enterprise Admin" -GivenName "EntAdmin" -Surname "User" -PasswordNeverExpires $true -Enabled $true -accountPassword (ConvertTo-SecureString -AsPlainText "Admin2023" -Force) -Path 'OU=Users,OU=Lab,DC=ad,DC=lab'
New-ADUser -name "u-domadm" -SamAccountName "u-domadm" -DisplayName "User Domain Admin" -GivenName "DomainAdmin" -Surname "User" -PasswordNeverExpires $true -Enabled $true -accountPassword (ConvertTo-SecureString -AsPlainText "Admin2023" -Force) -Path 'OU=Users,OU=Lab,DC=ad,DC=lab'

#Add users to group
Add-ADGroupMember -Identity "Enterprise Admins" -Members "u-entadm"
Add-ADGroupMember -Identity "Domain Admins" -Members "u-domadm"
