/***********************************************************************\
*                                core.d                                 *
*                                                                       *
*                    Helper module for the Windows API                  *
*                                                                       *
*                       Placed into public domain                       *
\***********************************************************************/
module windows.core;

/**
 The core Windows API functions.

 Importing this file is equivalent to the C code:
 ---
 #define WIN32_LEAN_AND_MEAN
 #include "windows.h"
 ---

*/

public import windows.windef;
public import windows.winnt;
public import windows.wincon;
public import windows.winbase;
public import windows.wingdi;
public import windows.winuser;
public import windows.winnls;
public import windows.winver;
public import windows.winnetwk;
public import windows.winsvc;
