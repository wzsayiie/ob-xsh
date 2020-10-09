//remove files to the recycle bin.
//usage: reapi [path1] [path2] ...

#include <stdio.h>
#include <string.h>
#include <Windows.h>

//merge strings to "xx\0 ... xx\0xx\0\0".
LPWSTR CopyStrings(LPCWSTR *lpList, int nBegin, int nEnd)
{
    LPWSTR lpStrings = NULL;
    size_t nAccLen = 0;

    for (int n = nBegin; n < nEnd; ++n)
    {
        LPCWSTR lpItem = lpList[n];
        size_t nLen = wcslen(lpItem) + 1; //include '\0' at the end.

        lpStrings = realloc(lpStrings, nAccLen + nLen);
        wcsncpy(lpStrings + nAccLen, lpItem, nLen);
        nAccLen += nLen;
    }
    lpStrings = realloc(lpStrings, nAccLen + 1);
    lpStrings[nAccLen] = L'\0';

    return lpStrings;
}

VOID RecycleFiles(LPCWSTR lpFiles)
{
    SHFILEOPSTRUCTW stFileOp;

    stFileOp.hwnd   = NULL;
    stFileOp.wFunc  = FO_DELETE;
    stFileOp.pFrom  = lpFiles;
    stFileOp.pTo    = NULL;
    stFileOp.fFlags = FOF_ALLOWUNDO;

    stFileOp.fAnyOperationsAborted = FALSE; //return parameter.
    stFileOp.hNameMappings         = NULL ; //return parameter.
    stFileOp.lpszProgressTitle     = NULL ;

    int nError = SHFileOperationW(&stFileOp);
    if (nError)
    {
        wprintf(L"error: SHFileOperationW returns 0x%x.\n", nError);
    }
}

int wmain(int nArgc, LPCWSTR *lpArgs)
{
    if (nArgc > 1)
    {
        LPWSTR lpFiles = CopyStrings(lpArgs, 1, nArgc);
        RecycleFiles(lpFiles);
        free(lpFiles);
    }
}
