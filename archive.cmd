@echo off
cd /d "%~dp0"

for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /format:list') do set datetime=%%I
set datetime=%datetime:~0,4%_%datetime:~4,2%_%datetime:~6,2%

del /q ".\¹Ö®Ö¢ºòÈº\Save*.lsd" 2>nul
copy /y "E:\game\¹Ö®Ö¢ºòÈº\Save*.lsd" ".\¹Ö®Ö¢ºòÈº\"

del /q ".\7 Days to End with You\*.es3" 2>nul
copy /y "C:\Users\mike2\AppData\LocalLow\Lizardry\Seven Days to End with You\*.es3" ".\7 Days to End with You\"

del /q ".\DDLC-1454445547\*" 2>nul
copy /y "C:\Users\mike2\AppData\Roaming\RenPy\DDLC-1454445547\*" ".\DDLC-1454445547\"

del /q ".\NEEDY GIRL OVERDOSE\Windose_Data\*.es3" 2>nul
copy /y "C:\Program Files (x86)\Steam\steamapps\common\NEEDY GIRL OVERDOSE\Windose_Data\*.es3" ".\NEEDY GIRL OVERDOSE\Windose_Data\"

rd /s /q ".\natsuno-kanata\leveldb\*" 2>nul
mkdir natsuno-kanata
xcopy "C:\Users\mike2\AppData\Roaming\natsuno-kanata\*" ".\natsuno-kanata\" /s /i /y

del /q ".\Pocket Mirror\Save*.rvdata2" 2>nul
copy /y "E:\game\Pocket Mirror ver.1.3\Pocket Mirror\Save*.rvdata2" ".\Pocket Mirror\"

del /q ".\cloe\*" 2>nul
copy /y "E:\game\cloe\*.savedata" ".\cloe\"

rd /s /q ".\hololive ERROR\*" 2>nul
mkdir hololive ERROR
xcopy "C:\Users\mike2\AppData\LocalLow\cover\hololive ERROR\*"  ".\hololive ERROR\" /s /i /y

cd ..
del /q save_*.rar 2>nul
E:\cmdtool\rar.exe a -ma -m5 -rr8 -s -md128 -xsave\.git save_%datetime%.rar save
cd save

pause
