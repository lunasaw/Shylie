@echo off

rem 输入用户外标和密码，生成UserSetting.json
if exist UserSetting.json (
	echo found UserSetting.json
	goto run
)
set /p userMark=请输入登录邮箱或手机：
set /p password=请输入密码：
echo {"userMark":"%userMark%","password":"%password%"} > UserSetting.json

:run
rem 运行
start jre/bin/java -Dspring.config.location=application.properties -jar sweeney-server-1.8-RELEASE.jar

rem pause