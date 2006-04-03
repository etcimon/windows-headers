/*
	windows.h - main header file for the Win32 API

	Written by Anders Norlander <anorland@hem2.passagen.se>

	This file is part of a free library for the Win32 API.

	This library is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

*/

//import stdarg;
import win32.windef;
//import wincon;
//import winbase;
import win32.wingdi;
/+
#include <stdarg.h>
#include <windef.h>
#include <wincon.h>
#include <winbase.h>
#if !(defined NOGDI || defined  _WINGDI_H)
#include <wingdi.h>
#endif
#ifndef _WINUSER_H
#include <winuser.h>
#endif
#ifndef _WINNLS_H
#include <winnls.h>
#endif
#ifndef _WINVER_H
#include <winver.h>
#endif
#ifndef _WINNETWK_H
#include <winnetwk.h>
#endif
#ifndef _WINREG_H
#include <winreg.h>
#endif
#ifndef _WINSVC_H
#include <winsvc.h>
#endif

#ifndef WIN32_LEAN_AND_MEAN
#include <cderr.h>
#include <dde.h>
#include <ddeml.h>
#include <dlgs.h>
#include <imm.h>
#include <lzexpand.h>
#include <mmsystem.h>
#include <nb30.h>
#include <rpc.h>
#include <shellapi.h>
#include <winperf.h>
#ifndef NOGDI
#include <commdlg.h>
#include <winspool.h>
#endif
#if defined(Win32_Winsock)
#warning "The  Win32_Winsock macro name is deprecated.\
    Please use __USE_W32_SOCKETS instead"
#ifndef __USE_W32_SOCKETS
#define __USE_W32_SOCKETS
#endif
#endif
#if defined(__USE_W32_SOCKETS) || !(defined(__CYGWIN__) || defined(__MSYS__) || defined(_UWIN))
#if (_WIN32_WINNT >= 0x0400)
#include <winsock2.h>
/*
 * MS likes to include mswsock.h here as well,
 * but that can cause undefined symbols if
 * winsock2.h is included before windows.h
 */
#else
#include <winsock.h>
#endif /*  (_WIN32_WINNT >= 0x0400) */
#endif
#ifndef NOGDI
#if !defined (__OBJC__)
#if (__GNUC__ >= 3) || defined (__WATCOMC__)
#include <ole2.h>
#endif
#endif /* __OBJC__ */
#endif

#endif /* WIN32_LEAN_AND_MEAN */

#endif /* RC_INVOKED */
+/
