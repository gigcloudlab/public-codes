#Setup Variables
#Update DNS server to the AD DNS (Check using PowerShell#- DNSClientServerAddress)
#Userone password = "Admin2023"
$DCName = "ad.lab"
$LabComputers = "OU=Computers,OU=Lab,DC=ad,DC=lab"

#Join Server to domain
Add-Computer -credential ad\u-domadm -DomainName $DCName -OUPath $LabComputers -restart
