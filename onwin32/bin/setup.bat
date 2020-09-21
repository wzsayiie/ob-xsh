@echo off

if [%1]==[] goto end

set apiname=%1

set srcfile=%apiname%.c
set objfile=%apiname%.obj
set exefile=%apiname%.exe

set srcpath="%~dp0%srcfile%"
set objpath="%~dp0%objfile%"
set exepath="%~dp0%exefile%"

for /f %%i in ('dir /b /o:d %srcpath% %exepath%') do (
    set newest=%%i
)
if [%newest%]==[%srcfile%] (
    cl /nologo %srcpath% /Fo%objpath% /Fe%exepath%

    if exist %objpath% (
        del  %objpath%
    )
)

:end
