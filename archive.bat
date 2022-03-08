@echo off
cd /d "%~dp0"
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /format:list') do set datetime=%%I
set datetime=%datetime:~0,4%_%datetime:~4,2%_%datetime:~6,2%
git archive -v -o ../save_%datetime%.tar.zst HEAD
rem git archive -v -o ../save_%datetime%.zip HEAD
pause
