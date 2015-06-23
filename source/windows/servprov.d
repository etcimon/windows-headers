/***********************************************************************\
*                               servprov.d                              *
*                                                                       *
*                       Windows API header module                       *
*                                                                       *
*             Translated from MinGW API for MS-Windows 3.10             *
*                                                                       *
*                       Placed into public domain                       *
\***********************************************************************/
module windows.servprov;

private import windows.basetyps, windows.unknwn, windows.windef, windows.wtypes;

interface IServiceProvider : IUnknown {
	HRESULT QueryService(REFGUID, REFIID, void**);
}
