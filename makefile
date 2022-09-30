
all:	html

html:	header.html footer.html README.md
	copy /y header.html index.html
	cmark-gfm -t html -e footnotes -e table -e strikethrough -e autolink \
		-e tagfilter -e tasklist README.md >> index.html
	type footer.html >> index.html
	tidy -m index.html

tar:	clean
	git archive --format=zip --prefix=save/ --output=../save.zip HEAD

copy:
	xcopy "C:\Users\mike2\AppData\Roaming\RenPy\DDLC-1454445547" ".\DDLC-1454445547"/s /i /y
	copy /y "C:\Program Files (x86)\Steam\steamapps\common\NEEDY GIRL OVERDOSE\Windose_Data\*.es3" ".\NEEDY GIRL OVERDOSE\Windose_Data"
	xcopy C:\Users\mike2\AppData\Roaming\natsuno-kanata\* .\natsuno-kanata /s /i /y
	xcopy "C:\Users\mike2\AppData\LocalLow\cover\hololive ERROR\*"  ".\hololive ERROR" /s /i /y
	xcopy "C:\Users\mike2\AppData\Local\UO\*"  ".\UO" /s /i /y

clean:
	del /q ..\save.zip