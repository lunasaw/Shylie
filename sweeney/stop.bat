@echo off
rem 杀掉当前已经运行的实例（如果有）
start powershell "Get-Process | Where-Object {$_.Path -like '*\jre-win\bin*'} | Stop-Process -Force"
