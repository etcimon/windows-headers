/***********************************************************************\
*                                 dxerr.d                               *
*                                                                       *
*                       Windows API header module                       *
*                                                                       *
*                       Placed into public domain                       *
\***********************************************************************/
module win32.directx.dxerr;

import win32.windows;

extern(Windows) {
	CHAR* DXGetErrorStringA(HRESULT hr);
	WCHAR* DXGetErrorStringW(HRESULT hr);
	CHAR* DXGetErrorDescriptionA(HRESULT hr);
	WCHAR* DXGetErrorDescriptionW(HRESULT hr);
	HRESULT DXTraceA(CHAR* strFile, DWORD dwLine, HRESULT hr, CHAR* strMsg, BOOL bPopMsgBox);
	HRESULT DXTraceW(CHAR* strFile, DWORD dwLine, HRESULT hr, WCHAR* strMsg, BOOL bPopMsgBox);
}

version(Unicode) {
	alias DXGetErrorStringW DXGetErrorString;
	alias DXGetErrorDescriptionW DXGetErrorDescription;
	alias DXTraceW DXTrace;
} else {
	alias DXGetErrorStringA DXGetErrorString;
	alias DXGetErrorDescriptionA DXGetErrorDescription;
	alias DXTraceA DXTrace;
}