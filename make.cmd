@echo off
cd /d "%~dp0"

rem xcopy "C:\Users\Saori\AppData\LocalLow\Lizardry\Seven Days to End with You\*" "C:\Users\Saori\dev\save\Seven Days to End with You" /s /i /y
rem copy /y "C:\Program Files (x86)\Steam\steamapps\common\NEEDY GIRL OVERDOSE\Windose_Data\*.es3" "C:\Users\Saori\dev\save\NEEDY GIRL OVERDOSE\Windose_Data"
rem xcopy C:\Users\Saori\AppData\Roaming\natsuno-kanata\* C:\Users\Saori\dev\save\natsuno-kanata /s /i /y
rem xcopy "C:\Users\Saori\AppData\LocalLow\cover\hololive ERROR\*"  "C:\Users\Saori\dev\save\hololive ERROR" /s /i /y
rem copy /y "C:\Users\Saori\game\TeachingFeeling-4.¦Â2\*.sav" "C:\Users\Saori\dev\save\TeachingFeeling-4.¦Â2"
rem xcopy "C:\Users\Saori\AppData\LocalLow\OTLGAME\LoveLoveSchoolDays\*" "C:\Users\Saori\dev\save\LoveLoveSchoolDays" /s /i /y

type README.md | awk "/^\|/" | sort.exe > README-sorted.md

git archive --format=tar.xz --prefix=save/ --output=/d/save.tar.xz main
