@echo off

set PATH_ROOT="D:/graduation-project/graduation-project/application"
cd %PATH_ROOT%/"fusion-user"
rd /s /q logs
md logs
start  /b ../jre-win/bin/java -Dspring.config.location=application-local.properties  -jar fusion-user-server-1.0-RELEASE.jar


