@echo off

::find files with the specified pattern.
::usage: seek [pattern] [path1] [path2] ... .

if [%1]==[] goto end

::"for" requires at last one wildcard.
set pattern=%1*

::don't use "for".
::for loop will expand wildcards in parameters.
if not [%2]==[] for /r %2 %%i in (%pattern%) do echo %%i
if not [%3]==[] for /r %3 %%i in (%pattern%) do echo %%i
if not [%4]==[] for /r %4 %%i in (%pattern%) do echo %%i
if not [%5]==[] for /r %5 %%i in (%pattern%) do echo %%i
if not [%6]==[] for /r %6 %%i in (%pattern%) do echo %%i
if not [%7]==[] for /r %7 %%i in (%pattern%) do echo %%i
if not [%8]==[] for /r %8 %%i in (%pattern%) do echo %%i
if not [%9]==[] for /r %9 %%i in (%pattern%) do echo %%i
echo.

:end
