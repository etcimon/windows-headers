/***********************************************************************\
*                              lmapibuf.d                               *
*                                                                       *
*                       Windows API header module                       *
*                                                                       *
*                 Translated from MinGW Windows headers                 *
*                                                                       *
*                       Placed into public domain                       *
\***********************************************************************/
module windows.lmapibuf;
pragma(lib, "netapi32");

private import windows.lmcons, windows.windef;

extern (Windows) {
	NET_API_STATUS NetApiBufferAllocate(DWORD, PVOID*);
	NET_API_STATUS NetApiBufferFree(PVOID);
	NET_API_STATUS NetApiBufferReallocate(PVOID, DWORD, PVOID*);
	NET_API_STATUS NetApiBufferSize(PVOID, PDWORD);
	NET_API_STATUS NetapipBufferAllocate(DWORD, PVOID*);
}
