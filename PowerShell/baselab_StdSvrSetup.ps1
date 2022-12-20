#Setup Variables
#Ensure it's the AD DNS (Check using PowerShell#- DNSClientServerAddress)
#Userone password = "Admin2023"
$DCName = "ad.lab"
$LabComputers = "OU=Computers,OU=Lab,DC=ad,DC=lab"

#Join Server to domain
Add-Computer -credential ad\userone -DomainName $DCName -OUPath $LabComputers -restart
