@echo off
cd /d "%~dp0"
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /format:list') do set datetime=%%I
set datetime=%datetime:~0,4%_%datetime:~4,2%_%datetime:~6,2%

del /q ..\save_*.tar.zst 2>nul
git archive -v --format=tar.zst --prefix=save_%datetime%_HEAD/ -o ../save_%datetime%_HEAD.tar.zst HEAD

COPY /Y E:\game\¹Ö®Ö¢ºòÈº\Save*.lsd .\¹Ö®Ö¢ºòÈº\

pause
