/***********************************************************************\
*                                w32api.d                               *
*                                                                       *
*                       Windows API header module                       *
*                                                                       *
*                 Translated from MinGW Windows headers                 *
*                           by Stewart Gordon                           *
*                                                                       *
*                       Placed into public domain                       *
\***********************************************************************/
module win32.w32api;

enum {
	__W32API_VERSION       = 3.6,
	__W32API_MAJOR_VERSION = 3,
	__W32API_MINOR_VERSION = 6
}

/*	These version identifiers are used to specify the minimum version of
 *	Windows that an application will support.  Versions would be used to
 *
 */

version (Windows2000) {    // 0x500
	version = _Windows2000plus;
	version = _Windows98or2000plus;
	version = _WindowsMEor2000plus;
	version = _NToverride;
}

version (WindowsXP) {      // 0x501
	version = _Windows2000plus;
	version = _WindowsXPplus;
	version = _Windows98or2000plus;
	version = _WindowsMEor2000plus;
	version = _NToverride;
}

version (Windows2003) {    // 0x502
	version = _Windows2000plus;
	version = _WindowsXPplus;
	version = _Windows2003plus;
	version = _Windows98or2000plus;
	version = _WindowsMEor2000plus;
	version = _NToverride;
}

version (Windows98) {      // 0x410
	version = _Windows98plus;
	version = _Windows98or2000plus;
}

version (WindowsME) {      // 0x500
	version = _Windows98plus;
	version = _WindowsMEplus;
	version = _Windows98or2000plus;
	version = _WindowsMEor2000plus;
	version (_NToverride) {} else version = _Windows2000plus;
}

// 0x600
version (IE6)   version = IE56;
// 0x560
version (IE56)  version = IE501;
// 0x501
version (IE501) version = IE5;
// 0x500
version (IE5)   version = IE401;
// 0x401
version (IE401) version = IE4;
// 0x400
version (IE4)   version = IE3;
// 0x300
