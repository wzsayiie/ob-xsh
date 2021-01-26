@echo off

pushd %~dp0

set arg=/nologo /Ox /Fe"xsh"

cl %arg% xsh.c
if exist xsh.obj (
    del  xsh.obj
)

popd
