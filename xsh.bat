@echo off

::xsh directory path.
set XSHROOT=%~dp0
if %XSHROOT:~-1%==\ (
    ::remove backslash at the end.
    set XSHROOT=%XSHROOT:~0,-1%
)

::environment variable "path".
set PATH=%PATH%;%XSHROOT%\bin
set PATH=%PATH%;%XSHROOT%\bin_win
set PATH=%PATH%;%XSHROOT%\loc_win

::custom commands.
doskey cat   = type $*
doskey ls    = dir /d $*
doskey mk    = type nul $G $1
doskey mkd   = mkdir $*
doskey mv    = move $*
doskey open  = start "" $*
doskey wd    = cd /d $1
doskey which = where $*

::user local configutation.
if exist %XSHROOT%\loc_win\cfg.bat (
    call %XSHROOT%\loc_win\cfg.bat
)

::console configuration.
prompt $p$s%%$s
