/***********************************************************************\
*                                  lm.d                                 *
*                                                                       *
*                       Windows API header module                       *
*                                                                       *
*                 Translated from MinGW Windows headers                 *
*                                                                       *
*                       Placed into public domain                       *
\***********************************************************************/
module windows.lm;
nothrow:
/* removed - now supporting only Win2k up
version (WindowsVista) {
	version = WIN32_WINNT_ONLY;
} else version (Windows2003) {
	version = WIN32_WINNT_ONLY;
} else version (WindowsXP) {
	version = WIN32_WINNT_ONLY;
} else version (WindowsNTonly) {
	version = WIN32_WINNT_ONLY;
}
*/
public import windows.lmcons;
public import windows.lmaccess;
public import windows.lmalert;
public import windows.lmat;
public import windows.lmerr;
public import windows.lmshare;
public import windows.lmapibuf;
public import windows.lmremutl;
public import windows.lmrepl;
public import windows.lmuse;
public import windows.lmstats;
public import windows.lmwksta;
public import windows.lmserver;

version (Windows2000) {
} else {
	public import windows.lmmsg;
}

// FIXME: Everything in these next files seems to be deprecated!
import windows.lmaudit;
import windows.lmchdev; // can't find many docs for functions from this file.
import windows.lmconfig;
import windows.lmerrlog;
import windows.lmsvc;
import windows.lmsname; // in MinGW, this was publicly included by lm.lmsvc
