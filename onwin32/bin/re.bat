@echo off

::remove file to recycle bin.
::usage: re [path1] [path2] ...

"%~dp0setup" reapi
"%~dp0reapi" %*
