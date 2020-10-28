@echo off

::remove files to the recycle bin.
::usage: re [path1] [path2] ...

call "%~dp0setup.bat" reapi.exe reapi.c shell32.lib
call "%~dp0reapi.exe" %*
