/***********************************************************************\
*                               exdispid.d                              *
*                                                                       *
*                       Windows API header module                       *
*                                                                       *
*             Translated from MinGW API for MS-Windows 3.10             *
*                           by Stewart Gordon                           *
*                                                                       *
*                       Placed into public domain                       *
\***********************************************************************/
module windows.exdispid;
nothrow:
enum : int {
	DISPID_STATUSTEXTCHANGE = 102,
	DISPID_PROGRESSCHANGE   = 108,
	DISPID_TITLECHANGE      = 113,
	DISPID_BEFORENAVIGATE2  = 250,
	DISPID_NEWWINDOW2       = 251,
	DISPID_DOCUMENTCOMPLETE = 259
}
