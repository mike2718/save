@echo off
cd /d "%~dp0"

for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /format:list') do set datetime=%%I
set datetime=%datetime:~0,4%_%datetime:~4,2%_%datetime:~6,2%

rem del /q ..\save_*.tar.zst 2>nul
rem git archive -v --format=tar.zst --prefix=save_%datetime%_HEAD/ -o ../save_%datetime%_HEAD.tar.zst HEAD

DEL /Q ".\¹Ö®Ö¢ºòÈº\Save*.lsd" 2>nul
COPY /Y "E:\game\¹Ö®Ö¢ºòÈº\Save*.lsd" ".\¹Ö®Ö¢ºòÈº\"

DEL /Q ".\7 Days to End with You\*.es3" 2>nul
COPY /Y "C:\Users\mike2\AppData\LocalLow\Lizardry\Seven Days to End with You\*.es3" ".\7 Days to End with You\"

DEL /Q ".\DDLC-1454445547\*" 2>nul
COPY /Y "C:\Users\mike2\AppData\Roaming\RenPy\DDLC-1454445547\*" ".\DDLC-1454445547\"

DEL /Q ".\NEEDY GIRL OVERDOSE\Windose_Data\*.es3" 2>nul
COPY /Y "C:\Program Files (x86)\Steam\steamapps\common\NEEDY GIRL OVERDOSE\Windose_Data\*.es3" ".\NEEDY GIRL OVERDOSE\Windose_Data\"

DEL /Q ".\natsuno-kanata\leveldb\*" 2>nul
COPY /Y "C:\Users\mike2\AppData\Roaming\natsuno-kanata\Local Storage\leveldb\*" ".\natsuno-kanata\leveldb\"

DEL /Q ".\Pocket Mirror\Save*.rvdata2" 2>nul
COPY /Y  "E:\game\Pocket Mirror ver.1.3\Pocket Mirror\Save*.rvdata2" ".\Pocket Mirror\"

cd ..
del /q save_*.rar 2>nul
E:\cmdtool\rar.exe a -m5 -rr8 -xsave\.git save_%datetime%.rar save
cd save

pause
