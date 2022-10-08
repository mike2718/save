@echo off
make.exe -f makefile copy
make.exe -f makefile html
make.exe -f makefile tar
pause