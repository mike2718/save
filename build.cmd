@echo off
rem 本文件只支持 CP936/MS936/WINDOWS-936 编码
cd /d "%~dp0"

rem 转换为html
type header.html > index.html
cmark-gfm -t html -e footnotes ^
  -e table -e strikethrough -e autolink -e tagfilter -e tasklist ^
  README.md >> index.html
type footer.html >> index.html
tidy -m index.html

pause