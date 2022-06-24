@echo off
cd /d "%~dp0"
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /format:list') do set datetime=%%I
set datetime=%datetime:~0,4%_%datetime:~4,2%_%datetime:~6,2%

del /q ..\save_*.tar.zst 2>nul
git archive -v --format=tar.zst --prefix=save_%datetime%_HEAD/ -o ../save_%datetime%_HEAD.tar.zst HEAD

DEL /Q ".\�֮�֢��Ⱥ\Save*.lsd" 2>nul
COPY /Y "E:\game\�֮�֢��Ⱥ\Save*.lsd" ".\�֮�֢��Ⱥ\"

DEL /Q ".\7 Days to End with You\*.es3" 2>nul
COPY /Y "C:\Users\mike2\AppData\LocalLow\Lizardry\Seven Days to End with You\*.es3" ".\7 Days to End with You\"

DEL /Q ".\DDLC-1454445547\*" 2>nul
COPY /Y "C:\Users\mike2\AppData\Roaming\RenPy\DDLC-1454445547\*" ".\DDLC-1454445547\"

DEL /Q ".\NEEDY GIRL OVERDOSE\Windose_Data\*.es3" 2>nul
COPY /Y "C:\Program Files (x86)\Steam\steamapps\common\NEEDY GIRL OVERDOSE\Windose_Data\*.es3" ".\NEEDY GIRL OVERDOSE\Windose_Data\"

DEL /Q ".\natsuno-kanata\leveldb\*" 2>nul
COPY /Y "C:\Users\mike2\AppData\Roaming\natsuno-kanata\Local Storage\leveldb\*" ".\natsuno-kanata\leveldb\"

pause
