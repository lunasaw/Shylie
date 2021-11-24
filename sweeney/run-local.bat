@echo off

set PATH_ROOT="D:/graduation-project/graduation-project/application"
cd %PATH_ROOT%/"sweeney"
rd /s /q logs
md logs
start  /b ../jre-win/bin/java -Dspring.config.location=application-local.properties  -jar sweeney-1.8-RELEASE.jar


