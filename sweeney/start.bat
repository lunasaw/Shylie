@echo off

rem �����û��������룬����UserSetting.json
if exist UserSetting.json (
	echo found UserSetting.json
	goto run
)
set /p userMark=�������¼������ֻ���
set /p password=���������룺
echo {"userMark":"%userMark%","password":"%password%"} > UserSetting.json

:run
rem ����
start jre/bin/java -Dspring.config.location=application.properties -jar sweeney-server-1.8-RELEASE.jar

rem pause