@echo off
cd /d "%~dp0"

xcopy C:\Users\mike2\AppData\Roaming\7DaysToDie\Saves\* E:\dev\save\7DaysToDie /s /i /y
copy /y "C:\Program Files (x86)\Steam\steamapps\common\NEEDY GIRL OVERDOSE\Windose_Data\*.es3" "e:\dev\save\NEEDY GIRL OVERDOSE\Windose_Data"
xcopy C:\Users\mike2\AppData\Roaming\natsuno-kanata\* e:\dev\save\natsuno-kanata /s /i /y
xcopy "C:\Users\mike2\AppData\LocalLow\cover\hololive ERROR\*"  "e:\dev\save\hololive ERROR" /s /i /y
copy /y "E:\game\TeachingFeeling-4.¦Â2\*.sav" "e:\dev\save\TeachingFeeling-4.¦Â2"

del /q ..\save-main.zip
git archive --format=zip --prefix=save-main/ --output=../save-main.zip main

pause
