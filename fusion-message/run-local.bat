@echo off

start jre/bin/java /b -Dspring.config.location=application-local.properties  -jar fusion-message-server-1.0.1-RELEASE.jar