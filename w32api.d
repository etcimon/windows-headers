/***********************************************************************\
*                                w32api.d                               *
*                                                                       *
*                       Windows API header module                       *
*                                                                       *
*             Translated from MinGW API for MS-Windows 4.0              *
*                           by Stewart Gordon                           *
*                                                                       *
*                       Placed into public domain                       *
\***********************************************************************/
module win32.w32api;

const __W32API_VERSION = 3.17;
const __W32API_MAJOR_VERSION = 3;
const __W32API_MINOR_VERSION = 17;

/*	These version identifiers are used to specify the minimum version of Windows that an
 *	application will support.
 *
 *	Previously the minimum Windows 9x and Windows NT versions could be specified.  However, since
 *	Windows 9x is no longer supported, either by Microsoft or by DMD, this distinction has been
 *	removed in order to simplify the bindings.
 */
version (Windows7) {
	const uint _WIN32_WINNT = 0x601;
} else version (WindowsVista) {
	const uint _WIN32_WINNT = 0x600;
} else version (Windows2003) {
	const uint _WIN32_WINNT = 0x502;
} else version (WindowsXP) {
	const uint _WIN32_WINNT = 0x501;
} else version (Windows2000) {
	const uint _WIN32_WINNT = 0x500;
} else {
	const uint _WIN32_WINNT = 0x400;
}

version (IE8) {
	const uint _WIN32_IE = 0x800;
} version (IE7) {
	const uint _WIN32_IE = 0x700;
} else version (IE602) {
	const uint _WIN32_IE = 0x603;
} else version (IE601) {
	const uint _WIN32_IE = 0x601;
} else version (IE6) {
	const uint _WIN32_IE = 0x600;
} else version (IE56) {
	const uint _WIN32_IE = 0x560;
} else version (IE501) {
	const uint _WIN32_IE = 0x501;
} else version (IE5) {
	const uint _WIN32_IE = 0x500;
} else version (IE401) {
	const uint _WIN32_IE = 0x401;
} else version (IE4) {
	const uint _WIN32_IE = 0x400;
} else version (IE3) {
	const uint _WIN32_IE = 0x300;
} else static if (_WIN32_WINNT >= 0x410) {
	const uint _WIN32_IE = 0x400;
} else {
	const uint _WIN32_IE = 0;
}

debug (WindowsUnitTest) {
	unittest {
		printf("Windows NT version: %03x\n", _WIN32_WINNT);
		printf("IE version:         %03x\n", _WIN32_IE);
	}
}
