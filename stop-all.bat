@echo off
set PATH_ROOT="D:\graduation-project\luna-project\application"

start powershell "Get-Process | Where-Object {$_.Path -like '*PATH_ROOT*'} | Stop-Process -Force"

rem pause