@echo off
rem 本文件只支持 CP936/MS936/WINDOWS-936 编码
cd /d "%~dp0"
for /f "skip=1" %%x in ('wmic os get localdatetime') do if not defined MyDate set MyDate=%%x
set today=%MyDate:~0,4%%MyDate:~4,2%%MyDate:~6,2%

del /q ..\save_*.zip
rem git archive --format=tar.zst --prefix=save_HEAD_%today%/ --output=../save_HEAD_%today%.tar.zst HEAD
git archive --format=zip --prefix=save_HEAD_%today%/ --output=../save_HEAD_%today%.zip HEAD

copy /y "E:\game\怪異症候群\Save*.lsd" ".\怪異症候群"

xcopy "C:\Users\mike2\AppData\LocalLow\Lizardry\Seven Days to End with You" ".\7 Days to End with You" /i /y

xcopy "C:\Users\mike2\AppData\Roaming\RenPy\DDLC-1454445547" ".\DDLC-1454445547" /i /y

copy /y "C:\Program Files (x86)\Steam\steamapps\common\NEEDY GIRL OVERDOSE\Windose_Data\*.es3" ".\NEEDY GIRL OVERDOSE\Windose_Data"

xcopy C:\Users\mike2\AppData\Roaming\natsuno-kanata\* .\natsuno-kanata /s /i /y

rem hololive ERROR 完全版
xcopy "C:\Users\mike2\AppData\LocalLow\cover\hololive ERROR\*"  ".\hololive ERROR" /s /i /y

rem コープスパーティーブラッドカバー５

rem 葬回診
rem del /q "E:\dev\save\com.uniteatsushi.sokaishin\*"
rem adb pull /data/data/com.uniteatsushi.sokaishin/files/save.ini E:/dev/save/com.uniteatsushi.sokaishin
rem adb pull /data/data/com.uniteatsushi.sokaishin/files/setting.ini E:/dev/save/com.uniteatsushi.sokaishin

rem HoloCure
xcopy C:\Users\mike2\AppData\Local\HoloCure .\HoloCure /i /y

pause
