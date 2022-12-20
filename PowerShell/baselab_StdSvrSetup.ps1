#Set Execution Policy to allow script to run
Set-ExecutionPolicy Bypass -Scope Process -Force 
#Choco install and Choco Apps
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install googlechrome -y
choco install putty -y
choco install notepadplusplus -y
choco install winscp -y

#Download Scripts to Set the rest of the Domain up when logged in
New-Item -Path "c:\" -Name "Baselab" -ItemType "directory" -Force
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/gigcloudlab/public-codes/main/PowerShell/baselab_StdSvrJoinDomain.ps1" -OutFile "C:\Baselab\baselab_StdSvrJoinDomain.ps1"
#Setup and Partition Data Disk
Get-Disk | Where partitionstyle -eq 'raw' | Initialize-Disk -PartitionStyle MBR -PassThru | New-Partition -AssignDriveLetter -UseMaximumSize | Format-Volume -FileSystem NTFS -NewFileSystemLabel 'Data' -Confirm:$false 
