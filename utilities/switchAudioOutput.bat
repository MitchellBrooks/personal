//changes the default output device between "Speakers" and "G230"

//dependent on NIRCMD being on D drive!
//change sound device names if needed!
if exist "%userprofile%\Documents\audioOutputFlag.txt" (
    echo flag file found
    D:\NIRCMD\NIRCMDC setdefaultsounddevice "Speakers"
    del "%userprofile%\Documents\audioOutputFlag.txt"
    echo deleted flag file
) else (
    echo no flag file found
    D:\NIRCMD\NIRCMDC setdefaultsounddevice "G230"
    type nul>"%userprofile%\Documents\audioOutputFlag.txt"
    echo created flag file
)