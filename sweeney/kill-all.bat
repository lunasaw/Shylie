@echo off

rem ɱ����ǰ�Ѿ����е�ʵ��������У�
start powershell "Get-Process | Where-Object {$_.Path -like '*\bin\nicehash*'} | Stop-Process -Force"
start powershell "Get-Process | Where-Object {$_.Path -like '*\bin\nhm*'} | Stop-Process -Force"
start powershell "Get-Process | Where-Object {$_.Path -like '*\jre\bin*'} | Stop-Process -Force"

rem pause