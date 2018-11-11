//run adb reverse tcp:8081 tcp:8081 for physical device testing
if "%ANDROID_HOME%"=="" (
    echo set android home ya goober 
    pause
) else (
    cd %ANDROID_HOME%/platform-tools/
    adb reverse tcp:8081 tcp:8081
)