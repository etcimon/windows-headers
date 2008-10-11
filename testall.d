// Used only for testing -- imports all windows headers.
module win32.testall;

import win32.core;
import win32.windows;
import win32.commctrl;
import win32.setupapi;

import win32.directx.d3d9;
import win32.directx.dxerr8;
import win32.directx.dxerr9;
import win32.oleacc;
import win32.comcat;
import win32.cpl;
import win32.cplext;
import win32.custcntl;
import win32.oleacc;
import win32.ocidl;
import win32.olectl;
import win32.oledlg;
import win32.objsafe;
import win32.ole;

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
import win32.rasdlg;
import win32.rassapi;

import win32.mapi;
import win32.mciavi;
import win32.mcx;
import win32.mgmtapi;

import win32.nddeapi;
import win32.msacm;
import win32.nspapi;

import win32.ntdef;
import win32.ntldap;
import win32.ntsecapi;

import win32.pbt;
import win32.powrprof;
import win32.rapi;

import win32.wininet;
import win32.winioctl;
import win32.winldap;

import win32.dbt;

import win32.rpcdce2;

import win32.tlhelp32;


version (WindowsVista) {
	version = WINDOWS_XP_UP;
} else version (Windows2003) {
	version = WINDOWS_XP_UP;
} else version (WindowsXP) {
	version = WINDOWS_XP_UP;
}

version (WINDOWS_XP_UP) {
	import win32.dhcpcsdk;
	import win32.errorrep;
	import win32.reason;
	import win32.secext;
	import win32.ntdll;
} else version (WindowsNTonly) {
	version (Windows2000) {
		import win32.dhcpcsdk;
		import win32.aclui;
	}
	import win32.ntdll;
}
