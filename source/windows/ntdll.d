/***********************************************************************\
*                                ntdll.d                                *
*                                                                       *
*                       Windows API header module                       *
*                                                                       *
*             Translated from MinGW API for MS-Windows 3.10             *
*                           by Stewart Gordon                           *
*                                                                       *
*                       Placed into public domain                       *
\***********************************************************************/
module windows.ntdll;

private import windows.w32api;
nothrow:

enum SHUTDOWN_ACTION {
	ShutdownNoReboot,
	ShutdownReboot,
	ShutdownPowerOff
}

extern (Windows) uint NtShutdownSystem(SHUTDOWN_ACTION Action);
