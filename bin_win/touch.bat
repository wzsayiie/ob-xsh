@echo off

::(CAN ONLY) create files.
::usage: touch [path1] [path2] ...

for %%i in (%*) do (
    type nul > %%i
)
