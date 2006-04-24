/* Converted from MinGW w32api/basetyps.h
   Public domain.
*/
module win32.basetyps;
private import win32.windef;

struct GUID {          // size is 16
    align(1):
	DWORD Data1;
	WORD  Data2;
	WORD  Data3;
	BYTE  Data4[8];
}
alias GUID * REFGUID, LPGUID;
alias GUID UUID;
alias GUID IID;
alias GUID CLSID;

alias CLSID * LPCLSID, REFCLSID;
alias IID * LPIID, REFIID;
alias GUID FMTID;
alias FMTID * REFFMTID;
alias uint error_status_t;
alias UUID uuid_t;
alias uint PROPID;
