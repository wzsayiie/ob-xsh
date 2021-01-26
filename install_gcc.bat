@echo off

pushd %~dp0

gcc -Os -o xsh.exe xsh.c

popd
