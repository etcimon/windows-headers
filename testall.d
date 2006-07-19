// Used only for testing -- imports all windows headers.
module win32.testall;

import win32.core;
import win32.windows;
import win32.commctrl;
import win32.setupapi;

import win32.dxerr8;
import win32.dxerr9;
import win32.oleacc;
import win32.aclui;
import win32.comcat;
import win32.cpl;
import win32.cplext;
import win32.custcntl;
import win32.d3d9;
import win32.oleacc;
import win32.ocidl;
import win32.olectl;
import win32.oledlg;

import win32.shldisp;
import win32.shlobj;
import win32.shlwapi;
import win32.regstr;
import win32.richole;
import win32.tmschema;
import win32.servprov;
import win32.exdisp;
import win32.exdispid;
import win32.idispids;
import win32.mshtml;

import win32.lm;
import win32.lmbrowsr;

import win32.sql;
import win32.sqlext;
import win32.sqlucode;
import win32.odbcinst;

import win32.imagehlp;
import win32.intshcut;
import win32.iphlpapi;
import win32.isguids;

import win32.subauth;
import win32.ras;
//import win32.nddeapi;
import win32.msacm;
import win32.nspapi;


version (Windows2003) {
	import win32.dhcpcsdk;
	import win32.errorrep;
	import win32.secext;
} else version (WindowsXP) {
	import win32.dhcpcsdk;
	import win32.errorrep;
	import win32.secext;
} else version (WindowsNTonly) {
	version (Windows2000) import win32.dhcpcsdk;
}
