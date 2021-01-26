@echo off

pushd %~dp0

clang -Os -o xsh.exe xsh.c

popd
