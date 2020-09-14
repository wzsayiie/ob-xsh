@echo off

pushd %~dp0

set arg=/nologo /Ox /Fe"xsh"

cl %arg% xshwin32.c
if exist xshwin32.obj (
    del  xshwin32.obj
)

popd
