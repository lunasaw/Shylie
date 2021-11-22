@echo off
set PATH_ROOT="D:\graduation-project\luna-project\application"

cd %PATH_ROOT%\fusion-message
start /b java -Dspring.config.location=application-local.properties  -jar fusion-message-server-1.0.1-RELEASE.jar

cd %PATH_ROOT%\fusion-user
start /b java -Dspring.config.location=application-local.properties  -jar fusion-user-server-1.0-RELEASE.jar

cd %PATH_ROOT%\wednesday
start /b java -Dspring.config.location=application-local.properties -jar wednesday-server-1.0.1-RELEASE.jar

cd %PATH_ROOT%\sweeney
start /b jre/bin/java -Dspring.config.location=application-local.properties -jar sweeney-server-1.8-RELEASE.jar

cd %PATH_ROOT%