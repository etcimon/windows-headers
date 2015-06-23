/***********************************************************************\
*                               windows.d                               *
*                                                                       *
*                       Windows API header module                       *
*                                                                       *
*             Translated from MinGW API for MS-Windows 4.0              *
*                                                                       *
*                       Placed into public domain                       *
/***********************************************************************/
module windows.windows;

/*
	windows.h - main header file for the Win32 API

	Written by Anders Norlander <anorland@hem2.passagen.se>

	This file is part of a free library for the Win32 API.

	This library is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

*/

public import windows.w32api;
public import windows.core;

public import windows.cderr;
public import windows.dde;
public import windows.ddeml;
public import windows.dlgs;
public import windows.imm;
public import windows.lzexpand;
public import windows.mmsystem;
public import windows.nb30;
public import windows.winsvc;

public import windows.rpc;
public import windows.shellapi;
public import windows.winperf;
public import windows.commdlg;
public import windows.winspool;
public import windows.ole2;

public import windows.winsock2;
public import windows.ws2tcpip;
/+
#if (_WIN32_WINNT >= 0x400)
#include <winsock2.h>
/*
 * MS likes to include mswsock.h here as well,
 * but that can cause undefined symbols if
 * winsock2.h is included before windows.h
 */
#else
#include <winsock.h>
#endif /*  (_WIN32_WINNT >= 0x400) */
+/
