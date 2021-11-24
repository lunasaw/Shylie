@echo off
set PATH_ROOT="D:\graduation-project\project\application"
start %PATH_ROOT%/jre/bin/java -Dspring.config.location=application-local.properties  -jar fusion-message-server-1.0.1-RELEASE.jar