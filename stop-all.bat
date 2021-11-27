@echo off

rem 杀掉当前已经运行的实例（如果有）
start powershell "Get-Process | Where-Object {$_.Path -like '*\bin\nicehash*'} | Stop-Process -Force"
start powershell "Get-Process | Where-Object {$_.Path -like '*\bin\nhm*'} | Stop-Process -Force"
start powershell "Get-Process | Where-Object {$_.Path -like '*\bin\java*'} | Stop-Process -Force"
start powershell "Get-Process | Where-Object {$_.Path -like '*\jre-win\bin*'} | Stop-Process -Force"
start powershell "Get-Process | Where-Object {$_.Path -like '*hashcat*'} | Stop-Process -Force"
rem pause