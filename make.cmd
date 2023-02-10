@echo off
cd /d "%~dp0"

xcopy "C:\Users\mike2\AppData\LocalLow\Lizardry\Seven Days to End with You\*" "E:\dev\save\Seven Days to End with You" /s /i /y
copy /y "C:\Program Files (x86)\Steam\steamapps\common\NEEDY GIRL OVERDOSE\Windose_Data\*.es3" "E:\dev\save\NEEDY GIRL OVERDOSE\Windose_Data"
xcopy C:\Users\mike2\AppData\Roaming\natsuno-kanata\* E:\dev\save\natsuno-kanata /s /i /y
xcopy "C:\Users\mike2\AppData\LocalLow\cover\hololive ERROR\*"  "E:\dev\save\hololive ERROR" /s /i /y
copy /y "E:\game\TeachingFeeling-4.¦Â2\*.sav" "E:\dev\save\TeachingFeeling-4.¦Â2"
xcopy "C:\Users\mike2\AppData\LocalLow\OTLGAME\LoveLoveSchoolDays\*" "E:\dev\save\LoveLoveSchoolDays" /s /i /y

type README.md | awk "/^\|/" | C:\msys64\usr\bin\sort.exe > README-sorted.md

del /q ..\save-main.zip 2>nul
git archive --format=zip --prefix=save-main/ --output=../save-main.zip main

pause
