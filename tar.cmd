@echo off
rem 本文件只支持gb2312编码
setlocal enableextensions
cd /d "%~dp0"
for /f "skip=1" %%x in ('wmic os get localdatetime') do if not defined MyDate set MyDate=%%x
set today=%MyDate:~0,4%%MyDate:~4,2%%MyDate:~6,2%

del /q ..\save_*.tar.zst ..\save_*.zip 2>nul
git archive --format=tar.zst --prefix=save_HEAD_%today%/ --output=../save_HEAD_%today%.tar.zst HEAD
git archive --format=zip --prefix=save_HEAD_%today%/ --output=../save_HEAD_%today%.zip HEAD

del /q ".\怪異症候群\Save*.lsd" 2>nul
copy /y "E:\game\怪異症候群\Save*.lsd" ".\怪異症候群\"

del /q ".\7 Days to End with You\*.es3" 2>nul
copy /y "C:\Users\mike2\AppData\LocalLow\Lizardry\Seven Days to End with You\*.es3" ".\7 Days to End with You\"

del /q ".\DDLC-1454445547\*" 2>nul
copy /y "C:\Users\mike2\AppData\Roaming\RenPy\DDLC-1454445547\*" ".\DDLC-1454445547\"

del /q ".\NEEDY GIRL OVERDOSE\Windose_Data\*.es3" 2>nul
copy /y "C:\Program Files (x86)\Steam\steamapps\common\NEEDY GIRL OVERDOSE\Windose_Data\*.es3" ".\NEEDY GIRL OVERDOSE\Windose_Data\"

rd /s /q ".\natsuno-kanata\leveldb\*" 2>nul
mkdir natsuno-kanata
xcopy "C:\Users\mike2\AppData\Roaming\natsuno-kanata\*" ".\natsuno-kanata" /s /i /y

rem hololive ERROR 完全版
rd /s /q ".\hololive ERROR\*" 2>nul
mkdir "hololive ERROR"
xcopy "C:\Users\mike2\AppData\LocalLow\cover\hololive ERROR\*"  ".\hololive ERROR" /s /i /y

rem コープスパーティーブラッドカバー５
rd /s /q ".\CorpsePartyBC_5\save_data\*" 2>nul
mkdir "CorpsePartyBC_5\save_data"
xcopy "E:\game\CorpsePartyBC_5\save_data\*"  ".\CorpsePartyBC_5\save_data" /s /i /y

rem 葬回診
rem del /q "E:\dev\save\com.uniteatsushi.sokaishin\*" 2>nul
rem adb pull /data/data/com.uniteatsushi.sokaishin/files/save.ini E:/dev/save/com.uniteatsushi.sokaishin
rem adb pull /data/data/com.uniteatsushi.sokaishin/files/setting.ini E:/dev/save/com.uniteatsushi.sokaishin

rem HoloCure
mkdir HoloCure
copy /y C:\Users\mike2\AppData\Local\HoloCure\* E:\dev\save\HoloCure\

rem 转换为html
type header.html > index.html
cmark-gfm -t html -e footnotes ^
  -e table -e strikethrough -e autolink -e tagfilter -e tasklist ^
  README.md >> index.html
type footer.html >> index.html
tidy -m index.html

pause
