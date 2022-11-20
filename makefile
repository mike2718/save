
all:	copy tar sort

html:	header.html footer.html README.md sort
	copy /y header.html index.html
	cmark-gfm -t html -e footnotes -e table -e strikethrough -e autolink \
		  -e tagfilter -e tasklist README.md >> index.html
	type footer.html >> index.html
	tidy -i -m -q -w 80 index.html 2>nul

tar:	clean
	git archive --format=zip --prefix=save/ --output=../save.zip HEAD

copy:
	copy /y "C:\Program Files (x86)\Steam\steamapps\common\NEEDY GIRL OVERDOSE\Windose_Data\*.es3" "e:\dev\save\NEEDY GIRL OVERDOSE\Windose_Data"
	xcopy C:\Users\mike2\AppData\Roaming\natsuno-kanata\* e:\dev\save\natsuno-kanata /s /i /y
	xcopy "C:\Users\mike2\AppData\LocalLow\cover\hololive ERROR\*"  "e:\dev\save\hololive ERROR" /s /i /y
	copy /y "E:\game\TeachingFeeling-4.¦Â2\*.sav" "e:\dev\save\TeachingFeeling-4.¦Â2"
	xcopy "C:\Users\mike2\AppData\Local\Dysthanasia\*"  "e:\dev\save\Dysthanasia" /s /i /y

sort:	README.md
	type README.md | awk "/^\|/" | C:\msys64\usr\bin\sort.exe > README-sorted.md

clean:
	del /q ..\save.zip
