@echo off
cd /d "%~dp0"
for /f "skip=1" %%x in ('wmic os get localdatetime') do if not defined MyDate set MyDate=%%x
set today=%MyDate:~0,4%%MyDate:~4,2%%MyDate:~6,2%

del /q ..\save_*.zip
git archive --format=zip --prefix=save_HEAD_%today%/ --output=../save_HEAD_%today%.zip HEAD

xcopy "C:\Users\steam\Documents\age\マブラヴオルタネイティヴLatest" ".\マブラヴオルタネイティヴLatest" /s /i /y
git add "マブラヴオルタネイティヴLatest"

pause
