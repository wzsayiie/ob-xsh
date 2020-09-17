#include <Windows.h>

int wmain(int nArgc, LPCWSTR *lpArgs)
{
    LPCWSTR lpProgram   = *lpArgs;
    LPCWSTR lpExtension = wcsrchr(lpProgram, L'.');

    WCHAR szBatch[MAX_PATH] = L"";
    wcscat (szBatch, L"\"");
    wcsncat(szBatch, lpProgram, lpExtension - lpProgram);
    wcscat (szBatch, L".bat");
    wcscat (szBatch, L"\"");

    int nCode = _wsystem(szBatch);
    if (nCode != 0)
    {
        _wsystem(L"pause");
    }
}
