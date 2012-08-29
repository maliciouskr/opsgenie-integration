@echo off
REM @echo on

SET LAMP_HOME=C:\lamp
SET OC_CLASSPATH=%SM_HOME%/classes/*

SET MESSAGE=Smarts notification: %SM_OBJ_ClassName% %SM_OBJ_InstanceDisplayName% %SM_OBJ_EventName%
SET RECIPIENTS=%SM_POBJ_Recipients%
SET DESCRIPTION=%SM_OBJ_EventText%
SET ACTIONS="acknowledge,unacknowledge,take ownership,release ownership"

echo Creating Alert
CMD /c %LAMP_HOME%\lamp.bat createAlert --message %MESSAGE% --recipients %RECIPIENTS% --description %DESCRIPTION% ^
--source Smarts --actions %ACTIONS% ^
-DElementName=%SM_OBJ_ElementName% -DDomain=%SM_OBJ_SourceDomainName% -DCount=%SM_OBJ_OccurrenceCount% ^
-DNotificationName=%SM_OBJ_Name% -DDomainName=%SM_SERVER_NAME%



