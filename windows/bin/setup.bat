@echo off

pushd %~dp0

set outfile=%1
set srcfile=%2
set reflibs=%3 %4 %5 %6

for /f %%i in ('dir /b /o:d %srcfile% %outfile%') do (
    set newer=%%i
)
if [%newer%]==[%srcfile%] (
    set objfile=%srcfile%.obj
    cl /nologo /Ox /Fo%objfile% /Fe%outfile% %srcfile% %reflibs%
    del %objfile%
)

popd
