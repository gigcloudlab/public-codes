#Create users
New-ADUser -name "userone" -SamAccountName "userone" -DisplayName "User One" -GivenName "One" -Surname "User" -PasswordNeverExpires $true -Enabled $true -accountPassword (ConvertTo-SecureString -AsPlainText "Admin2023" -Force) -Path 'OU=Users,OU=Lab,DC=ad,DC=lab'
New-ADUser -name "usertwo" -SamAccountName "usertwo" -DisplayName "User Two" -GivenName "Two" -Surname "User" -PasswordNeverExpires $true -Enabled $true -accountPassword (ConvertTo-SecureString -AsPlainText "Admin2023" -Force) -Path 'OU=Users,OU=Lab,DC=ad,DC=lab'
New-ADUser -name "uentadm" -SamAccountName "uentadm" -DisplayName "User EntAdmin" -GivenName "EntAdmin" -Surname "User" -PasswordNeverExpires $true -Enabled $true -accountPassword (ConvertTo-SecureString -AsPlainText "Admin2023" -Force) -Path 'OU=Users,OU=Lab,DC=ad,DC=lab'
New-ADUser -name "udomadm" -SamAccountName "udomadm" -DisplayName "User DomAdmin" -GivenName "DomainAdmin" -Surname "User" -PasswordNeverExpires $true -Enabled $true -accountPassword (ConvertTo-SecureString -AsPlainText "Admin2023" -Force) -Path 'OU=Users,OU=Lab,DC=ad,DC=lab'
New-ADUser -name "saone" -SamAccountName "saone" -DisplayName "Service Account One" -GivenName "One" -Surname "Service Account" -PasswordNeverExpires $true -Enabled $true -accountPassword (ConvertTo-SecureString -AsPlainText "Admin2023" -Force) -Path 'OU=Service Accounts,OU=Lab,DC=ad,DC=lab'

#Add users to group
Add-ADGroupMember -Identity "Enterprise Admins" -Members "uentadm"
Add-ADGroupMember -Identity "Domain Admins" -Members "udomadm"
