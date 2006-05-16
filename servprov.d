/***********************************************************************\
*                              servprov.d                               *
*                                                                       *
*                       Windows API header module                       *
*                                                                       *
*                 Translated from MinGW Windows headers                 *
*                                                                       *
*                       Placed into public domain                       *
\***********************************************************************/
module win32.servprov;
private import win32.unknwn;
private import win32.wtypes;

extern (C) {
extern IID IID_IServiceProvider;
}

interface IServiceProvider : public IUnknown
{
	HRESULT QueryInterface(REFIID,PVOID*);
	ULONG AddRef();
	ULONG Release();
	HRESULT QueryService(REFGUID,REFIID,void**);
}
