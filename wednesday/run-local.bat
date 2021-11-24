@echo off

set PATH_ROOT="D:/graduation-project/graduation-project/application"
cd %PATH_ROOT%/"wednesday"
rd /s /q logs
md logs
start  /b ../jre-win/bin/java -Dspring.config.location=application-local.properties  -jar wednesday-server-1.0.1-RELEASE.jar


