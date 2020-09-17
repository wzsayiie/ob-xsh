@echo off

set XSHROOT=%~dp0
if %XSHROOT:~-1%==\ (
    ::remove backslash at the end.
    set XSHROOT=%XSHROOT:~0,-1%
)

::system "path".
set PATH=
set PATH=%PATH%;C:\Windows\System32
set PATH=%PATH%;C:\Windows

::xsh environment.
set folder=%XSHROOT%\local\env   & call :loadenv
set folder=%XSHROOT%\onwin32\env & call :loadenv

::xsh "path".
set PATH=%PATH%;%XSHROOT%\bin
set PATH=%PATH%;%XSHROOT%\local\bin
set PATH=%PATH%;%XSHROOT%\onwin32\bin

cls
cmd /k
goto end

:loadenv
for /r "%folder%" %%f in (*.bat) do (
    call "%%f"
)
goto end

:end
