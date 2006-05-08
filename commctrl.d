module win32.commctrl;

// Translated from Microsoft Platform SDK August 2001 Edition
// by Y.Tomino (demoonlit@inter7.jp)
// Tidied up by Stewart Gordon

import win32.windef;
import win32.winbase;
import win32.winuser;
alias LPTBSAVEPARAMW LPTBSAVEPARAMSW;
alias PCCOMBOEXITEMA PCCOMBOBOXEXITEMA;
alias PCCOMBOEXITEMW PCCOMBOBOXEXITEMW;

enum : uint {
	NM_FIRST             = 0,
	SB_SETTIPTEXTA       = WM_USER + 16,
	SB_SETTIPTEXTW       = WM_USER + 17,
	SB_GETTIPTEXTA       = WM_USER + 18,
	SB_GETTIPTEXTW       = WM_USER + 19,
	CBEN_FIRST           = 0U - 800U,
	CBEN_GETDISPINFOA    = CBEN_FIRST - 0,
	CBEN_GETDISPINFOW    = CBEN_FIRST - 7
}


// Property sheet
// --------------
align(4):

enum : uint { MAXPROPPAGES = 100 }

alias HANDLE HPROPSHEETPAGE;

enum : uint {
	PSP_DEFAULT           = 0x00000000,
	PSP_DLGINDIRECT       = 0x00000001,
	PSP_USEHICON          = 0x00000002,
	PSP_USEICONID         = 0x00000004,
	PSP_USETITLE          = 0x00000008,
	PSP_RTLREADING        = 0x00000010,
	PSP_HASHELP           = 0x00000020,
	PSP_USEREFPARENT      = 0x00000040,
	PSP_USECALLBACK       = 0x00000080,
	PSP_PREMATURE         = 0x00000400,
	PSP_HIDEHEADER        = 0x00000800,
	PSP_USEHEADERTITLE    = 0x00001000,
	PSP_USEHEADERSUBTITLE = 0x00002000,
	PSP_USEFUSIONCONTEXT  = 0x00004000
}

enum : uint {
	PSPCB_ADDREF  = 0,
	PSPCB_RELEASE = 1,
	PSPCB_CREATE  = 2
}

alias LPCDLGTEMPLATE PROPSHEETPAGE_RESOURCE;

struct PROPSHEETPAGEA_V1 {
	DWORD dwSize = PROPSHEETPAGEA_V1.sizeof;
	DWORD dwFlags;
	HINSTANCE hInstance;
	union {
		LPCSTR pszTemplate;
		PROPSHEETPAGE_RESOURCE pResource;
	}
	union {
		HICON hIcon;
		LPCSTR pszIcon;
	}
	LPCSTR pszTitle;
	DLGPROC pfnDlgProc;
	LPARAM lParam;
	LPFNPSPCALLBACKA pfnCallback;
	UINT* pcRefParent;
}
alias PROPSHEETPAGEA_V1* LPPROPSHEETPAGEA_V1, LPCPROPSHEETPAGEA_V1;

struct PROPSHEETPAGEA_V2 {
	DWORD dwSize = PROPSHEETPAGEA_V2.sizeof;
	DWORD dwFlags;
	HINSTANCE hInstance;
	union {
		LPCSTR pszTemplate;
		PROPSHEETPAGE_RESOURCE pResource;
	}
	union {
		HICON hIcon;
		LPCSTR pszIcon;
	}
	LPCSTR pszTitle;
	DLGPROC pfnDlgProc;
	LPARAM lParam;
	LPFNPSPCALLBACKA pfnCallback;
	UINT* pcRefParent;

	LPCSTR pszHeaderTitle;
	LPCSTR pszHeaderSubTitle;
}
alias PROPSHEETPAGEA_V2* LPPROPSHEETPAGEA_V2, LPCPROPSHEETPAGEA_V2;

struct PROPSHEETPAGEA_V3 {
	DWORD dwSize = PROPSHEETPAGEA_V3.sizeof;
	DWORD dwFlags;
	HINSTANCE hInstance;
	union {
		LPCSTR pszTemplate;
		PROPSHEETPAGE_RESOURCE pResource;
	}
	union {
		HICON hIcon;
		LPCSTR pszIcon;
	}
	LPCSTR pszTitle;
	DLGPROC pfnDlgProc;
	LPARAM lParam;
	LPFNPSPCALLBACKA pfnCallback;
	UINT* pcRefParent;

	LPCSTR pszHeaderTitle;
	LPCSTR pszHeaderSubTitle;

	HANDLE hActCtx;
}
alias PROPSHEETPAGEA_V3* LPPROPSHEETPAGEA_V3, LPCPROPSHEETPAGEA_V3;

struct PROPSHEETPAGEW_V1 {
	DWORD dwSize = PROPSHEETPAGEW_V1.sizeof;
	DWORD dwFlags;
	HINSTANCE hInstance;
	union {
		LPCWSTR pszTemplate;
		PROPSHEETPAGE_RESOURCE pResource;
	}
	union {
		HICON hIcon;
		LPCWSTR pszIcon;
	}
	LPCWSTR pszTitle;
	DLGPROC pfnDlgProc;
	LPARAM lParam;
	LPFNPSPCALLBACKW pfnCallback;
	UINT* pcRefParent;
}
alias PROPSHEETPAGEW_V1* LPPROPSHEETPAGEW_V1, LPCPROPSHEETPAGEW_V1;

struct PROPSHEETPAGEW_V2 {
	DWORD dwSize = PROPSHEETPAGEW_V2.sizeof;
	DWORD dwFlags;
	HINSTANCE hInstance;
	union {
		LPCWSTR pszTemplate;
		PROPSHEETPAGE_RESOURCE pResource;
	}
	union {
		HICON hIcon;
		LPCWSTR pszIcon;
	}
	LPCWSTR pszTitle;
	DLGPROC pfnDlgProc;
	LPARAM lParam;
	LPFNPSPCALLBACKW pfnCallback;
	UINT* pcRefParent;

	LPCWSTR pszHeaderTitle;
	LPCWSTR pszHeaderSubTitle;
}
alias PROPSHEETPAGEW_V2* LPPROPSHEETPAGEW_V2, LPCPROPSHEETPAGEW_V2;

struct PROPSHEETPAGEW_V3 {
	DWORD dwSize = PROPSHEETPAGEW_V3.sizeof;
	DWORD dwFlags;
	HINSTANCE hInstance;
	union {
		LPCWSTR pszTemplate;
		PROPSHEETPAGE_RESOURCE pResource;
	}
	union {
		HICON hIcon;
		LPCWSTR pszIcon;
	}
	LPCWSTR pszTitle;
	DLGPROC pfnDlgProc;
	LPARAM lParam;
	LPFNPSPCALLBACKW pfnCallback;
	UINT* pcRefParent;

	LPCWSTR pszHeaderTitle;
	LPCWSTR pszHeaderSubTitle;

	HANDLE hActCtx;
}
alias PROPSHEETPAGEW_V3* LPPROPSHEETPAGEW_V3, LPCPROPSHEETPAGEW_V3;

alias PROPSHEETPAGEA_V3 PROPSHEETPAGEA_LATEST, PROPSHEETPAGEA;
alias PROPSHEETPAGEW_V3 PROPSHEETPAGEW_LATEST, PROPSHEETPAGEW;
alias LPPROPSHEETPAGEA_V3 LPPROPSHEETPAGEA_LATEST, LPPROPSHEETPAGEA;
alias LPPROPSHEETPAGEW_V3 LPPROPSHEETPAGEW_LATEST, LPPROPSHEETPAGEW;
alias LPCPROPSHEETPAGEA_V3 LPCPROPSHEETPAGEA_LATEST, LPCPROPSHEETPAGEA;
alias LPCPROPSHEETPAGEW_V3 LPCPROPSHEETPAGEW_LATEST, LPCPROPSHEETPAGEW;

enum : size_t {
	PROPSHEETPAGEA_V1_SIZE = PROPSHEETPAGEA_V1.sizeof,
	PROPSHEETPAGEW_V1_SIZE = PROPSHEETPAGEW_V1.sizeof,
	PROPSHEETPAGEA_V2_SIZE = PROPSHEETPAGEA_V2.sizeof,
	PROPSHEETPAGEW_V2_SIZE = PROPSHEETPAGEW_V2.sizeof
}

extern(Windows) alias UINT function(HWND hwnd, UINT uMsg,
  PROPSHEETPAGEA* ppsp) LPFNPSPCALLBACKA;
extern(Windows) alias UINT function(HWND hwnd, UINT uMsg,
  PROPSHEETPAGEW* ppsp) LPFNPSPCALLBACKW;

enum : uint {
	PSH_DEFAULT           = 0x00000000,
	PSH_PROPTITLE         = 0x00000001,
	PSH_USEHICON          = 0x00000002,
	PSH_USEICONID         = 0x00000004,
	PSH_PROPSHEETPAGE     = 0x00000008,
	PSH_WIZARDHASFINISH   = 0x00000010,
	PSH_WIZARD            = 0x00000020,
	PSH_USEPSTARTPAGE     = 0x00000040,
	PSH_NOAPPLYNOW        = 0x00000080,
	PSH_USECALLBACK       = 0x00000100,
	PSH_HASHELP           = 0x00000200,
	PSH_MODELESS          = 0x00000400,
	PSH_RTLREADING        = 0x00000800,
	PSH_WIZARDCONTEXTHELP = 0x00001000,
	PSH_WIZARD97          = 0x01000000,
	PSH_WATERMARK         = 0x00008000,
	PSH_USEHBMWATERMARK   = 0x00010000,
	PSH_USEHPLWATERMARK   = 0x00020000,
	PSH_STRETCHWATERMARK  = 0x00040000,
	PSH_HEADER            = 0x00080000,
	PSH_USEHBMHEADER      = 0x00100000,
	PSH_USEPAGELANG       = 0x00200000,
	PSH_WIZARD_LITE       = 0x00400000,
	PSH_NOCONTEXTHELP     = 0x02000000
}

extern(Windows) alias int function(HWND, UINT, LPARAM) PFNPROPSHEETCALLBACK;

struct PROPSHEETHEADERA {
	DWORD dwSize = PROPSHEETHEADERA.sizeof;
	DWORD dwFlags;
	HWND hwndParent;
	HINSTANCE hInstance;
	union {
		HICON hIcon;
		LPCSTR pszIcon;
	}
	LPCSTR pszCaption;
	UINT nPages;
	union {
		UINT nStartPage;
		LPCSTR pStartPage;
	}
	union {
		LPCPROPSHEETPAGEA ppsp;
		HPROPSHEETPAGE *phpage;
	}
	PFNPROPSHEETCALLBACK pfnCallback;
	union {
		HBITMAP hbmWatermark;
		LPCSTR pszbmWatermark;
	}
	HPALETTE hplWatermark;
	union {
		HBITMAP hbmHeader;
		LPCSTR pszbmHeader;
	}
}
alias PROPSHEETHEADERA* LPPROPSHEETHEADERA, LPCPROPSHEETHEADERA;

struct PROPSHEETHEADERW {
	DWORD dwSize = PROPSHEETHEADERW.sizeof;
	DWORD dwFlags;
	HWND hwndParent;
	HINSTANCE hInstance;
	union {
		HICON hIcon;
		LPCWSTR pszIcon;
	}
	LPCWSTR pszCaption;
	UINT nPages;
	union {
		UINT nStartPage;
		LPCWSTR pStartPage;
	}
	union {
		LPCPROPSHEETPAGEW ppsp;
		HPROPSHEETPAGE *phpage;
	}
	PFNPROPSHEETCALLBACK pfnCallback;
	union {
		HBITMAP hbmWatermark;
		LPCWSTR pszbmWatermark;
	}
	HPALETTE hplWatermark;
	union {
		HBITMAP hbmHeader;
		LPCWSTR pszbmHeader;
	}
}
alias PROPSHEETHEADERW* LPPROPSHEETHEADERW, LPCPROPSHEETHEADERW;

enum : size_t {
	PROPSHEETHEADERA_V1_SIZE = PROPSHEETHEADERA.hbmWatermark.offsetof,
	PROPSHEETHEADERW_V1_SIZE = PROPSHEETHEADERW.hbmWatermark.offsetof,
	PROPSHEETHEADERA_V2_SIZE = PROPSHEETHEADERA.sizeof,
	PROPSHEETHEADERW_V2_SIZE = PROPSHEETHEADERW.sizeof
}

enum : uint {
	PSCB_INITIALIZED   = 1,
	PSCB_PRECREATE     = 2,
	PSCB_BUTTONPRESSED = 3
}

extern(Windows) export {
	HPROPSHEETPAGE CreatePropertySheetPageA(LPCPROPSHEETPAGEA
	  constPropSheetPagePointer);
	HPROPSHEETPAGE CreatePropertySheetPageW(LPCPROPSHEETPAGEW
	  constPropSheetPagePointer);
	BOOL DestroyPropertySheetPage(HPROPSHEETPAGE);
	INT_PTR PropertySheetA(LPCPROPSHEETHEADERA);
	INT_PTR PropertySheetW(LPCPROPSHEETHEADERW);
}

extern(Windows) alias BOOL function(HPROPSHEETPAGE, LPARAM)
  LPFNADDPROPSHEETPAGE;
extern(Windows) alias BOOL function(LPVOID, LPFNADDPROPSHEETPAGE, LPARAM)
  LPFNADDPROPSHEETPAGES;

struct PSHNOTIFY {
	NMHDR hdr;
	LPARAM lParam;
}
alias PSHNOTIFY* LPPSHNOTIFY;

enum : uint {
	PSN_FIRST                = 0U - 200U,
	PSN_LAST                 = 0U - 299U,
	PSN_SETACTIVE            = PSN_FIRST - 0,
	PSN_KILLACTIVE           = PSN_FIRST - 1,
	PSN_APPLY                = PSN_FIRST - 2,
	PSN_RESET                = PSN_FIRST - 3,
	PSN_HELP                 = PSN_FIRST - 5,
	PSN_WIZBACK              = PSN_FIRST - 6,
	PSN_WIZNEXT              = PSN_FIRST - 7,
	PSN_WIZFINISH            = PSN_FIRST - 8,
	PSN_QUERYCANCEL          = PSN_FIRST - 9,
	PSN_GETOBJECT            = PSN_FIRST - 10,
	PSN_TRANSLATEACCELERATOR = PSN_FIRST - 12,
	PSN_QUERYINITIALFOCUS    = PSN_FIRST - 13
}

enum : uint {
	PSNRET_NOERROR              = 0,
	PSNRET_INVALID              = 1,
	PSNRET_INVALID_NOCHANGEPAGE = 2,
	PSNRET_MESSAGEHANDLED       = 3
}

enum : uint {
	PSM_SETCURSEL          = WM_USER + 101,
	PSM_REMOVEPAGE         = WM_USER + 102,
	PSM_ADDPAGE            = WM_USER + 103,
	PSM_CHANGED            = WM_USER + 104,
	PSM_RESTARTWINDOWS     = WM_USER + 105,
	PSM_REBOOTSYSTEM       = WM_USER + 106,
	PSM_CANCELTOCLOSE      = WM_USER + 107,
	PSM_QUERYSIBLINGS      = WM_USER + 108,
	PSM_UNCHANGED          = WM_USER + 109,
	PSM_APPLY              = WM_USER + 110,
	PSM_SETTITLEA          = WM_USER + 111,
	PSM_SETTITLEW          = WM_USER + 120,
	PSM_SETWIZBUTTONS      = WM_USER + 112,
	PSM_PRESSBUTTON        = WM_USER + 113,
	PSM_SETCURSELID        = WM_USER + 114,
	PSM_SETFINISHTEXTA     = WM_USER + 115,
	PSM_SETFINISHTEXTW     = WM_USER + 121,
	PSM_GETTABCONTROL      = WM_USER + 116,
	PSM_ISDIALOGMESSAGE    = WM_USER + 117,
	PSM_GETCURRENTPAGEHWND = WM_USER + 118,
	PSM_INSERTPAGE         = WM_USER + 119,
	PSM_SETHEADERTITLEA    = WM_USER + 125,
	PSM_SETHEADERTITLEW    = WM_USER + 126,
	PSM_SETHEADERSUBTITLEA = WM_USER + 127,
	PSM_SETHEADERSUBTITLEW = WM_USER + 128,
	PSM_HWNDTOINDEX        = WM_USER + 129,
	PSM_INDEXTOHWND        = WM_USER + 130,
	PSM_PAGETOINDEX        = WM_USER + 131,
	PSM_INDEXTOPAGE        = WM_USER + 132,
	PSM_IDTOINDEX          = WM_USER + 133,
	PSM_INDEXTOID          = WM_USER + 134,
	PSM_GETRESULT          = WM_USER + 135,
	PSM_RECALCPAGESIZES    = WM_USER + 136
}


BOOL PropSheet_AddPage(HWND hDlg, HPROPSHEETPAGE hpage) {
	return SendMessage(hDlg, PSM_ADDPAGE, 0, cast(LPARAM) hpage);
}

BOOL PropSheet_Apply(HWND hPropSheetDlg) {
	return SendMessage(hPropSheetDlg, PSM_APPLY, 0, 0);
}

void PropSheet_CancelToClose(HWND hDlg) {
	PostMessage(hDlg, PSM_CANCELTOCLOSE, 0, 0);
}

BOOL PropSheet_Changed(HWND hDlg, HWND hwnd) {
	return SendMessage(hDlg, PSM_CHANGED, cast(WPARAM) hwnd, 0);
}

HWND PropSheet_GetCurrentPageHwnd(HWND hDlg) {
	return cast(HWND) SendMessage(hDlg, PSM_GETCURRENTPAGEHWND, 0, 0);
}

// FIXME: return type?
LRESULT PropSheet_GetResult(HWND hDlg) {
	return SendMessage(hDlg, PSM_GETRESULT, 0, 0);
}

HWND PropSheet_GetTabControl(HWND hDlg) {
	return cast(HWND) SendMessage(hDlg, PSM_GETTABCONTROL, 0, 0);
}

int PropSheet_HwndToIndex(HWND hDlg, HWND hwnd) {
	return SendMessage(hDlg, PSM_HWNDTOINDEX, cast(WPARAM) hwnd, 0);
}

// FIXME: type of id?
int PropSheet_IdToIndex(HWND hDlg, LPARAM id) {
	return SendMessage(hDlg, PSM_IDTOINDEX, 0, id);
}

HWND PropSheet_IndexToHwnd(HWND hDlg, int i) {
	return cast(HWND) SendMessage(hDlg, PSM_INDEXTOHWND, i, 0);
}

// FIXME: return type?
LRESULT PropSheet_IndexToId(HWND hDlg, int i) {
	return SendMessage(hDlg, PSM_INDEXTOID, i, 0);
}

HPROPSHEETPAGE PropSheet_IndexToPage(HWND hDlg, int i) {
	return cast(HPROPSHEETPAGE) SendMessage(hDlg, PSM_INDEXTOPAGE, i, 0);
}

// FIXME: return type?
LRESULT PropSheet_InsertPage(HWND hDlg, int index, HPROPSHEETPAGE hpage) {
	return SendMessage(hDlg, PSM_INSERTPAGE, index, cast(LPARAM) hpage);
}

BOOL PropSheet_IsDialogMessage(HWND hDlg, MSG* pMsg) {
	return SendMessage(hDlg, PSM_ISDIALOGMESSAGE, 0, cast(LPARAM) pMsg);
}

int PropSheet_PageToIndex(HWND hDlg, HPROPSHEETPAGE hpage) {
	return SendMessage(hDlg, PSM_PAGETOINDEX, 0, cast(LPARAM) hpage);
}

BOOL PropSheet_PressButton(HWND hDlg, int iButton) {
	return PostMessage(hDlg, PSM_PRESSBUTTON, iButton, 0);
}

int PropSheet_QuerySiblings(HWND hDlg, WPARAM wParam, LPARAM lParam) {
	return SendMessage(hDlg, PSM_QUERYSIBLINGS, wParam, lParam);
}

void PropSheet_RebootSystem(HWND hDlg) {
	SendMessage(hDlg, PSM_REBOOTSYSTEM, 0, 0);
}

// FIXME: return type?
LRESULT PropSheet_RecalcPageSizes(HWND hDlg) {
	return SendMessage(hDlg, PSM_RECALCPAGESIZES, 0, 0);
}

void PropSheet_RemovePage(HWND hDlg, int index, HPROPSHEETPAGE hpage) {
	SendMessage(hDlg, PSM_REMOVEPAGE, index, cast(LPARAM) hpage);
}

void PropSheet_RestartWindows(HWND hDlg) {
	SendMessage(hDlg, PSM_RESTARTWINDOWS, 0, 0);
}

BOOL PropSheet_SetCurSel(HWND hDlg, HPROPSHEETPAGE hpage, int index) {
	return SendMessage(hDlg, PSM_SETCURSEL, index, cast(LPARAM) hpage);
}

BOOL PropSheet_SetCurSelByID(HWND hDlg, int id) {
	return SendMessage(hDlg, PSM_SETCURSELID, 0, id);
}

void PropSheet_SetFinishText(HWND hDlg, LPTSTR lpszText) {
	SendMessage(hDlg, PSM_SETFINISHTEXT, 0, cast(LPARAM) lpszText);
}

// FIXME: return type?
LRESULT PropSheet_SetHeaderSubTitle(HWND hDlg, int index,
	  LPTSTR lpszText) {
	return SendMessage(hDlg, PSM_SETHEADERSUBTITLE, index,
	  cast(LPARAM) lpszText);
}

// FIXME: return type?
LRESULT PropSheet_SetHeaderTitle(HWND hDlg, int index, LPTSTR lpszText) {
	return SendMessage(hDlg, PSM_SETHEADERTITLE, index,
	  cast(LPARAM) lpszText);
}

void PropSheet_SetTitle(HWND hDlg, DWORD wStyle, LPTSTR lpszText) {
	SendMessage(hDlg, PSM_SETTITLE, wStyle, cast(LPARAM) lpszText);
}

void PropSheet_SetWizButtons(HWND hDlg, DWORD dwFlags) {
	PostMessage(hDlg, PSM_SETWIZBUTTONS, 0, dwFlags);
}

void PropSheet_UnChanged(HWND hDlg, HWND hwnd) {
	SendMessage(hDlg, PSM_UNCHANGED, cast(WPARAM) hwnd, 0);
}


enum : uint {
	PSWIZB_BACK           = 0x00000001,
	PSWIZB_NEXT           = 0x00000002,
	PSWIZB_FINISH         = 0x00000004,
	PSWIZB_DISABLEDFINISH = 0x00000008
}

enum : uint {
	PSBTN_BACK     = 0,
	PSBTN_NEXT     = 1,
	PSBTN_FINISH   = 2,
	PSBTN_OK       = 3,
	PSBTN_APPLYNOW = 4,
	PSBTN_CANCEL   = 5,
	PSBTN_HELP     = 6,
	PSBTN_MAX      = 6
}

enum : uint {
	ID_PSRESTARTWINDOWS = 0x2,
	ID_PSREBOOTSYSTEM   = 0x3
}

enum : uint {
	WIZ_CXDLG  = 276,
	WIZ_CYDLG  = 140,
	WIZ_CXBMP  = 80,
	WIZ_BODYX  = 92,
	WIZ_BODYCX = 184
}

enum : uint {
	PROP_SM_CXDLG = 212,
	PROP_SM_CYDLG = 188,
	PROP_MED_CXDLG = 227,
	PROP_MED_CYDLG = 215,
	PROP_LG_CXDLG = 252,
	PROP_LG_CYDLG = 218
}

version (Unicode) {
	alias LPFNPSPCALLBACKW LPFNPSPCALLBACK;
	alias PROPSHEETPAGEW PROPSHEETPAGE;
	alias LPPROPSHEETPAGEW LPPROPSHEETPAGE;
	alias LPCPROPSHEETPAGEW LPCPROPSHEETPAGE;
	alias PROPSHEETPAGEW_V1_SIZE PROPSHEETPAGE_V1_SIZE;
	alias PROPSHEETPAGEW_V2_SIZE PROPSHEETPAGE_V2_SIZE;
	alias PROPSHEETPAGEW_V1 PROPSHEETPAGE_V1;
	alias LPPROPSHEETPAGEW_V1 LPPROPSHEETPAGE_V1;
	alias LPCPROPSHEETPAGEW_V1 LPCPROPSHEETPAGE_V1;
	alias PROPSHEETPAGEW_V2 PROPSHEETPAGE_V2;
	alias LPPROPSHEETPAGEW_V2 LPPROPSHEETPAGE_V2;
	alias LPCPROPSHEETPAGEW_V2 LPCPROPSHEETPAGE_V2;
	alias PROPSHEETPAGEW_V3 PROPSHEETPAGE_V3;
	alias LPPROPSHEETPAGEW_V3 LPPROPSHEETPAGE_V3;
	alias LPCPROPSHEETPAGEW_V3 LPCPROPSHEETPAGE_V3;
	alias PROPSHEETPAGEW_LATEST PROPSHEETPAGE_LATEST;
	alias LPPROPSHEETPAGEW_LATEST LPPROPSHEETPAGE_LATEST;
	alias LPCPROPSHEETPAGEW_LATEST LPCPROPSHEETPAGE_LATEST;
	alias PROPSHEETHEADERW PROPSHEETHEADER;
	alias LPPROPSHEETHEADERW LPPROPSHEETHEADER;
	alias LPCPROPSHEETHEADERW LPCPROPSHEETHEADER;
	alias CreatePropertySheetPageW CreatePropertySheetPage;
	alias PropertySheetW PropertySheet;
	alias PSM_SETTITLEW PSM_SETTITLE;
	alias PSM_SETFINISHTEXTW PSM_SETFINISHTEXT;
	alias PSM_SETHEADERTITLEW PSM_SETHEADERTITLE;
	alias PSM_SETHEADERSUBTITLEW PSM_SETHEADERSUBTITLE;
} else {
	alias LPFNPSPCALLBACKA LPFNPSPCALLBACK;
	alias PROPSHEETPAGEA PROPSHEETPAGE;
	alias LPPROPSHEETPAGEA LPPROPSHEETPAGE;
	alias LPCPROPSHEETPAGEA LPCPROPSHEETPAGE;
	alias PROPSHEETPAGEA_V1_SIZE PROPSHEETPAGE_V1_SIZE;
	alias PROPSHEETPAGEA_V2_SIZE PROPSHEETPAGE_V2_SIZE;
	alias PROPSHEETPAGEA_V1 PROPSHEETPAGE_V1;
	alias LPPROPSHEETPAGEA_V1 LPPROPSHEETPAGE_V1;
	alias LPCPROPSHEETPAGEA_V1 LPCPROPSHEETPAGE_V1;
	alias PROPSHEETPAGEA_V2 PROPSHEETPAGE_V2;
	alias LPPROPSHEETPAGEA_V2 LPPROPSHEETPAGE_V2;
	alias LPCPROPSHEETPAGEA_V2 LPCPROPSHEETPAGE_V2;
	alias PROPSHEETPAGEA_V3 PROPSHEETPAGE_V3;
	alias LPPROPSHEETPAGEA_V3 LPPROPSHEETPAGE_V3;
	alias LPCPROPSHEETPAGEA_V3 LPCPROPSHEETPAGE_V3;
	alias PROPSHEETPAGEA_LATEST PROPSHEETPAGE_LATEST;
	alias LPPROPSHEETPAGEA_LATEST LPPROPSHEETPAGE_LATEST;
	alias LPCPROPSHEETPAGEA_LATEST LPCPROPSHEETPAGE_LATEST;
	alias PROPSHEETHEADERA PROPSHEETHEADER;
	alias LPPROPSHEETHEADERA LPPROPSHEETHEADER;
	alias LPCPROPSHEETHEADERA LPCPROPSHEETHEADER;
	alias CreatePropertySheetPageA CreatePropertySheetPage;
	alias PropertySheetA PropertySheet;
	alias PSM_SETTITLEA PSM_SETTITLE;
	alias PSM_SETFINISHTEXTA PSM_SETFINISHTEXT;
	alias PSM_SETHEADERTITLEA PSM_SETHEADERTITLE;
	alias PSM_SETHEADERSUBTITLEA PSM_SETHEADERSUBTITLE;
}

align:


// General stuff
// -------------
alias LONG HRESULT;

extern(Windows) export void InitCommonControls();

struct INITCOMMONCONTROLSEX {
	DWORD dwSize = INITCOMMONCONTROLSEX.sizeof;
	DWORD dwICC;
}
alias INITCOMMONCONTROLSEX* LPINITCOMMONCONTROLSEX;

enum : uint {
	ICC_LISTVIEW_CLASSES   = 0x00000001,
	ICC_TREEVIEW_CLASSES   = 0x00000002,
	ICC_BAR_CLASSES        = 0x00000004,
	ICC_TAB_CLASSES        = 0x00000008,
	ICC_UPDOWN_CLASS       = 0x00000010,
	ICC_PROGRESS_CLASS     = 0x00000020,
	ICC_HOTKEY_CLASS       = 0x00000040,
	ICC_ANIMATE_CLASS      = 0x00000080,
	ICC_WIN95_CLASSES      = 0x000000FF,
	ICC_DATE_CLASSES       = 0x00000100,
	ICC_USEREX_CLASSES     = 0x00000200,
	ICC_COOL_CLASSES       = 0x00000400,
	ICC_INTERNET_CLASSES   = 0x00000800,
	ICC_PAGESCROLLER_CLASS = 0x00001000,
	ICC_NATIVEFNTCTL_CLASS = 0x00002000,
	ICC_STANDARD_CLASSES   = 0x00004000,
	ICC_LINK_CLASS         = 0x00008000
}

extern(Windows) export BOOL InitCommonControlsEx(LPINITCOMMONCONTROLSEX);

enum : uint {
	ODT_HEADER   = 100,
	ODT_TAB      = 101,
	ODT_LISTVIEW = 102
}

enum : uint {
	LVM_FIRST = 0x1000,
	TV_FIRST  = 0x1100,
	HDM_FIRST = 0x1200,
	TCM_FIRST = 0x1300,
	PGM_FIRST = 0x1400,
	ECM_FIRST = 0x1500,
	BCM_FIRST = 0x1600,
	CBM_FIRST = 0x1700,
	CCM_FIRST = 0x2000,
	CCM_LAST  = CCM_FIRST + 0x200
}

struct COLORSCHEME {
	DWORD dwSize = COLORSCHEME.sizeof;
	COLORREF clrBtnHighlight;
	COLORREF clrBtnShadow;
}
alias COLORSCHEME* LPCOLORSCHEME;

enum : uint {
	CCM_SETBKCOLOR       = CCM_FIRST + 1,
	CCM_SETCOLORSCHEME   = CCM_FIRST + 2,
	CCM_GETCOLORSCHEME   = CCM_FIRST + 3,
	CCM_GETDROPTARGET    = CCM_FIRST + 4,
	CCM_SETUNICODEFORMAT = CCM_FIRST + 5,
	CCM_GETUNICODEFORMAT = CCM_FIRST + 6,
	CCM_SETVERSION       = CCM_FIRST + 7,
	CCM_GETVERSION       = CCM_FIRST + 8,
	CCM_SETNOTIFYWINDOW  = CCM_FIRST + 9,
	CCM_SETWINDOWTHEME   = CCM_FIRST + 11,
	CCM_DPISCALE         = CCM_FIRST + 12
}

enum : uint { INFOTIPSIZE = 1024 }

enum : uint { COMCTL32_VERSION = 6 }

template HANDLE_WM_NOTIFY(R) {
	R HANDLE_WM_NOTIFY(HWND hwnd, WPARAM wParam, LPARAM lParam,
		  R function(HWND, int, NMHDR*) fn) {
		return fn(hwnd, wParam, cast(NMHDR*) lParam);
	}
}

int FORWARD_WM_NOTIFY(HWND hwnd, int idFrom, NMHDR* pnmhdr,
	  int function(HWND hWnd, UINT Msg, WPARAM wParam, LPARAM lParam) fn) {
	return fn(hwnd, WM_NOTIFY, idFrom, cast(LPARAM) pnmhdr);
}

enum : uint {
	NM_OUTOFMEMORY     = NM_FIRST-1,
	NM_CLICK           = NM_FIRST-2,
	NM_DBLCLK          = NM_FIRST-3,
	NM_RETURN          = NM_FIRST-4,
	NM_RCLICK          = NM_FIRST-5,
	NM_RDBLCLK         = NM_FIRST-6,
	NM_SETFOCUS        = NM_FIRST-7,
	NM_KILLFOCUS       = NM_FIRST-8,
	NM_CUSTOMDRAW      = NM_FIRST-12,
	NM_HOVER           = NM_FIRST-13,
	NM_NCHITTEST       = NM_FIRST-14,
	NM_KEYDOWN         = NM_FIRST-15,
	NM_RELEASEDCAPTURE = NM_FIRST-16,
	NM_SETCURSOR       = NM_FIRST-17,
	NM_CHAR            = NM_FIRST-18,
	NM_TOOLTIPSCREATED = NM_FIRST-19,
	NM_LDOWN           = NM_FIRST-20,
	NM_RDOWN           = NM_FIRST-21,
	NM_THEMECHANGED    = NM_FIRST-22
}

struct NMTOOLTIPSCREATED {
	NMHDR hdr;
	HWND hwndToolTips;
}
alias NMTOOLTIPSCREATED* LPNMTOOLTIPSCREATED;

struct NMMOUSE {
	NMHDR hdr;
	DWORD_PTR dwItemSpec;
	DWORD_PTR dwItemData;
	POINT pt;
	LPARAM dwHitInfo;
}
alias NMMOUSE NMCLICK;
alias NMMOUSE* LPNMMOUSE, LPNMCLICK;

struct NMOBJECTNOTIFY {
	NMHDR hdr;
	int iItem;
	GUID* piid;
	void* pObject;
	HRESULT hResult;
	DWORD dwFlags;
}
alias NMOBJECTNOTIFY* LPNMOBJECTNOTIFY;

struct NMKEY {
	NMHDR hdr;
	UINT nVKey;
	UINT uFlags;
}
alias NMKEY* LPNMKEY;

struct NMCHAR {
	NMHDR hdr;
	UINT ch;
	DWORD dwItemPrev;
	DWORD dwItemNext;
}
alias NMCHAR* LPNMCHAR;

enum : uint {
	NM_LAST   =   -99U,
	LVN_FIRST =  -100U,
	LVN_LAST  =  -199U,
	HDN_FIRST =  -300U,
	HDN_LAST  =  -399U,
	TVN_FIRST =  -400U,
	TVN_LAST  =  -499U,
	TTN_FIRST =  -520U,
	TTN_LAST  =  -549U,
	TCN_FIRST =  -550U,
	TCN_LAST  =  -580U,
	CDN_FIRST =  -601U,
	CDN_LAST  =  -699U,
	TBN_FIRST =  -700U,
	TBN_LAST  =  -720U,
	UDN_FIRST =  -721U,
	UDN_LAST  =  -740U,
	MCN_FIRST =  -750U,
	MCN_LAST  =  -759U,
	DTN_FIRST =  -760U,
	DTN_LAST  =  -799U,
	CBEN_LAST =  -830U,
	RBN_FIRST =  -831U,
	RBN_LAST  =  -859U,
	IPN_FIRST =  -860U,
	IPN_LAST  =  -879U,
	SBN_FIRST =  -880U,
	SBN_LAST  =  -899U,
	PGN_FIRST =  -900U,
	PGN_LAST  =  -950U,
	WMN_FIRST = -1000U,
	WMN_LAST  = -1200U,
	BCN_FIRST = -1250U,
	BCN_LAST  = -1350U
}

enum : uint {
	MSGF_COMMCTRL_BEGINDRAG   = 0x4200,
	MSGF_COMMCTRL_SIZEHEADER  = 0x4201,
	MSGF_COMMCTRL_DRAGSELECT  = 0x4202,
	MSGF_COMMCTRL_TOOLBARCUST = 0x4203
}

enum : uint {
	CDRF_DODEFAULT         = 0x00000000,
	CDRF_NEWFONT           = 0x00000002,
	CDRF_SKIPDEFAULT       = 0x00000004,
	CDRF_NOTIFYPOSTPAINT   = 0x00000010,
	CDRF_NOTIFYITEMDRAW    = 0x00000020,
	CDRF_NOTIFYSUBITEMDRAW = 0x00000020,
	CDRF_NOTIFYPOSTERASE   = 0x00000040
}

enum : uint {
	CDDS_PREPAINT          = 0x00000001,
	CDDS_POSTPAINT         = 0x00000002,
	CDDS_PREERASE          = 0x00000003,
	CDDS_POSTERASE         = 0x00000004,
	CDDS_ITEM              = 0x00010000,
	CDDS_ITEMPREPAINT      = CDDS_ITEM | CDDS_PREPAINT,
	CDDS_ITEMPOSTPAINT     = CDDS_ITEM | CDDS_POSTPAINT,
	CDDS_ITEMPREERASE      = CDDS_ITEM | CDDS_PREERASE,
	CDDS_ITEMPOSTERASE     = CDDS_ITEM | CDDS_POSTERASE,
	CDDS_SUBITEM           = 0x00020000
}

enum : uint {
	CDIS_SELECTED          = 0x0001,
	CDIS_GRAYED            = 0x0002,
	CDIS_DISABLED          = 0x0004,
	CDIS_CHECKED           = 0x0008,
	CDIS_FOCUS             = 0x0010,
	CDIS_DEFAULT           = 0x0020,
	CDIS_HOT               = 0x0040,
	CDIS_MARKED            = 0x0080,
	CDIS_INDETERMINATE     = 0x0100,
	CDIS_SHOWKEYBOARDCUES  = 0x0200
}

struct NMCUSTOMDRAW {
	NMHDR hdr;
	DWORD dwDrawStage;
	HDC hdc;
	RECT rc;
	DWORD_PTR dwItemSpec;
	UINT uItemState;
	LPARAM lItemlParam;
}
alias NMCUSTOMDRAW* LPNMCUSTOMDRAW;

struct NMTTCUSTOMDRAW {
	NMCUSTOMDRAW nmcd;
	UINT uDrawFlags;
}
alias NMTTCUSTOMDRAW* LPNMTTCUSTOMDRAW;

enum : uint {
	CLR_NONE    = 0xFFFFFFFF,
	CLR_DEFAULT = 0xFF000000
}


// Image list
// ----------
alias HANDLE HIMAGELIST;

struct IMAGELISTDRAWPARAMS {
	DWORD cbSize = IMAGELISTDRAWPARAMS.sizeof;
	HIMAGELIST himl;
	int i;
	HDC hdcDst;
	int x;
	int y;
	int cx;
	int cy;
	int xBitmap;
	int yBitmap;
	COLORREF rgbBk;
	COLORREF rgbFg;
	UINT fStyle;
	DWORD dwRop;
	DWORD fState;
	DWORD Frame;
	COLORREF crEffect;
}
alias IMAGELISTDRAWPARAMS* LPIMAGELISTDRAWPARAMS;

enum : uint {
	ILC_MASK          = 0x00000001,
	ILC_COLOR         = 0x00000000,
	ILC_COLORDDB      = 0x000000FE,
	ILC_COLOR4        = 0x00000004,
	ILC_COLOR8        = 0x00000008,
	ILC_COLOR16       = 0x00000010,
	ILC_COLOR24       = 0x00000018,
	ILC_COLOR32       = 0x00000020,
	ILC_PALETTE       = 0x00000800,
	ILC_MIRROR        = 0x00002000,
	ILC_PERITEMMIRROR = 0x00008000
}

extern(Windows) export {
	HIMAGELIST ImageList_Create(int cx, int cy, UINT flags, int cInitial,
	  int cGrow);
	BOOL ImageList_Destroy(HIMAGELIST himl);

	int ImageList_GetImageCount(HIMAGELIST himl);
	BOOL ImageList_SetImageCount(HIMAGELIST himl, UINT uNewCount);

	int ImageList_Add(HIMAGELIST himl, HBITMAP hbmImage, HBITMAP hbmMask);

	int ImageList_ReplaceIcon(HIMAGELIST himl, int i, HICON hicon);
	COLORREF ImageList_SetBkColor(HIMAGELIST himl, COLORREF clrBk);
	COLORREF ImageList_GetBkColor(HIMAGELIST himl);
	BOOL ImageList_SetOverlayImage(HIMAGELIST himl, int iImage,
	  int iOverlay);
}

enum : uint {
	ILD_NORMAL        = 0x00000000,
	ILD_TRANSPARENT   = 0x00000001,
	ILD_MASK          = 0x00000010,
	ILD_IMAGE         = 0x00000020,
	ILD_ROP           = 0x00000040,
	ILD_BLEND25       = 0x00000002,
	ILD_BLEND50       = 0x00000004,
	ILD_OVERLAYMASK   = 0x00000F00,
	ILD_PRESERVEALPHA = 0x00001000,
	ILD_SCALE         = 0x00002000,
	ILD_DPISCALE      = 0x00004000
}

uint INDEXTOOVERLAYMASK(uint i) { return i << 8; }

alias ILD_BLEND50 ILD_SELECTED;
alias ILD_BLEND25 ILD_FOCUS;
alias ILD_BLEND50 ILD_BLEND;
alias CLR_DEFAULT CLR_HILIGHT;

enum : uint {
	ILS_NORMAL   = 0x00000000,
	ILS_GLOW     = 0x00000001,
	ILS_SHADOW   = 0x00000002,
	ILS_SATURATE = 0x00000004,
	ILS_ALPHA    = 0x00000008
}

extern(Windows) export {
	BOOL ImageList_Draw(HIMAGELIST himl, int i, HDC hdcDst, int x, int y,
	  UINT fStyle);
	BOOL ImageList_Replace(HIMAGELIST himl, int i, HBITMAP hbmImage,
	  HBITMAP hbmMask);

	int ImageList_AddMasked(HIMAGELIST himl, HBITMAP hbmImage,
	  COLORREF crMask);
	BOOL ImageList_DrawEx(HIMAGELIST himl, int i, HDC hdcDst, int x, int y,
	  int dx, int dy, COLORREF rgbBk, COLORREF rgbFg, UINT fStyle);
	BOOL ImageList_DrawIndirect(IMAGELISTDRAWPARAMS* pimldp);
	BOOL ImageList_Remove(HIMAGELIST himl, int i);
	HICON ImageList_GetIcon(HIMAGELIST himl, int i, UINT flags);
	HIMAGELIST ImageList_LoadImageA(HINSTANCE hi, LPCSTR lpbmp, int cx,
	  int cGrow, COLORREF crMask, UINT uType, UINT uFlags);
	HIMAGELIST ImageList_LoadImageW(HINSTANCE hi, LPCWSTR lpbmp, int cx,
	  int cGrow, COLORREF crMask, UINT uType, UINT uFlags);
}

enum : uint {
	ILCF_MOVE = 0x00000000,
	ILCF_SWAP = 0x00000001
}

extern(Windows) export {
	BOOL ImageList_Copy(HIMAGELIST himlDst, int iDst, HIMAGELIST himlSrc,
	  int iSrc, UINT uFlags);
	BOOL ImageList_BeginDrag(HIMAGELIST himlTrack, int iTrack,
	  int dxHotspot, int dyHotspot);
	void ImageList_EndDrag();
	BOOL ImageList_DragEnter(HWND hwndLock, int x, int y);
	BOOL ImageList_DragLeave(HWND hwndLock);
	BOOL ImageList_DragMove(int x, int y);
	BOOL ImageList_SetDragCursorImage(HIMAGELIST himlDrag, int iDrag,
	  int dxHotspot, int dyHotspot);

	BOOL ImageList_DragShowNolock(BOOL fShow);
	HIMAGELIST ImageList_GetDragImage(POINT* ppt, POINT* pptHotspot);
}


int ImageList_AddIcon(HIMAGELIST himl, HICON hicon) {
	return ImageList_ReplaceIcon(himl, -1, hicon);
}

BOOL ImageList_RemoveAll(HIMAGELIST himl) {
	return ImageList_Remove(himl, -1);
}

HICON ImageList_ExtractIcon(HINSTANCE hi, HIMAGELIST himl, int i) {
	return ImageList_GetIcon(himl, i, 0);
}

HIMAGELIST ImageList_LoadBitmap(HINSTANCE hi, LPCTSTR lpbmp, int cx,
	  int cGrow, COLORREF crMask) {
	return ImageList_LoadImage(hi, lpbmp, cx, cGrow, crMask,
	  IMAGE_BITMAP, 0);
}


struct IMAGEINFO {
	HBITMAP hbmImage;
	HBITMAP hbmMask;
	int Unused1;
	int Unused2;
	RECT rcImage;
}
alias IMAGEINFO* LPIMAGEINFO;

extern(Windows) export {
	BOOL ImageList_GetIconSize(HIMAGELIST himl, int* cx, int* cy);
	BOOL ImageList_SetIconSize(HIMAGELIST himl, int cx, int cy);
	BOOL ImageList_GetImageInfo(HIMAGELIST himl, int i,
	  IMAGEINFO* pImageInfo);
	HIMAGELIST ImageList_Merge(HIMAGELIST himl1, int i1, HIMAGELIST himl2,
	  int i2, int dx, int dy);
	HIMAGELIST ImageList_Duplicate(HIMAGELIST himl);
}

version (Unicode) {
	alias ImageList_LoadImageW ImageList_LoadImage;
} else {
	alias ImageList_LoadImageA ImageList_LoadImage;
}


// Header control
// --------------
const TCHAR[] WC_HEADER = "SysHeader32";

enum : uint {
	HDS_HORZ      = 0x0000,
	HDS_BUTTONS   = 0x0002,
	HDS_HOTTRACK  = 0x0004,
	HDS_HIDDEN    = 0x0008,
	HDS_DRAGDROP  = 0x0040,
	HDS_FULLDRAG  = 0x0080,
	HDS_FILTERBAR = 0x0100,
	HDS_FLAT      = 0x0200
}

enum : uint {
	HDFT_ISSTRING   = 0x0000,
	HDFT_ISNUMBER   = 0x0001,
	HDFT_HASNOVALUE = 0x8000
}

struct HD_TEXTFILTERA {
	LPSTR pszText;
	INT cchTextMax;
}
alias HD_TEXTFILTERA* LPHD_TEXTFILTERA;

struct HD_TEXTFILTERW {
	LPWSTR pszText;
	INT cchTextMax;
}
alias HD_TEXTFILTERW* LPHD_TEXTFILTERW;

struct HDITEMA {
	UINT mask;
	int cxy;
	LPSTR pszText;
	HBITMAP hbm;
	int cchTextMax;
	int fmt;
	LPARAM lParam;
	int iImage;
	int iOrder;
	UINT type;
	void* pvFilter;
}
alias HDITEMA HD_ITEMA;
alias HDITEMA* LPHDITEMA;

struct HDITEMW {
	UINT mask;
	int cxy;
	LPWSTR pszText;
	HBITMAP hbm;
	int cchTextMax;
	int fmt;
	LPARAM lParam;
	int iImage;
	int iOrder;
	UINT type;
	void* pvFilter;
}
alias HDITEMW HD_ITEMW;
alias HDITEMW* LPHDITEMW;

enum : size_t {
	HDITEMA_V1_SIZE = HDITEMA.iImage.offsetof,
	HDITEMW_V1_SIZE = HDITEMW.iImage.offsetof
}

enum : uint {
	HDI_WIDTH      = 0x0001,
	HDI_HEIGHT     = HDI_WIDTH,
	HDI_TEXT       = 0x0002,
	HDI_FORMAT     = 0x0004,
	HDI_LPARAM     = 0x0008,
	HDI_BITMAP     = 0x0010,
	HDI_IMAGE      = 0x0020,
	HDI_DI_SETITEM = 0x0040,
	HDI_ORDER      = 0x0080,
	HDI_FILTER     = 0x0100
}

enum : uint {
	HDF_LEFT            = 0x0000,
	HDF_RIGHT           = 0x0001,
	HDF_CENTER          = 0x0002,
	HDF_JUSTIFYMASK     = 0x0003,
	HDF_RTLREADING      = 0x0004,
	HDF_OWNERDRAW       = 0x8000,
	HDF_STRING          = 0x4000,
	HDF_BITMAP          = 0x2000,
	HDF_BITMAP_ON_RIGHT = 0x1000,
	HDF_IMAGE           = 0x0800,
	HDF_SORTUP          = 0x0400,
	HDF_SORTDOWN        = 0x0200
}

enum : uint {
	HDM_GETITEMCOUNT           = HDM_FIRST + 0,
	HDM_INSERTITEMA            = HDM_FIRST + 1,
	HDM_INSERTITEMW            = HDM_FIRST + 10,
	HDM_DELETEITEM             = HDM_FIRST + 2,
	HDM_GETITEMA               = HDM_FIRST + 3,
	HDM_GETITEMW               = HDM_FIRST + 11,
	HDM_SETITEMA               = HDM_FIRST + 4,
	HDM_SETITEMW               = HDM_FIRST + 12,
	HDM_LAYOUT                 = HDM_FIRST + 5,
	HDM_HITTEST                = HDM_FIRST + 6,
	HDM_GETITEMRECT            = HDM_FIRST + 7,
	HDM_SETIMAGELIST           = HDM_FIRST + 8,
	HDM_GETIMAGELIST           = HDM_FIRST + 9,
	HDM_ORDERTOINDEX           = HDM_FIRST + 15,
	HDM_CREATEDRAGIMAGE        = HDM_FIRST + 16,
	HDM_GETORDERARRAY          = HDM_FIRST + 17,
	HDM_SETORDERARRAY          = HDM_FIRST + 18,
	HDM_SETHOTDIVIDER          = HDM_FIRST + 19,
	HDM_SETBITMAPMARGIN        = HDM_FIRST + 20,
	HDM_GETBITMAPMARGIN        = HDM_FIRST + 21,
	HDM_SETFILTERCHANGETIMEOUT = HDM_FIRST + 22,
	HDM_EDITFILTER             = HDM_FIRST + 23,
	HDM_CLEARFILTER            = HDM_FIRST + 24,
	HDM_SETUNICODEFORMAT       = CCM_SETUNICODEFORMAT,
	HDM_GETUNICODEFORMAT       = CCM_GETUNICODEFORMAT
}


HIMAGELIST Header_CreateDragImage(HWND hwnd, int i) {
	return cast(HIMAGELIST) SendMessage(hwnd, HDM_CREATEDRAGIMAGE, i, 0);
}

int Header_ClearAllFilters(HWND hwnd) {
	return SendMessage(hwnd, HDM_CLEARFILTER, -1, 0);
}

int Header_ClearFilter(HWND hwnd, int i) {
	return SendMessage(hwnd, HDM_CLEARFILTER, i, 0);
}

BOOL Header_DeleteItem(HWND hwndHD, int i) {
	return SendMessage(hwndHD, HDM_DELETEITEM, i, 0);
}

int Header_EditFilter(HWND hwnd, int i, BOOL fDiscardChanges) {
	return SendMessage(hwnd, HDM_EDITFILTER, i,
	  MAKELPARAM(cast(ushort) fDiscardChanges, 0));
}

BOOL Header_GetItem(HWND hwndHD, int i, HD_ITEM* phdi) {
	return SendMessage(hwndHD, HDM_GETITEM, i, cast(LPARAM) phdi);
}

int Header_GetItemCount(HWND hwndHD) {
	return SendMessage(hwndHD, HDM_GETITEMCOUNT, 0, 0);
}

BOOL Header_GetItemRect(HWND hwnd, int iItem, RECT* lprc) {
	return SendMessage(hwnd, HDM_GETITEMRECT, iItem, cast(LPARAM) lprc);
}

HIMAGELIST Header_GetImageList(HWND hwnd) {
	return cast(HIMAGELIST) SendMessage(hwnd, HDM_GETIMAGELIST, 0, 0);
}

// FIXME: type of lpi?
BOOL Header_GetOrderArray(HWND hwnd, int iCount, LPARAM lpi) {
	return SendMessage(hwnd, HDM_GETORDERARRAY, iCount, lpi);
}

int Header_GetBitmapMargin(HWND hwnd) {
	return SendMessage(hwnd, HDM_GETBITMAPMARGIN, 0, 0);
}

BOOL Header_GetUnicodeFormat(HWND hwnd) {
	return SendMessage(hwnd, HDM_GETUNICODEFORMAT, 0, 0);
}

int Header_InsertItem(HWND hwndHD, int i, HD_ITEM* phdi) {
	return SendMessage(hwndHD, HDM_INSERTITEM, i, cast(LPARAM) phdi);
}

BOOL Header_Layout(HWND hwndHD, HD_LAYOUT* playout) {
	return SendMessage(hwndHD, HDM_LAYOUT, 0, cast(LPARAM) playout);
}

int Header_OrderToIndex(HWND hwnd, int i) {
	return SendMessage(hwnd, HDM_ORDERTOINDEX, i, 0);
}

BOOL Header_SetItem(HWND hwndHD, int i, HD_ITEM* phdi) {
	return SendMessage(hwndHD, HDM_SETITEM, i, cast(LPARAM) phdi);
}

HIMAGELIST Header_SetImageList(HWND hwnd, HIMAGELIST himl) {
	return cast(HIMAGELIST) SendMessage(hwnd, HDM_SETIMAGELIST, 0,
	  cast(LPARAM) himl);
}

// FIXME: type of lpi?
BOOL Header_SetOrderArray(HWND hwnd, int iCount, LPARAM lpi) {
	return SendMessage(hwnd, HDM_SETORDERARRAY, iCount, lpi);
}

int Header_SetHotDivider(HWND hwnd, BOOL fPos, DWORD dw) {
	return SendMessage(hwnd, HDM_SETHOTDIVIDER, fPos, dw);
}

int Header_SetBitmapMargin(HWND hwnd, int iWidth) {
	return SendMessage(hwnd, HDM_SETBITMAPMARGIN, iWidth, 0);
}

BOOL Header_SetUnicodeFormat(HWND hwnd, BOOL fUnicode) {
	return SendMessage(hwnd, HDM_SETUNICODEFORMAT, fUnicode, 0);
}

int Header_SetFilterChangeTimeout(HWND hwnd, int i) {
	return SendMessage(hwnd, HDM_SETFILTERCHANGETIMEOUT, 0, i);
}


struct HDLAYOUT {
	RECT* prc;
	WINDOWPOS* pwpos;
}
alias HDLAYOUT HD_LAYOUT;
alias HD_LAYOUT* LPHDLAYOUT;

enum : uint {
	HHT_NOWHERE        = 0x0001,
	HHT_ONHEADER       = 0x0002,
	HHT_ONDIVIDER      = 0x0004,
	HHT_ONDIVOPEN      = 0x0008,
	HHT_ONFILTER       = 0x0010,
	HHT_ONFILTERBUTTON = 0x0020,
	HHT_ABOVE          = 0x0100,
	HHT_BELOW          = 0x0200,
	HHT_TORIGHT        = 0x0400,
	HHT_TOLEFT         = 0x0800
}

struct HDHITTESTINFO {
	POINT pt;
	UINT flags;
	int iItem;
}
alias HDHITTESTINFO HD_HITTESTINFO;
alias HDHITTESTINFO* LPHDHITTESTINFO;

enum : uint {
	HDN_ITEMCHANGINGA    = HDN_FIRST-0,
	HDN_ITEMCHANGINGW    = HDN_FIRST-20,
	HDN_ITEMCHANGEDA     = HDN_FIRST-1,
	HDN_ITEMCHANGEDW     = HDN_FIRST-21,
	HDN_ITEMCLICKA       = HDN_FIRST-2,
	HDN_ITEMCLICKW       = HDN_FIRST-22,
	HDN_ITEMDBLCLICKA    = HDN_FIRST-3,
	HDN_ITEMDBLCLICKW    = HDN_FIRST-23,
	HDN_DIVIDERDBLCLICKA = HDN_FIRST-5,
	HDN_DIVIDERDBLCLICKW = HDN_FIRST-25,
	HDN_BEGINTRACKA      = HDN_FIRST-6,
	HDN_BEGINTRACKW      = HDN_FIRST-26,
	HDN_ENDTRACKA        = HDN_FIRST-7,
	HDN_ENDTRACKW        = HDN_FIRST-27,
	HDN_TRACKA           = HDN_FIRST-8,
	HDN_TRACKW           = HDN_FIRST-28,
	HDN_GETDISPINFOA     = HDN_FIRST-9,
	HDN_GETDISPINFOW     = HDN_FIRST-29,
	HDN_BEGINDRAG        = HDN_FIRST-10,
	HDN_ENDDRAG          = HDN_FIRST-11,
	HDN_FILTERCHANGE     = HDN_FIRST-12,
	HDN_FILTERBTNCLICK   = HDN_FIRST-13
}

struct NMHEADERA {
	NMHDR hdr;
	int iItem;
	int iButton;
	HDITEMA* pitem;
}
alias NMHEADERA HD_NOTIFYA;
alias NMHEADERA* LPNMHEADERA;

struct NMHEADERW {
	NMHDR hdr;
	int iItem;
	int iButton;
	HDITEMW* pitem;
}
alias NMHEADERW HD_NOTIFYW;
alias NMHEADERW* LPNMHEADERW;

struct NMHDDISPINFOW {
	NMHDR hdr;
	int iItem;
	UINT mask;
	LPWSTR pszText;
	int cchTextMax;
	int iImage;
	LPARAM lParam;
}
alias NMHDDISPINFOW* LPNMHDDISPINFOW;

struct NMHDDISPINFOA {
	NMHDR hdr;
	int iItem;
	UINT mask;
	LPSTR pszText;
	int cchTextMax;
	int iImage;
	LPARAM lParam;
}
alias NMHDDISPINFOA* LPNMHDDISPINFOA;

struct NMHDFILTERBTNCLICK {
	NMHDR hdr;
	INT iItem;
	RECT rc;
}
alias NMHDFILTERBTNCLICK* LPNMHDFILTERBTNCLICK;

version (Unicode) {
	alias HD_TEXTFILTERW HD_TEXTFILTER, HDTEXTFILTER;
	alias LPHD_TEXTFILTERW LPHD_TEXTFILTER, LPHDTEXTFILTER;
	alias HDITEMW HDITEM, HD_ITEM;
	alias LPHDITEMW LPHDITEM;
	alias HDM_INSERTITEMW HDM_INSERTITEM;
	alias HDM_GETITEMW HDM_GETITEM;
	alias HDM_SETITEMW HDM_SETITEM;
	alias HDN_ITEMCHANGINGW HDN_ITEMCHANGING;
	alias HDN_ITEMCHANGEDW HDN_ITEMCHANGED;
	alias HDN_ITEMCLICKW HDN_ITEMCLICK;
	alias HDN_ITEMDBLCLICKW HDN_ITEMDBLCLICK;
	alias HDN_DIVIDERDBLCLICKW HDN_DIVIDERDBLCLICK;
	alias HDN_BEGINTRACKW HDN_BEGINTRACK;
	alias HDN_ENDTRACKW HDN_ENDTRACK;
	alias HDN_TRACKW HDN_TRACK;
	alias HDN_GETDISPINFOW HDN_GETDISPINFO;
	alias NMHEADERW NMHEADER, HD_NOTIFY;
	alias LPNMHEADERW LPNMHEADER;
	alias NMHDDISPINFOW NMHDDISPINFO;
	alias LPNMHDDISPINFOW LPNMHDDISPINFO;
} else {
	alias HD_TEXTFILTERA HD_TEXTFILTER, HDTEXTFILTER;
	alias LPHD_TEXTFILTERA LPHD_TEXTFILTER, LPHDTEXTFILTER;
	alias HDITEMA HDITEM, HD_ITEM;
	alias LPHDITEMA LPHDITEM;
	alias HDM_INSERTITEMA HDM_INSERTITEM;
	alias HDM_GETITEMA HDM_GETITEM;
	alias HDM_SETITEMA HDM_SETITEM;
	alias HDN_ITEMCHANGINGA HDN_ITEMCHANGING;
	alias HDN_ITEMCHANGEDA HDN_ITEMCHANGED;
	alias HDN_ITEMCLICKA HDN_ITEMCLICK;
	alias HDN_ITEMDBLCLICKA HDN_ITEMDBLCLICK;
	alias HDN_DIVIDERDBLCLICKA HDN_DIVIDERDBLCLICK;
	alias HDN_BEGINTRACKA HDN_BEGINTRACK;
	alias HDN_ENDTRACKA HDN_ENDTRACK;
	alias HDN_TRACKA HDN_TRACK;
	alias HDN_GETDISPINFOA HDN_GETDISPINFO;
	alias NMHEADERA NMHEADER, HD_NOTIFY;
	alias LPNMHEADERA LPNMHEADER;
	alias NMHDDISPINFOA NMHDDISPINFO;
	alias LPNMHDDISPINFOA LPNMHDDISPINFO;
}


// Toolbar
// -------
const TCHAR[] TOOLBARCLASSNAME = "ToolbarWindow32";

struct TBBUTTON {
	int iBitmap;
	int idCommand;
	BYTE fsState;
	BYTE fsStyle;
	BYTE[2] bReserved;
	DWORD_PTR dwData;
	INT_PTR iString;
}
alias TBBUTTON* PTBBUTTON, LPTBBUTTON, LPCTBBUTTON;

struct COLORMAP {
	COLORREF from;
	COLORREF to;
}
alias COLORMAP* LPCOLORMAP;

extern(Windows) export {
	HWND CreateToolbarEx(HWND hwnd, DWORD ws, UINT wID, int nBitmaps,
	  HINSTANCE hBMInst, UINT_PTR wBMID, LPCTBBUTTON lpButtons,
	  int iNumButtons, int dxButton, int dyButton,
	  int dxBitmap, int dyBitmap, UINT uStructSize);

	HBITMAP CreateMappedBitmap(HINSTANCE hInstance, INT_PTR idBitmap,
	  UINT wFlags, LPCOLORMAP lpColorMap,
	  int iNumMaps);
}

enum : uint { CMB_MASKED = 0x02 }

enum : uint {
	TBSTATE_CHECKED         = 0x0001,
	TBSTATE_PRESSED         = 0x0002,
	TBSTATE_ENABLED         = 0x0004,
	TBSTATE_HIDDEN          = 0x0008,
	TBSTATE_INDETERMINATE   = 0x0010,
	TBSTATE_WRAP            = 0x0020,
	TBSTATE_ELLIPSES        = 0x0040,
	TBSTATE_MARKED          = 0x0080,
	TBSTYLE_BUTTON          = 0x0000,
	TBSTYLE_SEP             = 0x0001,
	TBSTYLE_CHECK           = 0x0002,
	TBSTYLE_GROUP           = 0x0004,
	TBSTYLE_CHECKGROUP      = TBSTYLE_GROUP | TBSTYLE_CHECK,
	TBSTYLE_DROPDOWN        = 0x0008,
	TBSTYLE_AUTOSIZE        = 0x0010,
	TBSTYLE_NOPREFIX        = 0x0020,
	TBSTYLE_TOOLTIPS        = 0x0100,
	TBSTYLE_WRAPABLE        = 0x0200,
	TBSTYLE_ALTDRAG         = 0x0400,
	TBSTYLE_FLAT            = 0x0800,
	TBSTYLE_LIST            = 0x1000,
	TBSTYLE_CUSTOMERASE     = 0x2000,
	TBSTYLE_REGISTERDROP    = 0x4000,
	TBSTYLE_TRANSPARENT     = 0x8000
}

enum : uint {
	BTNS_BUTTON        = TBSTYLE_BUTTON,
	BTNS_SEP           = TBSTYLE_SEP,
	BTNS_CHECK         = TBSTYLE_CHECK,
	BTNS_GROUP         = TBSTYLE_GROUP,
	BTNS_CHECKGROUP    = TBSTYLE_CHECKGROUP,
	BTNS_DROPDOWN      = TBSTYLE_DROPDOWN,
	BTNS_AUTOSIZE      = TBSTYLE_AUTOSIZE,
	BTNS_NOPREFIX      = TBSTYLE_NOPREFIX,
	BTNS_SHOWTEXT      = 0x0040,
	BTNS_WHOLEDROPDOWN = 0x0080
}

enum : uint {
	TBSTYLE_EX_DRAWDDARROWS       = 0x0001,
	TBSTYLE_EX_MIXEDBUTTONS       = 0x0008,
	TBSTYLE_EX_HIDECLIPPEDBUTTONS = 0x0010,
	TBSTYLE_EX_DOUBLEBUFFER       = 0x0080
}

struct NMTBCUSTOMDRAW {
  NMCUSTOMDRAW nmcd;
  HBRUSH hbrMonoDither;
  HBRUSH hbrLines;
  HPEN hpenLines;
  COLORREF clrText;
  COLORREF clrMark;
  COLORREF clrTextHighlight;
  COLORREF clrBtnFace;
  COLORREF clrBtnHighlight;
  COLORREF clrHighlightHotTrack;
  RECT rcText;
  int nStringBkMode;
  int nHLStringBkMode;
  int iListGap;
}
alias NMTBCUSTOMDRAW* LPNMTBCUSTOMDRAW;

enum : uint {
	TBCDRF_NOEDGES        = 0x00010000,
	TBCDRF_HILITEHOTTRACK = 0x00020000,
	TBCDRF_NOOFFSET       = 0x00040000,
	TBCDRF_NOMARK         = 0x00080000,
	TBCDRF_NOETCHEDEFFECT = 0x00100000,
	TBCDRF_BLENDICON      = 0x00200000,
	TBCDRF_NOBACKGROUND   = 0x00400000
}

enum : uint {
	TB_ENABLEBUTTON          = WM_USER + 1,
	TB_CHECKBUTTON           = WM_USER + 2,
	TB_PRESSBUTTON           = WM_USER + 3,
	TB_HIDEBUTTON            = WM_USER + 4,
	TB_INDETERMINATE         = WM_USER + 5,
	TB_MARKBUTTON            = WM_USER + 6,
	TB_ISBUTTONENABLED       = WM_USER + 9,
	TB_ISBUTTONCHECKED       = WM_USER + 10,
	TB_ISBUTTONPRESSED       = WM_USER + 11,
	TB_ISBUTTONHIDDEN        = WM_USER + 12,
	TB_ISBUTTONINDETERMINATE = WM_USER + 13,
	TB_ISBUTTONHIGHLIGHTED   = WM_USER + 14,
	TB_SETSTATE              = WM_USER + 17,
	TB_GETSTATE              = WM_USER + 18,
	TB_ADDBITMAP             = WM_USER + 19,
	TB_ADDBUTTONSA           = WM_USER + 20,
	TB_ADDBUTTONSW           = WM_USER + 68,
	TB_INSERTBUTTONA         = WM_USER + 21,
	TB_INSERTBUTTONW         = WM_USER + 67,
	TB_DELETEBUTTON          = WM_USER + 22,
	TB_GETBUTTON             = WM_USER + 23,
	TB_BUTTONCOUNT           = WM_USER + 24,
	TB_COMMANDTOINDEX        = WM_USER + 25,
	TB_SAVERESTOREA          = WM_USER + 26,
	TB_SAVERESTOREW          = WM_USER + 76,
	TB_CUSTOMIZE             = WM_USER + 27,
	TB_ADDSTRINGA            = WM_USER + 28,
	TB_ADDSTRINGW            = WM_USER + 77,
	TB_GETITEMRECT           = WM_USER + 29,
	TB_BUTTONSTRUCTSIZE      = WM_USER + 30,
	TB_SETBUTTONSIZE         = WM_USER + 31,
	TB_SETBITMAPSIZE         = WM_USER + 32,
	TB_AUTOSIZE              = WM_USER + 33,
	TB_GETTOOLTIPS           = WM_USER + 35,
	TB_SETTOOLTIPS           = WM_USER + 36,
	TB_SETPARENT             = WM_USER + 37,
	TB_SETROWS               = WM_USER + 39,
	TB_GETROWS               = WM_USER + 40,
	TB_SETCMDID              = WM_USER + 42,
	TB_CHANGEBITMAP          = WM_USER + 43,
	TB_GETBITMAP             = WM_USER + 44,
	TB_GETBUTTONTEXTA        = WM_USER + 45,
	TB_GETBUTTONTEXTW        = WM_USER + 75,
	TB_REPLACEBITMAP         = WM_USER + 46,
	TB_SETINDENT             = WM_USER + 47,
	TB_SETIMAGELIST          = WM_USER + 48,
	TB_GETIMAGELIST          = WM_USER + 49,
	TB_LOADIMAGES            = WM_USER + 50,
	TB_GETRECT               = WM_USER + 51,
	TB_SETHOTIMAGELIST       = WM_USER + 52,
	TB_GETHOTIMAGELIST       = WM_USER + 53,
	TB_SETDISABLEDIMAGELIST  = WM_USER + 54,
	TB_GETDISABLEDIMAGELIST  = WM_USER + 55,
	TB_SETSTYLE              = WM_USER + 56,
	TB_GETSTYLE              = WM_USER + 57,
	TB_GETBUTTONSIZE         = WM_USER + 58,
	TB_SETBUTTONWIDTH        = WM_USER + 59,
	TB_SETMAXTEXTROWS        = WM_USER + 60,
	TB_GETTEXTROWS           = WM_USER + 61,
	TB_GETOBJECT             = WM_USER + 62,
	TB_GETHOTITEM            = WM_USER + 71,
	TB_SETHOTITEM            = WM_USER + 72,
	TB_SETANCHORHIGHLIGHT    = WM_USER + 73,
	TB_GETANCHORHIGHLIGHT    = WM_USER + 74,
	TB_MAPACCELERATORA       = WM_USER + 78,
	TB_MAPACCELERATORW       = WM_USER + 90,
	TB_GETINSERTMARK         = WM_USER + 79,
	TB_SETINSERTMARK         = WM_USER + 80,
	TB_INSERTMARKHITTEST     = WM_USER + 81,
	TB_MOVEBUTTON            = WM_USER + 82,
	TB_GETMAXSIZE            = WM_USER + 83,
	TB_SETEXTENDEDSTYLE      = WM_USER + 84,
	TB_GETEXTENDEDSTYLE      = WM_USER + 85,
	TB_GETPADDING            = WM_USER + 86,
	TB_SETPADDING            = WM_USER + 87,
	TB_SETINSERTMARKCOLOR    = WM_USER + 88,
	TB_GETINSERTMARKCOLOR    = WM_USER + 89,
	TB_GETBITMAPFLAGS        = WM_USER + 41,
	TB_GETBUTTONINFOA        = WM_USER + 65,
	TB_GETBUTTONINFOW        = WM_USER + 63,
	TB_SETBUTTONINFOA        = WM_USER + 66,
	TB_SETBUTTONINFOW        = WM_USER + 64,
	TB_HITTEST               = WM_USER + 69,
	TB_SETDRAWTEXTFLAGS      = WM_USER + 70,
	TB_GETSTRINGA            = WM_USER + 92,
	TB_GETSTRINGW            = WM_USER + 91,
	TB_GETMETRICS            = WM_USER + 101,
	TB_SETMETRICS            = WM_USER + 102,
	TB_SETCOLORSCHEME        = CCM_SETCOLORSCHEME,
	TB_GETCOLORSCHEME        = CCM_GETCOLORSCHEME,
	TB_SETUNICODEFORMAT      = CCM_SETUNICODEFORMAT,
	TB_GETUNICODEFORMAT      = CCM_GETUNICODEFORMAT,
	TB_SETWINDOWTHEME        = CCM_SETWINDOWTHEME
}

struct TBADDBITMAP {
	HINSTANCE hInst;
	UINT_PTR nID;
}
alias TBADDBITMAP* LPTBADDBITMAP;

const HINSTANCE HINST_COMMCTRL = cast(HINSTANCE)(-1);

enum : uint {
	IDB_STD_SMALL_COLOR  = 0,
	IDB_STD_LARGE_COLOR  = 1,
	IDB_VIEW_SMALL_COLOR = 4,
	IDB_VIEW_LARGE_COLOR = 5,
	IDB_HIST_SMALL_COLOR = 8,
	IDB_HIST_LARGE_COLOR = 9
}

enum : uint {
	STD_CUT        = 0,
	STD_COPY       = 1,
	STD_PASTE      = 2,
	STD_UNDO       = 3,
	STD_REDOW      = 4,
	STD_DELETE     = 5,
	STD_FILENEW    = 6,
	STD_FILEOPEN   = 7,
	STD_FILESAVE   = 8,
	STD_PRINTPRE   = 9,
	STD_PROPERTIES = 10,
	STD_HELP       = 11,
	STD_FIND       = 12,
	STD_REPLACE    = 13,
	STD_PRINT      = 14
}

enum : uint {
	VIEW_LARGEICONS    = 0,
	VIEW_SMALLICONS    = 1,
	VIEW_LIST          = 2,
	VIEW_DETAILS       = 3,
	VIEW_SORTNAME      = 4,
	VIEW_SORTSIZE      = 5,
	VIEW_SORTDATE      = 6,
	VIEW_SORTTYPE      = 7,
	VIEW_PARENTFOLDER  = 8,
	VIEW_NETCONNECT    = 9,
	VIEW_NETDISCONNECT = 10,
	VIEW_NEWFOLDER     = 11,
	VIEW_VIEWMENU      = 12
}

enum : uint {
	HIST_BACK           = 0,
	HIST_FORWARD        = 1,
	HIST_FAVORITES      = 2,
	HIST_ADDTOFAVORITES = 3,
	HIST_VIEWTREE       = 4
}

struct TBSAVEPARAMSA {
	HKEY hkr;
	LPCSTR pszSubKey;
	LPCSTR pszValueName;
}
alias TBSAVEPARAMSA* LPTBSAVEPARAMSA;

struct TBSAVEPARAMSW {
	HKEY hkr;
	LPCWSTR pszSubKey;
	LPCWSTR pszValueName;
}
alias TBSAVEPARAMSW* LPTBSAVEPARAMW;

struct TBINSERTMARK {
	int iButton;
	DWORD dwFlags;
}
alias TBINSERTMARK* LPTBINSERTMARK;

enum : uint {
	TBIMHT_AFTER      = 0x00000001,
	TBIMHT_BACKGROUND = 0x00000002
}

struct TBREPLACEBITMAP {
	HINSTANCE hInstOld;
	UINT_PTR nIDOld;
	HINSTANCE hInstNew;
	UINT_PTR nIDNew;
	int nButtons;
}
alias TBREPLACEBITMAP* LPTBREPLACEBITMAP;

enum : uint { TBBF_LARGE = 0x0001 }

enum : uint {
	TBIF_IMAGE   = 0x00000001,
	TBIF_TEXT    = 0x00000002,
	TBIF_STATE   = 0x00000004,
	TBIF_STYLE   = 0x00000008,
	TBIF_LPARAM  = 0x00000010,
	TBIF_COMMAND = 0x00000020,
	TBIF_SIZE    = 0x00000040,
	TBIF_BYINDEX = 0x80000000
}

struct TBBUTTONINFOA {
	UINT cbSize = TBBUTTONINFOA.sizeof;
	DWORD dwMask;
	int idCommand;
	int iImage;
	BYTE fsState;
	BYTE fsStyle;
	WORD cx;
	DWORD_PTR lParam;
	LPSTR pszText;
	int cchText;
}
alias TBBUTTONINFOA* LPTBBUTTONINFOA;

struct TBBUTTONINFOW {
	UINT cbSize = TBBUTTONINFOW.sizeof;
	DWORD dwMask;
	int idCommand;
	int iImage;
	BYTE fsState;
	BYTE fsStyle;
	WORD cx;
	DWORD_PTR lParam;
	LPWSTR pszText;
	int cchText;
}
alias TBBUTTONINFOW* LPTBBUTTONINFOW;

enum : uint {
	TBMF_PAD           = 0x00000001,
	TBMF_BARPAD        = 0x00000002,
	TBMF_BUTTONSPACING = 0x00000004
}

struct TBMETRICS {
	UINT cbSize = TBMETRICS.sizeof;
	DWORD dwMask;
	int cxPad;
	int cyPad;
	int cxBarPad;
	int cyBarPad;
	int cxButtonSpacing;
	int cyButtonSpacing;
}
alias TBMETRICS* LPTBMETRICS;

enum : uint {
	TBN_GETBUTTONINFOA = TBN_FIRST - 0,
	TBN_GETBUTTONINFOW = TBN_FIRST - 20,
	TBN_BEGINDRAG      = TBN_FIRST - 1,
	TBN_ENDDRAG        = TBN_FIRST - 2,
	TBN_BEGINADJUST    = TBN_FIRST - 3,
	TBN_ENDADJUST      = TBN_FIRST - 4,
	TBN_RESET          = TBN_FIRST - 5,
	TBN_QUERYINSERT    = TBN_FIRST - 6,
	TBN_QUERYDELETE    = TBN_FIRST - 7,
	TBN_TOOLBARCHANGE  = TBN_FIRST - 8,
	TBN_CUSTHELP       = TBN_FIRST - 9,
	TBN_DROPDOWN       = TBN_FIRST - 10,
	TBN_GETOBJECT      = TBN_FIRST - 12,
	TBN_HOTITEMCHANGE  = TBN_FIRST - 13,
	TBN_DRAGOUT        = TBN_FIRST - 14,
	TBN_DELETINGBUTTON = TBN_FIRST - 15,
	TBN_GETDISPINFOA   = TBN_FIRST - 16,
	TBN_GETDISPINFOW   = TBN_FIRST - 17,
	TBN_GETINFOTIPA    = TBN_FIRST - 18,
	TBN_GETINFOTIPW    = TBN_FIRST - 19,
	TBN_RESTORE        = TBN_FIRST - 21,
	TBN_SAVE           = TBN_FIRST - 22,
	TBN_INITCUSTOMIZE  = TBN_FIRST - 23
}

struct NMTBHOTITEM {
	NMHDR hdr;
	int idOld;
	int idNew;
	DWORD dwFlags;
}
alias NMTBHOTITEM* LPNMTBHOTITEM;

enum : uint {
	HICF_OTHER          = 0x00000000,
	HICF_MOUSE          = 0x00000001,
	HICF_ARROWKEYS      = 0x00000002,
	HICF_ACCELERATOR    = 0x00000004,
	HICF_DUPACCEL       = 0x00000008,
	HICF_ENTERING       = 0x00000010,
	HICF_LEAVING        = 0x00000020,
	HICF_RESELECT       = 0x00000040,
	HICF_LMOUSE         = 0x00000080,
	HICF_TOGGLEDROPDOWN = 0x00000100
}

enum : uint {
	TBNRF_HIDEHELP     = 0x00000001,
	TBNRF_ENDCUSTOMIZE = 0x00000002
}

struct NMTBSAVE {
	NMHDR hdr;
	DWORD* pData;
	DWORD* pCurrent;
	UINT cbData;
	int iItem;
	int cButtons;
	TBBUTTON tbButton;
}
alias NMTBSAVE* LPNMTBSAVE;

struct NMTBRESTORE {
	NMHDR hdr;
	DWORD* pData;
	DWORD* pCurrent;
	UINT cbData;
	int iItem;
	int cButtons;
	int cbBytesPerRecord;
	TBBUTTON tbButton;
}
alias NMTBRESTORE* LPNMTBRESTORE;

struct NMTBGETINFOTIPA {
	NMHDR hdr;
	LPSTR pszText;
	int cchTextMax;
	int iItem;
	LPARAM lParam;
}
alias NMTBGETINFOTIPA* LPNMTBGETINFOTIPA;

struct NMTBGETINFOTIPW {
	NMHDR hdr;
	LPWSTR pszText;
	int cchTextMax;
	int iItem;
	LPARAM lParam;
}
alias NMTBGETINFOTIPW* LPNMTBGETINFOTIPW;

enum : uint {
	TBNF_IMAGE      = 0x00000001,
	TBNF_TEXT       = 0x00000002,
	TBNF_DI_SETITEM = 0x10000000
}

struct NMTBDISPINFOA {
	NMHDR hdr;
	DWORD dwMask;
	int idCommand;
	DWORD_PTR lParam;
	int iImage;
	LPSTR pszText;
	int cchText;
}
alias NMTBDISPINFOA* LPNMTBDISPINFOA;

struct NMTBDISPINFOW {
	NMHDR hdr;
	DWORD dwMask;
	int idCommand;
	DWORD_PTR lParam;
	int iImage;
	LPWSTR pszText;
	int cchText;
}
alias NMTBDISPINFOW* LPNMTBDISPINFOW;

enum : uint {
	TBDDRET_DEFAULT      = 0,
	TBDDRET_NODEFAULT    = 1,
	TBDDRET_TREATPRESSED = 2
}

struct NMTOOLBARA {
	NMHDR hdr;
	int iItem;
	TBBUTTON tbButton;
	int cchText;
	LPSTR pszText;
	RECT rcButton;
}
alias NMTOOLBARA TBNOTIFYA;
alias NMTOOLBARA* LPNMTOOLBARA, LPTBNOTIFYA;

struct NMTOOLBARW {
	NMHDR hdr;
	int iItem;
	TBBUTTON tbButton;
	int cchText;
	LPWSTR pszText;
	RECT rcButton;
}
alias NMTOOLBARW TBNOTIFYW;
alias NMTOOLBARW* LPNMTOOLBARW, LPTBNOTIFYW;

version (Unicode) {
	alias TBSAVEPARAMSW TBSAVEPARAMS;
	alias LPTBSAVEPARAMSW LPTBSAVEPARAMS;
	alias TB_GETBUTTONTEXTW TB_GETBUTTONTEXT;
	alias TB_SAVERESTOREW TB_SAVERESTORE;
	alias TB_ADDSTRINGW TB_ADDSTRING;
	alias TB_MAPACCELERATORW TB_MAPACCELERATOR;
	alias TBBUTTONINFOW TBBUTTONINFO;
	alias LPTBBUTTONINFOW LPTBBUTTONINFO;
	alias TB_GETBUTTONINFOW TB_GETBUTTONINFO;
	alias TB_SETBUTTONINFOW TB_SETBUTTONINFO;
	alias TB_INSERTBUTTONW TB_INSERTBUTTON;
	alias TB_ADDBUTTONSW TB_ADDBUTTONS;
	alias TB_GETSTRINGW TB_GETSTRING;
	alias TBN_GETINFOTIPW TBN_GETINFOTIP;
	alias NMTBGETINFOTIPW NMTBGETINFOTIP;
	alias LPNMTBGETINFOTIPW LPNMTBGETINFOTIP;
	alias TBN_GETDISPINFOW TBN_GETDISPINFO;
	alias NMTBDISPINFOW NMTBDISPINFO;
	alias LPNMTBDISPINFOW LPNMTBDISPINFO;
	alias TBN_GETBUTTONINFOW TBN_GETBUTTONINFO;
	alias NMTOOLBARW NMTOOLBAR, TBNOTIFY;
	alias LPNMTOOLBARW LPNMTOOLBAR, LPTBNOTIFY;
} else {
	alias TBSAVEPARAMSA TBSAVEPARAMS;
	alias LPTBSAVEPARAMSA LPTBSAVEPARAMS;
	alias TB_GETBUTTONTEXTA TB_GETBUTTONTEXT;
	alias TB_SAVERESTOREA TB_SAVERESTORE;
	alias TB_ADDSTRINGA TB_ADDSTRING;
	alias TB_MAPACCELERATORA TB_MAPACCELERATOR;
	alias TBBUTTONINFOA TBBUTTONINFO;
	alias LPTBBUTTONINFOA LPTBBUTTONINFO;
	alias TB_GETBUTTONINFOA TB_GETBUTTONINFO;
	alias TB_SETBUTTONINFOA TB_SETBUTTONINFO;
	alias TB_INSERTBUTTONA TB_INSERTBUTTON;
	alias TB_ADDBUTTONSA TB_ADDBUTTONS;
	alias TB_GETSTRINGA TB_GETSTRING;
	alias TBN_GETINFOTIPA TBN_GETINFOTIP;
	alias NMTBGETINFOTIPA NMTBGETINFOTIP;
	alias LPNMTBGETINFOTIPA LPNMTBGETINFOTIP;
	alias TBN_GETDISPINFOA TBN_GETDISPINFO;
	alias NMTBDISPINFOA NMTBDISPINFO;
	alias LPNMTBDISPINFOA LPNMTBDISPINFO;
	alias TBN_GETBUTTONINFOA TBN_GETBUTTONINFO;
	alias NMTOOLBARA NMTOOLBAR, TBNOTIFY;
	alias LPNMTOOLBARA LPNMTOOLBAR, LPTBNOTIFY;
}


// Rebar (?)
// ---------
const TCHAR[] REBARCLASSNAME = "ReBarWindow32";

enum : uint { RBIM_IMAGELIST = 0x00000001 }

enum : uint {
	RBS_TOOLTIPS        = 0x0100,
	RBS_VARHEIGHT       = 0x0200,
	RBS_BANDBORDERS     = 0x0400,
	RBS_FIXEDORDER      = 0x0800,
	RBS_REGISTERDROP    = 0x1000,
	RBS_AUTOSIZE        = 0x2000,
	RBS_VERTICALGRIPPER = 0x4000,
	RBS_DBLCLKTOGGLE    = 0x8000
}

struct REBARINFO {
  UINT cbSize = REBARINFO.sizeof;
  UINT fMask;
  HIMAGELIST himl;
}
alias REBARINFO* LPREBARINFO;

enum : uint {
	RBBS_BREAK          = 0x00000001,
	RBBS_FIXEDSIZE      = 0x00000002,
	RBBS_CHILDEDGE      = 0x00000004,
	RBBS_HIDDEN         = 0x00000008,
	RBBS_NOVERT         = 0x00000010,
	RBBS_FIXEDBMP       = 0x00000020,
	RBBS_VARIABLEHEIGHT = 0x00000040,
	RBBS_GRIPPERALWAYS  = 0x00000080,
	RBBS_NOGRIPPER      = 0x00000100,
	RBBS_USECHEVRON     = 0x00000200,
	RBBS_HIDETITLE      = 0x00000400,
	RBBS_TOPALIGN       = 0x00000800
}

enum : uint {
	RBBIM_STYLE      = 0x00000001,
	RBBIM_COLORS     = 0x00000002,
	RBBIM_TEXT       = 0x00000004,
	RBBIM_IMAGE      = 0x00000008,
	RBBIM_CHILD      = 0x00000010,
	RBBIM_CHILDSIZE  = 0x00000020,
	RBBIM_SIZE       = 0x00000040,
	RBBIM_BACKGROUND = 0x00000080,
	RBBIM_ID         = 0x00000100,
	RBBIM_IDEALSIZE  = 0x00000200,
	RBBIM_LPARAM     = 0x00000400,
	RBBIM_HEADERSIZE = 0x00000800
}

struct REBARBANDINFOA {
	UINT cbSize = REBARBANDINFOA.sizeof;
	UINT fMask;
	UINT fStyle;
	COLORREF clrFore;
	COLORREF clrBack;
	LPSTR lpText;
	UINT cch;
	int iImage;
	HWND hwndChild;
	UINT cxMinChild;
	UINT cyMinChild;
	UINT cx;
	HBITMAP hbmBack;
	UINT wID;
	UINT cyChild;
	UINT cyMaxChild;
	UINT cyIntegral;
	UINT cxIdeal;
	LPARAM lParam;
	UINT cxHeader;
}
alias REBARBANDINFOA* LPREBARBANDINFOA,LPCREBARBANDINFOA;

struct REBARBANDINFOW {
	UINT cbSize = REBARBANDINFOW.sizeof;
	UINT fMask;
	UINT fStyle;
	COLORREF clrFore;
	COLORREF clrBack;
	LPWSTR lpText;
	UINT cch;
	int iImage;
	HWND hwndChild;
	UINT cxMinChild;
	UINT cyMinChild;
	UINT cx;
	HBITMAP hbmBack;
	UINT wID;
	UINT cyChild;
	UINT cyMaxChild;
	UINT cyIntegral;
	UINT cxIdeal;
	LPARAM lParam;
	UINT cxHeader;
}
alias REBARBANDINFOW* LPREBARBANDINFOW, LPCREBARBANDINFOW;

enum : size_t {
	REBARBANDINFOA_V3_SIZE = REBARBANDINFOA.cyChild.offsetof,
	REBARBANDINFOW_V3_SIZE = REBARBANDINFOW.cyChild.offsetof
}

enum : uint {
	RB_INSERTBANDA      = WM_USER + 1,
	RB_INSERTBANDW      = WM_USER + 10,
	RB_DELETEBAND       = WM_USER + 2,
	RB_GETBARINFO       = WM_USER + 3,
	RB_SETBARINFO       = WM_USER + 4,
	RB_SETBANDINFOA     = WM_USER + 6,
	RB_SETBANDINFOW     = WM_USER + 11,
	RB_SETPARENT        = WM_USER + 7,
	RB_HITTEST          = WM_USER + 8,
	RB_GETRECT          = WM_USER + 9,
	RB_GETBANDCOUNT     = WM_USER + 12,
	RB_GETROWCOUNT      = WM_USER + 13,
	RB_GETROWHEIGHT     = WM_USER + 14,
	RB_IDTOINDEX        = WM_USER + 16,
	RB_GETTOOLTIPS      = WM_USER + 17,
	RB_SETTOOLTIPS      = WM_USER + 18,
	RB_SETBKCOLOR       = WM_USER + 19,
	RB_GETBKCOLOR       = WM_USER + 20,
	RB_SETTEXTCOLOR     = WM_USER + 21,
	RB_GETTEXTCOLOR     = WM_USER + 22,
	RB_SIZETORECT       = WM_USER + 23,
	RB_BEGINDRAG        = WM_USER + 24,
	RB_ENDDRAG          = WM_USER + 25,
	RB_DRAGMOVE         = WM_USER + 26,
	RB_GETBARHEIGHT     = WM_USER + 27,
	RB_GETBANDINFOA     = WM_USER + 29,
	RB_GETBANDINFOW     = WM_USER + 28,
	RB_MINIMIZEBAND     = WM_USER + 30,
	RB_MAXIMIZEBAND     = WM_USER + 31,
	RB_GETBANDBORDERS   = WM_USER + 34,
	RB_SHOWBAND         = WM_USER + 35,
	RB_SETPALETTE       = WM_USER + 37,
	RB_GETPALETTE       = WM_USER + 38,
	RB_MOVEBAND         = WM_USER + 39,
	RB_GETBANDMARGINS   = WM_USER + 40,
	RB_PUSHCHEVRON      = WM_USER + 43,
	RB_GETDROPTARGET    = CCM_GETDROPTARGET,
	RB_SETCOLORSCHEME   = CCM_SETCOLORSCHEME,
	RB_GETCOLORSCHEME   = CCM_GETCOLORSCHEME,
	RB_SETUNICODEFORMAT = CCM_SETUNICODEFORMAT,
	RB_GETUNICODEFORMAT = CCM_GETUNICODEFORMAT,
	RB_SETWINDOWTHEME   = CCM_SETWINDOWTHEME
}

enum : uint { RBSTR_CHANGERECT = 0x0001 }


enum : uint {
	RBN_HEIGHTCHANGE  = RBN_FIRST - 0,
	RBN_GETOBJECT     = RBN_FIRST - 1,
	RBN_LAYOUTCHANGED = RBN_FIRST - 2,
	RBN_AUTOSIZE      = RBN_FIRST - 3,
	RBN_BEGINDRAG     = RBN_FIRST - 4,
	RBN_ENDDRAG       = RBN_FIRST - 5,
	RBN_DELETINGBAND  = RBN_FIRST - 6,
	RBN_DELETEDBAND   = RBN_FIRST - 7,
	RBN_CHILDSIZE     = RBN_FIRST - 8,
	RBN_CHEVRONPUSHED = RBN_FIRST - 10,
	RBN_MINMAX        = RBN_FIRST - 21,
	RBN_AUTOBREAK     = RBN_FIRST - 22
}

struct NMREBARCHILDSIZE {
	NMHDR hdr;
	UINT uBand;
	UINT wID;
	RECT rcChild;
	RECT rcBand;
}
alias NMREBARCHILDSIZE* LPNMREBARCHILDSIZE;

struct NMREBAR {
	NMHDR hdr;
	DWORD dwMask;
	UINT uBand;
	UINT fStyle;
	UINT wID;
	LPARAM lParam;
}
alias NMREBAR* LPNMREBAR;

enum : uint {
	RBNM_ID     = 0x00000001,
	RBNM_STYLE  = 0x00000002,
	RBNM_LPARAM = 0x00000004
}

struct NMRBAUTOSIZE {
	NMHDR hdr;
	BOOL fChanged;
	RECT rcTarget;
	RECT rcActual;
}
alias NMRBAUTOSIZE* LPNMRBAUTOSIZE;

struct NMREBARCHEVRON {
	NMHDR hdr;
	UINT uBand;
	UINT wID;
	LPARAM lParam;
	RECT rc;
	LPARAM lParamNM;
}
alias NMREBARCHEVRON* LPNMREBARCHEVRON;

enum : uint {
	RBAB_AUTOSIZE = 0x0001,
	RBAB_ADDBAND = 0x0002
}

struct NMREBARAUTOBREAK {
	NMHDR hdr;
	UINT uBand;
	UINT wID;
	LPARAM lParam;
	UINT uMsg;
	UINT fStyleCurrent;
	BOOL fAutoBreak;
}
alias NMREBARAUTOBREAK* LPNMREBARAUTOBREAK;

enum : uint {
	RBHT_NOWHERE = 0x0001,
	RBHT_CAPTION = 0x0002,
	RBHT_CLIENT = 0x0003,
	RBHT_GRABBER = 0x0004,
	RBHT_CHEVRON = 0x0008
}

struct RBHITTESTINFO {
	POINT pt;
	UINT flags;
	int iBand;
}
alias RBHITTESTINFO* LPRBHITTESTINFO;

version (Unicode) {
	alias REBARBANDINFOW REBARBANDINFO;
	alias LPREBARBANDINFOW LPREBARBANDINFO;
	alias LPCREBARBANDINFOW LPCREBARBANDINFO;
	alias RB_INSERTBANDW RB_INSERTBAND;
	alias RB_SETBANDINFOW RB_SETBANDINFO;
	alias RB_GETBANDINFOW RB_GETBANDINFO;
} else {
	alias REBARBANDINFOA REBARBANDINFO;
	alias LPREBARBANDINFOA LPREBARBANDINFO;
	alias LPCREBARBANDINFOA LPCREBARBANDINFO;
	alias RB_INSERTBANDA RB_INSERTBAND;
	alias RB_SETBANDINFOA RB_SETBANDINFO;
	alias RB_GETBANDINFOA RB_GETBANDINFO;
}


// Tooltip
// -------
const TCHAR[] TOOLTIPS_CLASS = "tooltips_class32";

struct TOOLINFOA {
	UINT cbSize = TOOLINFOA.sizeof;
	UINT uFlags;
	HWND hwnd;
	UINT_PTR uId;
	RECT rect;
	HINSTANCE hinst;
	LPSTR lpszText;
	LPARAM lParam;
	void* lpReserved;
}
alias TOOLINFOA* PTOOLINFOA, LPTOOLINFOA;

struct TOOLINFOW {
	UINT cbSize = TOOLINFOW.sizeof;
	UINT uFlags;
	HWND hwnd;
	UINT_PTR uId;
	RECT rect;
	HINSTANCE hinst;
	LPWSTR lpszText;
	LPARAM lParam;
	void* lpReserved;
}
alias TOOLINFOW* PTOOLINFOW, LPTOOLINFOW;

enum : size_t {
	TTTOOLINFOA_V1_SIZE = TOOLINFOA.lParam.offsetof,
	TTTOOLINFOW_V1_SIZE = TOOLINFOW.lParam.offsetof,
	TTTOOLINFOA_V2_SIZE = TOOLINFOA.lpReserved.offsetof,
	TTTOOLINFOW_V2_SIZE = TOOLINFOW.lpReserved.offsetof,
	TTTOOLINFOA_V3_SIZE = TOOLINFOA.sizeof,
	TTTOOLINFOW_V3_SIZE = TOOLINFOW.sizeof
}

enum : uint {
	TTS_ALWAYSTIP = 0x01,
	TTS_NOPREFIX  = 0x02,
	TTS_NOANIMATE = 0x10,
	TTS_NOFADE    = 0x20,
	TTS_BALLOON   = 0x40,
	TTS_CLOSE     = 0x80
}

enum : uint {
	TTF_IDISHWND    = 0x0001,
	TTF_CENTERTIP   = 0x0002,
	TTF_RTLREADING  = 0x0004,
	TTF_SUBCLASS    = 0x0010,
	TTF_TRACK       = 0x0020,
	TTF_ABSOLUTE    = 0x0080,
	TTF_TRANSPARENT = 0x0100,
	TTF_PARSELINKS  = 0x1000,
	TTF_DI_SETITEM  = 0x8000
}

enum : uint {
	TTDT_AUTOMATIC = 0,
	TTDT_RESHOW    = 1,
	TTDT_AUTOPOP   = 2,
	TTDT_INITIAL   = 3
}

enum : uint {
	TTI_NONE    = 0,
	TTI_INFO    = 1,
	TTI_WARNING = 2,
	TTI_ERROR   = 3
}

enum : uint {
	TTM_ACTIVATE        = WM_USER + 1,
	TTM_SETDELAYTIME    = WM_USER + 3,
	TTM_ADDTOOLA        = WM_USER + 4,
	TTM_ADDTOOLW        = WM_USER + 50,
	TTM_DELTOOLA        = WM_USER + 5,
	TTM_DELTOOLW        = WM_USER + 51,
	TTM_NEWTOOLRECTA    = WM_USER + 6,
	TTM_NEWTOOLRECTW    = WM_USER + 52,
	TTM_RELAYEVENT      = WM_USER + 7,
	TTM_GETTOOLINFOA    = WM_USER + 8,
	TTM_GETTOOLINFOW    = WM_USER + 53,
	TTM_SETTOOLINFOA    = WM_USER + 9,
	TTM_SETTOOLINFOW    = WM_USER + 54,
	TTM_HITTESTA        = WM_USER + 10,
	TTM_HITTESTW        = WM_USER + 55,
	TTM_GETTEXTA        = WM_USER + 11,
	TTM_GETTEXTW        = WM_USER + 56,
	TTM_UPDATETIPTEXTA  = WM_USER + 12,
	TTM_UPDATETIPTEXTW  = WM_USER + 57,
	TTM_GETTOOLCOUNT    = WM_USER + 13,
	TTM_ENUMTOOLSA      = WM_USER + 14,
	TTM_ENUMTOOLSW      = WM_USER + 58,
	TTM_GETCURRENTTOOLA = WM_USER + 15,
	TTM_GETCURRENTTOOLW = WM_USER + 59,
	TTM_WINDOWFROMPOINT = WM_USER + 16,
	TTM_TRACKACTIVATE   = WM_USER + 17,
	TTM_TRACKPOSITION   = WM_USER + 18,
	TTM_SETTIPBKCOLOR   = WM_USER + 19,
	TTM_SETTIPTEXTCOLOR = WM_USER + 20,
	TTM_GETDELAYTIME    = WM_USER + 21,
	TTM_GETTIPBKCOLOR   = WM_USER + 22,
	TTM_GETTIPTEXTCOLOR = WM_USER + 23,
	TTM_SETMAXTIPWIDTH  = WM_USER + 24,
	TTM_GETMAXTIPWIDTH  = WM_USER + 25,
	TTM_SETMARGIN       = WM_USER + 26,
	TTM_GETMARGIN       = WM_USER + 27,
	TTM_POP             = WM_USER + 28,
	TTM_UPDATE          = WM_USER + 29,
	TTM_GETBUBBLESIZE   = WM_USER + 30,
	TTM_ADJUSTRECT      = WM_USER + 31,
	TTM_SETTITLEA       = WM_USER + 32,
	TTM_SETTITLEW       = WM_USER + 33,
	TTM_POPUP           = WM_USER + 34,
	TTM_GETTITLE        = WM_USER + 35
}

struct TTGETTITLE {
	DWORD dwSize = TTGETTITLE.sizeof;
	UINT uTitleBitmap;
	UINT cch;
	WCHAR* pszTitle;
}
alias TTGETTITLE* PTTGETTITLE;

alias CCM_SETWINDOWTHEME TTM_SETWINDOWTHEME;

struct TTHITTESTINFOA {
	HWND hwnd;
	POINT pt;
	TOOLINFOA ti;
}
alias TTHITTESTINFOA* LPTTHITTESTINFOA, LPHITTESTINFOA;

struct TTHITTESTINFOW {
	HWND hwnd;
	POINT pt;
	TOOLINFOW ti;
}
alias TTHITTESTINFOW* LPTTHITTESTINFOW, LPHITTESTINFOW;

enum : uint {
	TTN_GETDISPINFOA = TTN_FIRST - 0,
	TTN_GETDISPINFOW = TTN_FIRST - 10,
	TTN_SHOW         = TTN_FIRST - 1,
	TTN_POP          = TTN_FIRST - 2,
	TTN_LINKCLICK    = TTN_FIRST - 3
}

alias TTN_GETDISPINFOA TTN_NEEDTEXTA;
alias TTN_GETDISPINFOW TTN_NEEDTEXTW;

struct NMTTDISPINFOA {
	NMHDR hdr;
	LPSTR lpszText;
	char[80] szText;
	HINSTANCE hinst;
	UINT uFlags;
	LPARAM lParam;
}
alias NMTTDISPINFOA TOOLTIPTEXTA;
alias NMTTDISPINFOA* LPNMTTDISPINFOA, LPTOOLTIPTEXTA;

struct NMTTDISPINFOW {
	NMHDR hdr;
	LPWSTR lpszText;
	WCHAR[80] szText;
	HINSTANCE hinst;
	UINT uFlags;
	LPARAM lParam;
}
alias NMTTDISPINFOW TOOLTIPTEXTW;
alias NMTTDISPINFOW* LPNMTTDISPINFOW, LPTOOLTIPTEXTW;

enum : size_t {
	NMTTDISPINFOA_V1_SIZE = NMTTDISPINFOA.lParam.offsetof,
	NMTTDISPINFOW_V1_SIZE = NMTTDISPINFOW.lParam.offsetof
}

enum : uint {
	SBARS_SIZEGRIP = 0x0100,
	SBARS_TOOLTIPS = 0x0800
}

enum : uint { SBT_TOOLTIPS = 0x0800 }

extern (Windows) export {
	void DrawStatusTextA(HDC hDC, LPRECT lprc, LPCSTR pszText, UINT uFlags);
	void DrawStatusTextW(HDC hDC, LPRECT lprc, LPCWSTR pszText, UINT uFlags);

	HWND CreateStatusWindowA(LONG style, LPCSTR lpszText, HWND hwndParent,
	  UINT wID);
	HWND CreateStatusWindowW(LONG style, LPCWSTR lpszText, HWND hwndParent,
	  UINT wID);
}

version (Unicode) {
	alias TOOLINFOW TOOLINFO;
	alias LPTOOLINFOW LPTOOLINFO;
	alias TTM_ADDTOOLW TTM_ADDTOOL;
	alias TTM_DELTOOLW TTM_DELTOOL;
	alias TTM_NEWTOOLRECTW TTM_NEWTOOLRECT;
	alias TTM_GETTOOLINFOW TTM_GETTOOLINFO;
	alias TTM_SETTOOLINFOW TTM_SETTOOLINFO;
	alias TTM_HITTESTW TTM_HITTEST;
	alias TTM_GETTEXTW TTM_GETTEXT;
	alias TTM_UPDATETIPTEXTW TTM_UPDATETIPTEXT;
	alias TTM_ENUMTOOLSW TTM_ENUMTOOLS;
	alias TTM_GETCURRENTTOOLW TTM_GETCURRENTTOOL;
	alias TTM_SETTITLEW TTM_SETTITLE;
	alias TTHITTESTINFOW TTHITTESTINFO;
	alias LPTTHITTESTINFOW LPTTHITTESTINFO, LPHITTESTINFO;
	alias TTN_GETDISPINFOW TTN_GETDISPINFO, TTN_NEEDTEXT;
	alias NMTTDISPINFOW NMTTDISPINFO, TOOLTIPTEXT;
	alias LPNMTTDISPINFOW LPNMTTDISPINFO, LPTOOLTIPTEXT;
	alias CreateStatusWindowW CreateStatusWindow;
	alias DrawStatusTextW DrawStatusText;
} else {
	alias TOOLINFOA TOOLINFO;
	alias LPTOOLINFOA LPTOOLINFO;
	alias TTM_ADDTOOLA TTM_ADDTOOL;
	alias TTM_DELTOOLA TTM_DELTOOL;
	alias TTM_NEWTOOLRECTA TTM_NEWTOOLRECT;
	alias TTM_GETTOOLINFOA TTM_GETTOOLINFO;
	alias TTM_SETTOOLINFOA TTM_SETTOOLINFO;
	alias TTM_HITTESTA TTM_HITTEST;
	alias TTM_GETTEXTA TTM_GETTEXT;
	alias TTM_UPDATETIPTEXTA TTM_UPDATETIPTEXT;
	alias TTM_ENUMTOOLSA TTM_ENUMTOOLS;
	alias TTM_GETCURRENTTOOLA TTM_GETCURRENTTOOL;
	alias TTM_SETTITLEA TTM_SETTITLE;
	alias TTHITTESTINFOA TTHITTESTINFO;
	alias LPTTHITTESTINFOA LPTTHITTESTINFO, LPHITTESTINFO;
	alias TTN_GETDISPINFOA TTN_GETDISPINFO, TTN_NEEDTEXT;
	alias NMTTDISPINFOA NMTTDISPINFO, TOOLTIPTEXT;
	alias LPNMTTDISPINFOA LPNMTTDISPINFO, LPTOOLTIPTEXT;
	alias CreateStatusWindowA CreateStatusWindow;
	alias DrawStatusTextA DrawStatusText;
}


// Status bar
// ----------
const TCHAR[] STATUSCLASSNAME = "msctls_statusbar32";

enum : uint {
	SB_SETTEXTA       = WM_USER + 1,
	SB_SETTEXTW       = WM_USER + 11,
	SB_GETTEXTA       = WM_USER + 2,
	SB_GETTEXTW       = WM_USER + 13,
	SB_GETTEXTLENGTHA = WM_USER + 3,
	SB_GETTEXTLENGTHW = WM_USER + 12
}

enum : uint {
	SB_SETPARTS         = WM_USER + 4,
	SB_GETPARTS         = WM_USER + 6,
	SB_GETBORDERS       = WM_USER + 7,
	SB_SETMINHEIGHT     = WM_USER + 8,
	SB_SIMPLE           = WM_USER + 9,
	SB_GETRECT          = WM_USER + 10,
	SB_ISSIMPLE         = WM_USER + 14,
	SB_SETICON          = WM_USER + 15,
// why are these commented out?
// #define SB_SETTIPTEXTA (WM_USER+16)
// #define SB_SETTIPTEXTW (WM_USER+17)
// #define SB_GETTIPTEXTA (WM_USER+18)
// #define SB_GETTIPTEXTW (WM_USER+19)
	SB_GETICON          = WM_USER + 20,
	SB_SETUNICODEFORMAT = CCM_SETUNICODEFORMAT,
	SB_GETUNICODEFORMAT = CCM_GETUNICODEFORMAT,
	SB_SETBKCOLOR       = CCM_SETBKCOLOR
}


enum : uint {
	SBT_OWNERDRAW    = 0x1000,
	SBT_NOBORDERS    = 0x0100,
	SBT_POPOUT       = 0x0200,
	SBT_RTLREADING   = 0x0400,
	SBT_NOTABPARSING = 0x0800
}

enum : uint { SBN_SIMPLEMODECHANGE = SBN_FIRST - 0 }
enum : uint { SB_SIMPLEID = 0x00ff }

extern(Windows) export {
	void MenuHelp(UINT uMsg, WPARAM wParam, LPARAM lParam, HMENU hMainMenu,
	  HINSTANCE hInst, HWND hwndStatus, UINT *lpwIDs);
	BOOL ShowHideMenuCtl(HWND hWnd, UINT_PTR uFlags, LPINT lpInfo);
	void GetEffectiveClientRect(HWND hWnd, LPRECT lprc, LPINT lpInfo);
}

alias SC_SIZE MINSYSCOMMAND;

version (Unicode) {
	alias SB_GETTEXTW SB_GETTEXT;
	alias SB_SETTEXTW SB_SETTEXT;
	alias SB_GETTEXTLENGTHW SB_GETTEXTLENGTH;
	alias SB_SETTIPTEXTW SB_SETTIPTEXT;
	alias SB_GETTIPTEXTW SB_GETTIPTEXT;
} else {
	alias SB_GETTEXTA SB_GETTEXT;
	alias SB_SETTEXTA SB_SETTEXT;
	alias SB_GETTEXTLENGTHA SB_GETTEXTLENGTH;
	alias SB_SETTIPTEXTA SB_SETTIPTEXT;
	alias SB_GETTIPTEXTA SB_GETTIPTEXT;
}


// Trackbar
// --------
const TCHAR[] TRACKBAR_CLASS = "msctls_trackbar32";

enum : uint {
	TBS_AUTOTICKS      = 0x0001,
	TBS_VERT           = 0x0002,
	TBS_HORZ           = 0x0000,
	TBS_TOP            = 0x0004,
	TBS_BOTTOM         = 0x0000,
	TBS_LEFT           = 0x0004,
	TBS_RIGHT          = 0x0000,
	TBS_BOTH           = 0x0008,
	TBS_NOTICKS        = 0x0010,
	TBS_ENABLESELRANGE = 0x0020,
	TBS_FIXEDLENGTH    = 0x0040,
	TBS_NOTHUMB        = 0x0080,
	TBS_TOOLTIPS       = 0x0100,
	TBS_REVERSED       = 0x0200,
	TBS_DOWNISLEFT     = 0x0400
}

enum : uint {
	TBM_GETPOS           = WM_USER,
	TBM_GETRANGEMIN      = WM_USER + 1,
	TBM_GETRANGEMAX      = WM_USER + 2,
	TBM_GETTIC           = WM_USER + 3,
	TBM_SETTIC           = WM_USER + 4,
	TBM_SETPOS           = WM_USER + 5,
	TBM_SETRANGE         = WM_USER + 6,
	TBM_SETRANGEMIN      = WM_USER + 7,
	TBM_SETRANGEMAX      = WM_USER + 8,
	TBM_CLEARTICS        = WM_USER + 9,
	TBM_SETSEL           = WM_USER + 10,
	TBM_SETSELSTART      = WM_USER + 11,
	TBM_SETSELEND        = WM_USER + 12,
	TBM_GETPTICS         = WM_USER + 14,
	TBM_GETTICPOS        = WM_USER + 15,
	TBM_GETNUMTICS       = WM_USER + 16,
	TBM_GETSELSTART      = WM_USER + 17,
	TBM_GETSELEND        = WM_USER + 18,
	TBM_CLEARSEL         = WM_USER + 19,
	TBM_SETTICFREQ       = WM_USER + 20,
	TBM_SETPAGESIZE      = WM_USER + 21,
	TBM_GETPAGESIZE      = WM_USER + 22,
	TBM_SETLINESIZE      = WM_USER + 23,
	TBM_GETLINESIZE      = WM_USER + 24,
	TBM_GETTHUMBRECT     = WM_USER + 25,
	TBM_GETCHANNELRECT   = WM_USER + 26,
	TBM_SETTHUMBLENGTH   = WM_USER + 27,
	TBM_GETTHUMBLENGTH   = WM_USER + 28,
	TBM_SETTOOLTIPS      = WM_USER + 29,
	TBM_GETTOOLTIPS      = WM_USER + 30,
	TBM_SETTIPSIDE       = WM_USER + 31,
	TBM_SETBUDDY         = WM_USER + 32,
	TBM_GETBUDDY         = WM_USER + 33,
	TBM_SETUNICODEFORMAT = CCM_SETUNICODEFORMAT,
	TBM_GETUNICODEFORMAT = CCM_GETUNICODEFORMAT
}

enum : uint {
	TBTS_TOP    = 0,
	TBTS_LEFT   = 1,
	TBTS_BOTTOM = 2,
	TBTS_RIGHT  = 3
}


enum : uint {
	TB_LINEUP        = 0,
	TB_LINEDOWN      = 1,
	TB_PAGEUP        = 2,
	TB_PAGEDOWN      = 3,
	TB_THUMBPOSITION = 4,
	TB_THUMBTRACK    = 5,
	TB_TOP           = 6,
	TB_BOTTOM        = 7,
	TB_ENDTRACK      = 8
}

enum : uint {
	TBCD_TICS    = 0x0001,
	TBCD_THUMB   = 0x0002,
	TBCD_CHANNEL = 0x0003
}


// Drag list box
// -------------
struct DRAGLISTINFO {
	UINT uNotification;
	HWND hWnd;
	POINT ptCursor;
}
alias DRAGLISTINFO* LPDRAGLISTINFO;

enum : uint {
	DL_BEGINDRAG  = WM_USER + 133,
	DL_DRAGGING   = WM_USER + 134,
	DL_DROPPED    = WM_USER + 135,
	DL_CANCELDRAG = WM_USER + 136,

	DL_CURSORSET  = 0,
	DL_STOPCURSOR = 1,
	DL_COPYCURSOR = 2,
	DL_MOVECURSOR = 3
}

const TCHAR[] DRAGLISTMSGSTRING = "commctrl_DragListMsg";

extern(Windows) export {
	BOOL MakeDragList(HWND hLB);
	void DrawInsert(HWND handParent, HWND hLB, int nItem);
	int LBItemFromPt(HWND hLB, POINT pt, BOOL bAutoScroll);
}


// Up/down buttons
// ---------------
const TCHAR[] UPDOWN_CLASS = "msctls_updown32";

struct UDACCEL {
	UINT nSec;
	UINT nInc;
}
alias UDACCEL* LPUDACCEL;

enum : uint {
	UD_MAXVAL = 0x7fff,
	UD_MINVAL = -UD_MAXVAL
}

enum : uint {
	UDS_WRAP        = 0x0001,
	UDS_SETBUDDYINT = 0x0002,
	UDS_ALIGNRIGHT  = 0x0004,
	UDS_ALIGNLEFT   = 0x0008,
	UDS_AUTOBUDDY   = 0x0010,
	UDS_ARROWKEYS   = 0x0020,
	UDS_HORZ        = 0x0040,
	UDS_NOTHOUSANDS = 0x0080,
	UDS_HOTTRACK    = 0x0100
}

enum : uint {
	UDM_SETRANGE         = WM_USER + 101,
	UDM_GETRANGE         = WM_USER + 102,
	UDM_SETPOS           = WM_USER + 103,
	UDM_GETPOS           = WM_USER + 104,
	UDM_SETBUDDY         = WM_USER + 105,
	UDM_GETBUDDY         = WM_USER + 106,
	UDM_SETACCEL         = WM_USER + 107,
	UDM_GETACCEL         = WM_USER + 108,
	UDM_SETBASE          = WM_USER + 109,
	UDM_GETBASE          = WM_USER + 110,
	UDM_SETRANGE32       = WM_USER + 111,
	UDM_GETRANGE32       = WM_USER + 112,
	UDM_SETPOS32         = WM_USER + 113,
	UDM_GETPOS32         = WM_USER + 114,
	UDM_SETUNICODEFORMAT = CCM_SETUNICODEFORMAT,
	UDM_GETUNICODEFORMAT = CCM_GETUNICODEFORMAT
}

extern(Windows) export
HWND CreateUpDownControl(DWORD dwStyle, int x, int y, int cx, int cy,
  HWND hParent, int nID, HINSTANCE hInst, HWND hBuddy,
  int nUpper, int nLower, int nPos);

struct NMUPDOWN {
	NMHDR hdr;
	int iPos;
	int iDelta;
}
alias NMUPDOWN NM_UPDOWN;
alias NMUPDOWN* LPNMUPDOWN, LPNM_UPDOWN;

enum : uint { UDN_DELTAPOS = UDN_FIRST - 1 }


// Progress bar
// ------------
const TCHAR[] PROGRESS_CLASS = "msctls_progress32";

enum : uint {
	PBS_SMOOTH   = 0x01,
	PBS_VERTICAL = 0x04
}

enum : uint {
	PBM_SETRANGE    = WM_USER + 1,
	PBM_SETPOS      = WM_USER + 2,
	PBM_DELTAPOS    = WM_USER + 3,
	PBM_SETSTEP     = WM_USER + 4,
	PBM_STEPIT      = WM_USER + 5,
	PBM_SETRANGE32  = WM_USER + 6,
	PBM_GETRANGE    = WM_USER + 7,
	PBM_GETPOS      = WM_USER + 8,
	PBM_SETBARCOLOR = WM_USER + 9,
	PBM_SETBKCOLOR  = CCM_SETBKCOLOR
}

struct PBRANGE {
	int iLow;
	int iHigh;
}
alias PBRANGE* PPBRANGE;

enum : uint {
	HOTKEYF_SHIFT   = 0x01,
	HOTKEYF_CONTROL = 0x02,
	HOTKEYF_ALT     = 0x04,
	HOTKEYF_EXT     = 0x08
}

enum : uint {
	HKCOMB_NONE = 0x0001,
	HKCOMB_S    = 0x0002,
	HKCOMB_C    = 0x0004,
	HKCOMB_A    = 0x0008,
	HKCOMB_SC   = 0x0010,
	HKCOMB_SA   = 0x0020,
	HKCOMB_CA   = 0x0040,
	HKCOMB_SCA  = 0x0080
}

enum : uint {
	HKM_SETHOTKEY = WM_USER + 1,
	HKM_GETHOTKEY = WM_USER + 2,
	HKM_SETRULES  = WM_USER + 3
}


// Hotkey
// ------
const TCHAR[] HOTKEY_CLASS = "msctls_hotkey32";

enum : uint {
	CCS_TOP           = 0x00000001,
	CCS_NOMOVEY       = 0x00000002,
	CCS_BOTTOM        = 0x00000003,
	CCS_NORESIZE      = 0x00000004,
	CCS_NOPARENTALIGN = 0x00000008,
	CCS_ADJUSTABLE    = 0x00000020,
	CCS_NODIVIDER     = 0x00000040,
	CCS_VERT          = 0x00000080,
	CCS_LEFT          = CCS_VERT | CCS_TOP,
	CCS_RIGHT         = CCS_VERT | CCS_BOTTOM,
	CCS_NOMOVEX       = CCS_VERT | CCS_NOMOVEY
}


// List view
// ---------
const TCHAR[] WC_LISTVIEW = "SysListView32";

enum : uint {
	LVS_ICON             = 0x0000,
	LVS_REPORT           = 0x0001,
	LVS_SMALLICON        = 0x0002,
	LVS_LIST             = 0x0003,
	LVS_TYPEMASK         = 0x0003,
	LVS_SINGLESEL        = 0x0004,
	LVS_SHOWSELALWAYS    = 0x0008,
	LVS_SORTASCENDING    = 0x0010,
	LVS_SORTDESCENDING   = 0x0020,
	LVS_SHAREIMAGELISTS  = 0x0040,
	LVS_NOLABELWRAP      = 0x0080,
	LVS_AUTOARRANGE      = 0x0100,
	LVS_EDITLABELS       = 0x0200,
	LVS_OWNERDATA        = 0x1000,
	LVS_NOSCROLL         = 0x2000,
	LVS_TYPESTYLEMASK    = 0xfc00,
	LVS_ALIGNTOP         = 0x0000,
	LVS_ALIGNLEFT        = 0x0800,
	LVS_ALIGNMASK        = 0x0c00,
	LVS_OWNERDRAWFIXED   = 0x0400,
	LVS_NOCOLUMNHEADER   = 0x4000,
	LVS_NOSORTHEADER     = 0x8000,
	LVM_SETUNICODEFORMAT = CCM_SETUNICODEFORMAT,
	LVM_GETUNICODEFORMAT = CCM_GETUNICODEFORMAT
}

enum : uint {
	LVM_GETBKCOLOR               = LVM_FIRST + 0,
	LVM_SETBKCOLOR               = LVM_FIRST + 1,
	LVM_GETIMAGELIST             = LVM_FIRST + 2,
	LVM_SETIMAGELIST             = LVM_FIRST + 3,
	LVM_GETITEMCOUNT             = LVM_FIRST + 4,
	LVM_GETITEMA                 = LVM_FIRST + 5,
	LVM_GETITEMW                 = LVM_FIRST + 75,
	LVM_SETITEMA                 = LVM_FIRST + 6,
	LVM_SETITEMW                 = LVM_FIRST + 76,
	LVM_INSERTITEMA              = LVM_FIRST + 7,
	LVM_INSERTITEMW              = LVM_FIRST + 77,
	LVM_DELETEITEM               = LVM_FIRST + 8,
	LVM_DELETEALLITEMS           = LVM_FIRST + 9,
	LVM_GETCALLBACKMASK          = LVM_FIRST + 10,
	LVM_SETCALLBACKMASK          = LVM_FIRST + 11,
	LVM_GETNEXTITEM              = LVM_FIRST + 12,
	LVM_FINDITEMA                = LVM_FIRST + 13,
	LVM_FINDITEMW                = LVM_FIRST + 83,
	LVM_GETITEMRECT              = LVM_FIRST + 14,
	LVM_SETITEMPOSITION          = LVM_FIRST + 15,
	LVM_GETITEMPOSITION          = LVM_FIRST + 16,
	LVM_GETSTRINGWIDTHA          = LVM_FIRST + 17,
	LVM_GETSTRINGWIDTHW          = LVM_FIRST + 87,
	LVM_HITTEST                  = LVM_FIRST + 18,
	LVM_ENSUREVISIBLE            = LVM_FIRST + 19,
	LVM_SCROLL                   = LVM_FIRST + 20,
	LVM_REDRAWITEMS              = LVM_FIRST + 21,
	LVM_GETEDITCONTROL           = LVM_FIRST + 24,
	LVM_GETCOLUMNA               = LVM_FIRST + 25,
	LVM_GETCOLUMNW               = LVM_FIRST + 95,
	LVM_SETCOLUMNA               = LVM_FIRST + 26,
	LVM_SETCOLUMNW               = LVM_FIRST + 96,
	LVM_INSERTCOLUMNA            = LVM_FIRST + 27,
	LVM_INSERTCOLUMNW            = LVM_FIRST + 97,
	LVM_DELETECOLUMN             = LVM_FIRST + 28,
	LVM_GETCOLUMNWIDTH           = LVM_FIRST + 29,
	LVM_SETCOLUMNWIDTH           = LVM_FIRST + 30,
	LVM_GETHEADER                = LVM_FIRST + 31,
	LVM_CREATEDRAGIMAGE          = LVM_FIRST + 33,
	LVM_GETVIEWRECT              = LVM_FIRST + 34,
	LVM_GETTEXTCOLOR             = LVM_FIRST + 35,
	LVM_SETTEXTCOLOR             = LVM_FIRST + 36,
	LVM_GETTEXTBKCOLOR           = LVM_FIRST + 37,
	LVM_SETTEXTBKCOLOR           = LVM_FIRST + 38,
	LVM_GETTOPINDEX              = LVM_FIRST + 39,
	LVM_GETCOUNTPERPAGE          = LVM_FIRST + 40,
	LVM_GETORIGIN                = LVM_FIRST + 41,
	LVM_UPDATE                   = LVM_FIRST + 42,
	LVM_SETITEMSTATE             = LVM_FIRST + 43,
	LVM_GETITEMSTATE             = LVM_FIRST + 44,
	LVM_GETITEMTEXTA             = LVM_FIRST + 45,
	LVM_GETITEMTEXTW             = LVM_FIRST + 115,
	LVM_SETITEMTEXTA             = LVM_FIRST + 46,
	LVM_SETITEMTEXTW             = LVM_FIRST + 116,
	LVM_SETITEMCOUNT             = LVM_FIRST + 47,
	LVM_SORTITEMS                = LVM_FIRST + 48,
	LVM_SETITEMPOSITION32        = LVM_FIRST + 49,
	LVM_GETSELECTEDCOUNT         = LVM_FIRST + 50,
	LVM_GETITEMSPACING           = LVM_FIRST + 51,
	LVM_GETISEARCHSTRINGA        = LVM_FIRST + 52,
	LVM_GETISEARCHSTRINGW        = LVM_FIRST + 117,
	LVM_SETICONSPACING           = LVM_FIRST + 53,
	LVM_SETEXTENDEDLISTVIEWSTYLE = LVM_FIRST + 54,
	LVM_GETEXTENDEDLISTVIEWSTYLE = LVM_FIRST + 55,
	LVM_GETSUBITEMRECT           = LVM_FIRST + 56,
	LVM_SUBITEMHITTEST           = LVM_FIRST + 57,
	LVM_SETCOLUMNORDERARRAY      = LVM_FIRST + 58,
	LVM_GETCOLUMNORDERARRAY      = LVM_FIRST + 59,
	LVM_SETHOTITEM               = LVM_FIRST + 60,
	LVM_GETHOTITEM               = LVM_FIRST + 61,
	LVM_SETHOTCURSOR             = LVM_FIRST + 62,
	LVM_GETHOTCURSOR             = LVM_FIRST + 63,
	LVM_APPROXIMATEVIEWRECT      = LVM_FIRST + 64,
	LVM_SETWORKAREAS             = LVM_FIRST + 65,
	LVM_GETWORKAREAS             = LVM_FIRST + 70,
	LVM_GETNUMBEROFWORKAREAS     = LVM_FIRST + 73,
	LVM_GETSELECTIONMARK         = LVM_FIRST + 66,
	LVM_SETSELECTIONMARK         = LVM_FIRST + 67,
	LVM_SETHOVERTIME             = LVM_FIRST + 71,
	LVM_GETHOVERTIME             = LVM_FIRST + 72,
	LVM_SETTOOLTIPS              = LVM_FIRST + 74,
	LVM_GETTOOLTIPS              = LVM_FIRST + 78,
	LVM_SORTITEMSEX              = LVM_FIRST + 81,
	LVM_SETBKIMAGEA              = LVM_FIRST + 68,
	LVM_SETBKIMAGEW              = LVM_FIRST + 138,
	LVM_GETBKIMAGEA              = LVM_FIRST + 69,
	LVM_GETBKIMAGEW              = LVM_FIRST + 139,
	LVM_SETSELECTEDCOLUMN        = LVM_FIRST + 140,
	LVM_SETTILEWIDTH             = LVM_FIRST + 141,
	LVM_SETVIEW                  = LVM_FIRST + 142,
	LVM_GETVIEW                  = LVM_FIRST + 143,
	LVM_INSERTGROUP              = LVM_FIRST + 145,
	LVM_SETGROUPINFO             = LVM_FIRST + 147,
	LVM_GETGROUPINFO             = LVM_FIRST + 149,
	LVM_REMOVEGROUP              = LVM_FIRST + 150,
	LVM_MOVEGROUP                = LVM_FIRST + 151,
	LVM_MOVEITEMTOGROUP          = LVM_FIRST + 154,
	LVM_SETGROUPMETRICS          = LVM_FIRST + 155,
	LVM_GETGROUPMETRICS          = LVM_FIRST + 156,
	LVM_ENABLEGROUPVIEW          = LVM_FIRST + 157,
	LVM_SORTGROUPS               = LVM_FIRST + 158,
	LVM_INSERTGROUPSORTED        = LVM_FIRST + 159,
	LVM_REMOVEALLGROUPS          = LVM_FIRST + 160,
	LVM_HASGROUP                 = LVM_FIRST + 161,
	LVM_SETTILEVIEWINFO          = LVM_FIRST + 162,
	LVM_GETTILEVIEWINFO          = LVM_FIRST + 163,
	LVM_SETTILEINFO              = LVM_FIRST + 164,
	LVM_GETTILEINFO              = LVM_FIRST + 165,
	LVM_SETINSERTMARK            = LVM_FIRST + 166,
	LVM_GETINSERTMARK            = LVM_FIRST + 167,
	LVM_INSERTMARKHITTEST        = LVM_FIRST + 168,
	LVM_GETINSERTMARKRECT        = LVM_FIRST + 169,
	LVM_SETINSERTMARKCOLOR       = LVM_FIRST + 170,
	LVM_GETINSERTMARKCOLOR       = LVM_FIRST + 171,
	LVM_SETINFOTIP               = LVM_FIRST + 173,
	LVM_GETSELECTEDCOLUMN        = LVM_FIRST + 174,
	LVM_ISGROUPVIEWENABLED       = LVM_FIRST + 175,
	LVM_GETOUTLINECOLOR          = LVM_FIRST + 176,
	LVM_SETOUTLINECOLOR          = LVM_FIRST + 177,
	LVM_CANCELEDITLABEL          = LVM_FIRST + 179,
	LVM_MAPINDEXTOID             = LVM_FIRST + 180,
	LVM_MAPIDTOINDEX             = LVM_FIRST + 181
}

enum : uint {
	LVSIL_NORMAL = 0,
	LVSIL_SMALL  = 1,
	LVSIL_STATE  = 2
}

enum : uint {
	LVIF_TEXT        = 0x0001,
	LVIF_IMAGE       = 0x0002,
	LVIF_PARAM       = 0x0004,
	LVIF_STATE       = 0x0008,
	LVIF_INDENT      = 0x0010,
	LVIF_NORECOMPUTE = 0x0800,
	LVIF_GROUPID     = 0x0100,
	LVIF_COLUMNS     = 0x0200,
	LVIF_DI_SETITEM  = 0x1000
}

enum : uint {
	LVIS_FOCUSED        = 0x0001,
	LVIS_SELECTED       = 0x0002,
	LVIS_CUT            = 0x0004,
	LVIS_DROPHILITED    = 0x0008,
	LVIS_GLOW           = 0x0010,
	LVIS_ACTIVATING     = 0x0020,
	LVIS_OVERLAYMASK    = 0x0F00,
	LVIS_STATEIMAGEMASK = 0xF000
}

uint INDEXTOSTATEIMAGEMASK(uint i) { return i << 12; }

enum { I_INDENTCALLBACK = -1 }

enum {
	I_GROUPIDCALLBACK = -1,
	I_GROUPIDNONE     = -2
}

struct LVITEMA {
	UINT mask;
	int iItem;
	int iSubItem;
	UINT state;
	UINT stateMask;
	LPSTR pszText;
	int cchTextMax;
	int iImage;
	LPARAM lParam;
	int iIndent;
	int iGroupId;
	UINT cColumns;
	PUINT puColumns;
}
alias LVITEMA LV_ITEMA;
alias LVITEMA* LPLVITEMA;

struct LVITEMW {
	UINT mask;
	int iItem;
	int iSubItem;
	UINT state;
	UINT stateMask;
	LPWSTR pszText;
	int cchTextMax;
	int iImage;
	LPARAM lParam;
	int iIndent;
	int iGroupId;
	UINT cColumns;
	PUINT puColumns;
}
alias LVITEMW LV_ITEMW;
alias LVITEMW* LPLVITEMW;

enum : size_t {
	LVITEMA_V1_SIZE = LVITEMA.iIndent.offsetof,
	LVITEMW_V1_SIZE = LVITEMW.iIndent.offsetof
}

const LPTSTR LPSTR_TEXTCALLBACK = cast(LPTSTR) -1;

enum {
	I_IMAGECALLBACK = -1,
	I_IMAGENONE     = -2
}

enum : uint { I_COLUMNSCALLBACK = -1U }

enum : uint {
	LVNI_ALL         = 0x0000,
	LVNI_FOCUSED     = 0x0001,
	LVNI_SELECTED    = 0x0002,
	LVNI_CUT         = 0x0004,
	LVNI_DROPHILITED = 0x0008,
	LVNI_ABOVE       = 0x0100,
	LVNI_BELOW       = 0x0200,
	LVNI_TOLEFT      = 0x0400,
	LVNI_TORIGHT     = 0x0800
}

enum : uint {
	LVFI_PARAM     = 0x0001,
	LVFI_STRING    = 0x0002,
	LVFI_PARTIAL   = 0x0008,
	LVFI_WRAP      = 0x0020,
	LVFI_NEARESTXY = 0x0040
}

struct LVFINDINFOA {
	UINT flags;
	LPCSTR psz;
	LPARAM lParam;
	POINT pt;
	UINT vkDirection;
}
alias LVFINDINFOA LV_FINDINFOA;
alias LVFINDINFOA* LPFINDINFOA;

struct LVFINDINFOW {
	UINT flags;
	LPCWSTR psz;
	LPARAM lParam;
	POINT pt;
	UINT vkDirection;
}
alias LVFINDINFOW LV_FINDINFOW;
alias LVFINDINFOW* LPFINDINFOW;

enum : uint {
	LVIR_BOUNDS       = 0,
	LVIR_ICON         = 1,
	LVIR_LABEL        = 2,
	LVIR_SELECTBOUNDS = 3
}

enum : uint {
	LVHT_NOWHERE         = 0x0001,
	LVHT_ONITEMICON      = 0x0002,
	LVHT_ONITEMLABEL     = 0x0004,
	LVHT_ONITEMSTATEICON = 0x0008,
	LVHT_ONITEM          = LVHT_ONITEMICON | LVHT_ONITEMLABEL
	                       | LVHT_ONITEMSTATEICON,
	LVHT_ABOVE           = 0x0008,
	LVHT_BELOW           = 0x0010,
	LVHT_TORIGHT         = 0x0020,
	LVHT_TOLEFT          = 0x0040
}

struct LVHITTESTINFO {
	POINT pt;
	UINT flags;
	int iItem;
	int iSubItem;
}
alias LVHITTESTINFO LV_HITTESTINFO;
alias LVHITTESTINFO* LPLVHITTESTINFO;

enum : size_t { LVHITTESTINFO_V1_SIZE = LVHITTESTINFO.iSubItem.offsetof }

enum : uint {
	LVA_DEFAULT    = 0x0000,
	LVA_ALIGNLEFT  = 0x0001,
	LVA_ALIGNTOP   = 0x0002,
	LVA_SNAPTOGRID = 0x0005
}

enum : uint {
	LVM_ARRANGE    = LVM_FIRST + 22,
	LVM_EDITLABELA = LVM_FIRST + 23,
	LVM_EDITLABELW = LVM_FIRST + 118
}

struct LVCOLUMNA {
	UINT mask;
	int fmt;
	int cx;
	LPSTR pszText;
	int cchTextMax;
	int iSubItem;
	int iImage;
	int iOrder;
}
alias LVCOLUMNA LV_COLUMNA;
alias LVCOLUMNA* LPLVCOLUMNA;

struct LVCOLUMNW {
	UINT mask;
	int fmt;
	int cx;
	LPWSTR pszText;
	int cchTextMax;
	int iSubItem;
	int iImage;
	int iOrder;
}
alias LVCOLUMNW LV_COLUMNW;
alias LVCOLUMNW* LPLVCOLUMNW;

enum : size_t {
	LVCOLUMNA_V1_SIZE = LVCOLUMNA.iImage.offsetof,
	LVCOLUMNW_V1_SIZE = LVCOLUMNW.iImage.offsetof
}

enum : uint {
	LVCF_FMT     = 0x0001,
	LVCF_WIDTH   = 0x0002,
	LVCF_TEXT    = 0x0004,
	LVCF_SUBITEM = 0x0008,
	LVCF_IMAGE   = 0x0010,
	LVCF_ORDER   = 0x0020
}

enum : uint {
	LVCFMT_LEFT            = 0x0000,
	LVCFMT_RIGHT           = 0x0001,
	LVCFMT_CENTER          = 0x0002,
	LVCFMT_JUSTIFYMASK     = 0x0003,

	LVCFMT_IMAGE           = 0x0800,
	LVCFMT_BITMAP_ON_RIGHT = 0x1000,
	LVCFMT_COL_HAS_IMAGES  = 0x8000
}

enum : int {
	LVSCW_AUTOSIZE           = -1,
	LVSCW_AUTOSIZE_USEHEADER = -2
}

enum : uint {
	LVSICF_NOINVALIDATEALL = 1,
	LVSICF_NOSCROLL        = 2
}


extern(Windows) alias int function(LPARAM, LPARAM, LPARAM) PFNLVCOMPARE;

enum : uint {
	LVS_EX_GRIDLINES        = 0x00000001,
	LVS_EX_SUBITEMIMAGES    = 0x00000002,
	LVS_EX_CHECKBOXES       = 0x00000004,
	LVS_EX_TRACKSELECT      = 0x00000008,
	LVS_EX_HEADERDRAGDROP   = 0x00000010,
	LVS_EX_FULLROWSELECT    = 0x00000020,
	LVS_EX_ONECLICKACTIVATE = 0x00000040,
	LVS_EX_TWOCLICKACTIVATE = 0x00000080,
	LVS_EX_FLATSB           = 0x00000100,
	LVS_EX_REGIONAL         = 0x00000200,
	LVS_EX_INFOTIP          = 0x00000400,
	LVS_EX_UNDERLINEHOT     = 0x00000800,
	LVS_EX_UNDERLINECOLD    = 0x00001000,
	LVS_EX_MULTIWORKAREAS   = 0x00002000,
	LVS_EX_LABELTIP         = 0x00004000,
	LVS_EX_BORDERSELECT     = 0x00008000,
	LVS_EX_DOUBLEBUFFER     = 0x00010000,
	LVS_EX_HIDELABELS       = 0x00020000,
	LVS_EX_SINGLEROW        = 0x00040000,
	LVS_EX_SNAPTOGRID       = 0x00080000,
	LVS_EX_SIMPLESELECT     = 0x00100000
}

enum : uint { LV_MAX_WORKAREAS = 16 }

struct LVBKIMAGEA {
	ULONG ulFlags;
	HBITMAP hbm;
	LPSTR pszImage;
	UINT cchImageMax;
	int xOffsetPercent;
	int yOffsetPercent;
}
alias LVBKIMAGEA* LPLVBKIMAGEA;

struct LVBKIMAGEW {
	ULONG ulFlags;
	HBITMAP hbm;
	LPWSTR pszImage;
	UINT cchImageMax;
	int xOffsetPercent;
	int yOffsetPercent;
}
alias LVBKIMAGEW* LPLVBKIMAGEW;

enum : uint {
	LVBKIF_SOURCE_NONE     = 0x00000000,
	LVBKIF_SOURCE_HBITMAP  = 0x00000001,
	LVBKIF_SOURCE_URL      = 0x00000002,
	LVBKIF_SOURCE_MASK     = 0x00000003,
	LVBKIF_STYLE_NORMAL    = 0x00000000,
	LVBKIF_STYLE_TILE      = 0x00000010,
	LVBKIF_STYLE_MASK      = 0x00000010,
	LVBKIF_FLAG_TILEOFFSET = 0x00000100,
	LVBKIF_TYPE_WATERMARK  = 0x10000000
}

enum : uint {
	LV_VIEW_ICON      = 0x0000,
	LV_VIEW_DETAILS   = 0x0001,
	LV_VIEW_SMALLICON = 0x0002,
	LV_VIEW_LIST      = 0x0003,
	LV_VIEW_TILE      = 0x0004,
	LV_VIEW_MAX       = 0x0004
}

enum : uint {
	LVGF_NONE    = 0x00000000,
	LVGF_HEADER  = 0x00000001,
	LVGF_FOOTER  = 0x00000002,
	LVGF_STATE   = 0x00000004,
	LVGF_ALIGN   = 0x00000008,
	LVGF_GROUPID = 0x00000010
}

enum : uint {
	LVGS_NORMAL    = 0x00000000,
	LVGS_COLLAPSED = 0x00000001,
	LVGS_HIDDEN    = 0x00000002
}

enum : uint {
	LVGA_HEADER_LEFT   = 0x00000001,
	LVGA_HEADER_CENTER = 0x00000002,
	LVGA_HEADER_RIGHT  = 0x00000004,
	LVGA_FOOTER_LEFT   = 0x00000008,
	LVGA_FOOTER_CENTER = 0x00000010,
	LVGA_FOOTER_RIGHT  = 0x00000020
}

struct LVGROUP {
	UINT cbSize = LVGROUP.sizeof;
	UINT mask;
	LPWSTR pszHeader;
	int cchHeader;
	LPWSTR pszFooter;
	int cchFooter;
	int iGroupId;
	UINT stateMask;
	UINT state;
	UINT uAlign;
}
alias LVGROUP* PLVGROUP;

enum : uint {
	LVGMF_NONE        = 0x00000000,
	LVGMF_BORDERSIZE  = 0x00000001,
	LVGMF_BORDERCOLOR = 0x00000002,
	LVGMF_TEXTCOLOR   = 0x00000004
}

struct LVGROUPMETRICS {
	UINT cbSize = LVGROUPMETRICS.sizeof;
	UINT mask;
	UINT Left;
	UINT Top;
	UINT Right;
	UINT Bottom;
	COLORREF crLeft;
	COLORREF crTop;
	COLORREF crRight;
	COLORREF crBottom;
	COLORREF crHeader;
	COLORREF crFooter;
}
alias LVGROUPMETRICS* PLVGROUPMETRICS;

extern(Windows) alias int function(int, int, void*) PFNLVGROUPCOMPARE;

struct LVINSERTGROUPSORTED {
	PFNLVGROUPCOMPARE pfnGroupCompare;
	void* pvData;
	LVGROUP lvGroup;
}
alias LVINSERTGROUPSORTED* PLVINSERTGROUPSORTED;

enum : uint {
	LVTVIF_AUTOSIZE    = 0x00000000,
	LVTVIF_FIXEDWIDTH  = 0x00000001,
	LVTVIF_FIXEDHEIGHT = 0x00000002,
	LVTVIF_FIXEDSIZE   = 0x00000003,

	LVTVIM_TILESIZE    = 0x00000001,
	LVTVIM_COLUMNS     = 0x00000002,
	LVTVIM_LABELMARGIN = 0x00000004
}

struct LVTILEVIEWINFO {
	UINT cbSize = LVTILEVIEWINFO.sizeof;
	DWORD dwMask;
	DWORD dwFlags;
	SIZE sizeTile;
	int cLines;
	RECT rcLabelMargin;
}
alias LVTILEVIEWINFO* PLVTILEVIEWINFO;

struct LVTILEINFO {
	UINT cbSize = LVTILEINFO.sizeof;
	int iItem;
	UINT cColumns;
	PUINT puColumns;
}
alias LVTILEINFO* PLVTILEINFO;

struct LVINSERTMARK {
	UINT cbSize = LVINSERTMARK.sizeof;
	DWORD dwFlags;
	int iItem;
	DWORD dwReserved;
}
alias LVINSERTMARK* LPLVINSERTMARK;

enum : uint { LVIM_AFTER = 0x00000001 }

struct LVSETINFOTIP {
	UINT cbSize = LVSETINFOTIP.sizeof;
	DWORD dwFlags;
	LPWSTR pszText;
	int iItem;
	int iSubItem;
}
alias LVSETINFOTIP* PLVSETINFOTIP;


DWORD ListView_ApproximateViewRect(HWND hwnd, int iWidth, int iHeight,
	  int iCount) {
	return SendMessage(hwnd, LVM_APPROXIMATEVIEWRECT, iCount,
	  MAKELPARAM(cast(ushort) iWidth, cast(ushort) iHeight));
}

BOOL ListView_Arrange(HWND hwndLV, UINT code) {
	return SendMessage(hwndLV, LVM_ARRANGE, code, 0);
}

void ListView_CancelEditLabel(HWND hwnd) {
	SendMessage(hwnd, LVM_CANCELEDITLABEL, 0, 0);
}

HIMAGELIST ListView_CreateDragImage(HWND hwnd, int i, POINT* lpptUpLeft) {
	return cast(HIMAGELIST) SendMessage(hwnd, LVM_CREATEDRAGIMAGE,
	  i, cast(LPARAM) lpptUpLeft);
}

BOOL ListView_DeleteAllItems(HWND hwnd) {
	return SendMessage(hwnd, LVM_DELETEALLITEMS, 0, 0);
}

BOOL ListView_DeleteColumn(HWND hwnd, int iCol) {
	return SendMessage(hwnd, LVM_DELETECOLUMN, iCol, 0);
}

BOOL ListView_DeleteItem(HWND hwnd, int i) {
	return SendMessage(hwnd, LVM_DELETEITEM, i, 0);
}

HWND ListView_EditLabel(HWND hwndLV, int i) {
	return cast(HWND) SendMessage(hwndLV, LVM_EDITLABEL, i, 0);
}

// FIXME: return type?
LRESULT ListView_EnableGroupView(HWND hwnd, BOOL fEnable) {
	return SendMessage(hwnd, LVM_ENABLEGROUPVIEW, fEnable, 0);
}

BOOL ListView_EnsureVisible(HWND hwndLV, int i, BOOL fPartialOK) {
	return SendMessage(hwndLV, LVM_ENSUREVISIBLE, i,
	  MAKELPARAM(cast(ushort) fPartialOK, 0));
}

int ListView_FindItem(HWND hwnd, int iStart, LV_FINDINFO* plvfi) {
	return SendMessage(hwnd, LVM_FINDITEM, iStart, cast(LPARAM) plvfi);
}

COLORREF ListView_GetBkColor(HWND hwnd) {
	return SendMessage(hwnd, LVM_GETBKCOLOR, 0, 0);
}

BOOL ListView_GetBkImage(HWND hwnd, LVBKIMAGE* plvbki) {
	return SendMessage(hwnd, LVM_GETBKIMAGE, 0, cast(LPARAM) plvbki);
}

UINT ListView_GetCallbackMask(HWND hwnd) {
	return SendMessage(hwnd, LVM_GETCALLBACKMASK, 0, 0);
}

UINT ListView_GetCheckState(HWND hwndLV, int i) {
	return ((cast(UINT) SendMessage(hwndLV, LVM_GETITEMSTATE, i,
	  LVIS_STATEIMAGEMASK)) >> 12) - 1;
}

BOOL ListView_GetColumn(HWND hwnd, int iCol, LV_COLUMN* pcol) {
	return SendMessage(hwnd, LVM_GETCOLUMN, iCol, cast(LPARAM) pcol);
}

BOOL ListView_GetColumnOrderArray(HWND hwnd, int iCount, int* pi) {
	return SendMessage(hwnd, LVM_GETCOLUMNORDERARRAY, iCount,
	  cast(LPARAM) pi);
}

int ListView_GetColumnWidth(HWND hwnd, int iCol) {
	return SendMessage(hwnd, LVM_GETCOLUMNWIDTH, iCol, 0);
}

int ListView_GetCountPerPage(HWND hwndLV) {
	return SendMessage(hwndLV, LVM_GETCOUNTPERPAGE, 0, 0);
}

HWND ListView_GetEditControl(HWND hwndLV) {
	return cast(HWND) SendMessage(hwndLV, LVM_GETEDITCONTROL, 0, 0);
}

DWORD ListView_GetExtendedListViewStyle(HWND hwndLV) {
	return SendMessage(hwndLV, LVM_GETEXTENDEDLISTVIEWSTYLE, 0, 0);
}

// FIXME: return type?
LRESULT ListView_GetGroupInfo(HWND hwnd, int iGroupId, LVGROUP* pgrp) {
	return SendMessage(hwnd, LVM_GETGROUPINFO, iGroupId, cast(LPARAM) pgrp);
}

// FIXME: return type?
LRESULT ListView_GetGroupMetrics(HWND hwnd, LVGROUPMETRICS* pGroupMetrics) {
	return SendMessage(hwnd, LVM_GETGROUPMETRICS, 0,
	  cast(LPARAM) pGroupMetrics);
}

HWND ListView_GetHeader(HWND hwnd) {
	return cast(HWND) SendMessage(hwnd, LVM_GETHEADER, 0, 0);
}

HCURSOR ListView_GetHotCursor(HWND hwnd) {
	return cast(HCURSOR) SendMessage(hwnd, LVM_GETHOTCURSOR, 0, 0);
}

int ListView_GetHotItem(HWND hwnd) {
	return SendMessage(hwnd, LVM_GETHOTITEM, 0, 0);
}

DWORD ListView_GetHoverTime(HWND hwndLV) {
	return SendMessage(hwndLV, LVM_GETHOVERTIME, 0, 0);
}

HIMAGELIST ListView_GetImageList(HWND hwnd, int iImageList) {
	return cast(HIMAGELIST) SendMessage(hwnd, LVM_GETIMAGELIST,
	  iImageList, 0);
}

BOOL ListView_GetInsertMark(HWND hwnd, LVINSERTMARK* lvim) {
	return SendMessage(hwnd, LVM_GETINSERTMARK, 0, cast(LPARAM) lvim);
}

COLORREF ListView_GetInsertMarkColor(HWND hwnd) {
	return SendMessage(hwnd, LVM_GETINSERTMARKCOLOR, 0, 0);
}

int ListView_GetInsertMarkRect(HWND hwnd, RECT* rc) {
	return SendMessage(hwnd, LVM_GETINSERTMARKRECT, 0, cast(LPARAM) rc);
}

BOOL ListView_GetISearchString(HWND hwndLV, LPTSTR lpsz) {
	return SendMessage(hwndLV, LVM_GETISEARCHSTRING, 0, cast(LPARAM) lpsz);
}

BOOL ListView_GetItem(HWND hwnd, LV_ITEM* pitem) {
	return SendMessage(hwnd, LVM_GETITEM, 0, cast(LPARAM) pitem);
}

BOOL ListView_GetItemPosition(HWND hwndLV, int i, POINT* ppt) {
	return SendMessage(hwndLV, LVM_GETITEMPOSITION, i, cast(LPARAM) ppt);
}

int ListView_GetItemRect(HWND hwnd, int i, RECT* prc, int code) {
	return SendMessage(hwnd, LVM_GETITEMRECT, i,
	  (prc ? (prc.left = code, cast(LPARAM) prc) : 0));
}

DWORD ListView_GetItemSpacing(HWND hwndLV, BOOL fSmall) {
	return SendMessage(hwndLV, LVM_GETITEMSPACING, fSmall, 0);
}

UINT ListView_GetItemState(HWND hwndLV, int i, UINT mask) {
	return SendMessage(hwndLV, LVM_GETITEMSTATE, i, mask);
}

int ListView_GetItemText(HWND hwndLV, int i, int iSubItem_, LPTSTR pszText_,
	  int cchTextMax_) {
	LV_ITEM _ms_lvi;

	_ms_lvi.iSubItem = iSubItem_;
	_ms_lvi.cchTextMax = cchTextMax_;
	_ms_lvi.pszText = pszText_;
	return SendMessage(hwndLV, LVM_GETITEMTEXT, i, cast(LPARAM) &_ms_lvi);
}

int ListView_GetNextItem(HWND hwnd, int i, UINT flags) {
	return SendMessage(hwnd, LVM_GETNEXTITEM, i,
	  MAKELPARAM(cast(ushort) flags, 0));
}

BOOL ListView_GetNumberOfWorkAreas(HWND hwnd, UINT* pnWorkAreas) {
	return SendMessage(hwnd, LVM_GETNUMBEROFWORKAREAS, 0,
	  cast(LPARAM) pnWorkAreas);
}

BOOL ListView_GetOrigin(HWND hwndLV, POINT* ppt) {
	return SendMessage(hwndLV, LVM_GETORIGIN, 0, cast(LPARAM) ppt);
}

COLORREF ListView_GetOutlineColor(HWND hwnd) {
	return SendMessage(hwnd, LVM_GETOUTLINECOLOR, 0, 0);
}

UINT ListView_GetSelectedColumn(HWND hwnd) {
	return SendMessage(hwnd, LVM_GETSELECTEDCOLUMN, 0, 0);
}

UINT ListView_GetSelectedCount(HWND hwndLV) {
	return SendMessage(hwndLV, LVM_GETSELECTEDCOUNT, 0, 0);
}

int ListView_GetSelectionMark(HWND hwnd) {
	return SendMessage(hwnd, LVM_GETSELECTIONMARK, 0, 0);
}

int ListView_GetStringWidth(HWND hwndLV, LPTSTR psz) {
	return SendMessage(hwndLV, LVM_GETSTRINGWIDTH, 0, cast(LPARAM) psz);
}

BOOL ListView_GetSubItemRect(HWND hwnd, int iItem, int iSubItem, int code,
	  LPRECT prc) {
	return SendMessage(hwnd, LVM_GETSUBITEMRECT, iItem,
	  prc ? (prc.top = iSubItem, prc.left = code, cast(LPARAM) prc) : 0);
}

COLORREF ListView_GetTextBkColor(HWND hwnd) {
	return SendMessage(hwnd, LVM_GETTEXTBKCOLOR, 0, 0);
}

COLORREF ListView_GetTextColor(HWND hwnd) {
	return SendMessage(hwnd, LVM_GETTEXTCOLOR, 0, 0);
}

// FIXME: return type?
LRESULT ListView_GetTileInfo(HWND hwnd, LVTILEINFO* pti) {
	return SendMessage(hwnd, LVM_GETTILEINFO, 0, cast(LPARAM) pti);
}

// FIXME: return type?
LRESULT ListView_GetTileViewInfo(HWND hwnd, LVTILEVIEWINFO* ptvi) {
	return SendMessage(hwnd, LVM_GETTILEVIEWINFO, 0, cast(LPARAM) ptvi);
}

HWND ListView_GetToolTips(HWND hwndLV) {
	return cast(HWND) SendMessage(hwndLV, LVM_GETTOOLTIPS, 0, 0);
}

int ListView_GetTopIndex(HWND hwndLV) {
	return SendMessage(hwndLV, LVM_GETTOPINDEX, 0, 0);
}

DWORD ListView_GetView(HWND hwnd) {
	return SendMessage(hwnd, LVM_GETVIEW, 0, 0);
}

BOOL ListView_GetViewRect(HWND hwnd, RECT* prc) {
	return SendMessage(hwnd, LVM_GETVIEWRECT, 0, cast(LPARAM) prc);
}

BOOL ListView_GetWorkAreas(HWND hwnd, int nWorkAreas, RECT* prc) {
	return SendMessage(hwnd, LVM_GETWORKAREAS, nWorkAreas, cast(LPARAM) prc);
}

// FIXME: return type?
LRESULT ListView_HasGroup(HWND hwnd, DWORD dwGroupId) {
	return SendMessage(hwnd, LVM_HASGROUP, dwGroupId, 0);
}

int ListView_HitTest(HWND hwndLV, LV_HITTESTINFO* pinfo) {
	return SendMessage(hwndLV, LVM_HITTEST, 0, cast(LPARAM) pinfo);
}

int ListView_InsertColumn(HWND hwnd, int iCol, LV_COLUMN* pcol) {
	return SendMessage(hwnd, LVM_INSERTCOLUMN, iCol, cast(LPARAM) pcol);
}

// FIXME: return type and type of index?
LRESULT ListView_InsertGroup(HWND hwnd, WPARAM index, LVGROUP* pgrp) {
	return SendMessage(hwnd, LVM_INSERTGROUP, index, cast(LPARAM) pgrp);
}

// FIXME: return type?
LRESULT ListView_InsertGroupSorted(HWND hwnd,
	  LVINSERTGROUPSORTED* structInsert) {
	return SendMessage(hwnd, LVM_INSERTGROUPSORTED,
	  cast(WPARAM) structInsert, 0);
}

int ListView_InsertItem(HWND hwnd, LV_ITEM* pitem) {
	return SendMessage(hwnd, LVM_INSERTITEM, 0, cast(LPARAM) pitem);
}

int ListView_InsertMarkHitTest(HWND hwnd, POINT* point,
	  LVINSERTMARK* lvim) {
	return SendMessage(hwnd, LVM_INSERTMARKHITTEST, cast(WPARAM) point,
	  cast(LPARAM) lvim);
}

BOOL ListView_IsGroupViewEnabled(HWND hwnd) {
	return SendMessage(hwnd, LVM_ISGROUPVIEWENABLED, 0, 0);
}

// FIXME: type of id?
UINT ListView_MapIDToIndex(HWND hwnd, WPARAM id) {
	return SendMessage(hwnd, LVM_MAPIDTOINDEX, id, 0);
}

// FIXME: type of index
UINT ListView_MapIndexToID(HWND hwnd, WPARAM index) {
	return SendMessage(hwnd, LVM_MAPINDEXTOID, index, 0);
}

// FIXME: return type and type of iGroupId and toIndex?
LRESULT ListView_MoveGroup(HWND hwnd, WPARAM iGroupId, LPARAM toIndex) {
	return SendMessage(hwnd, LVM_MOVEGROUP, iGroupId, toIndex);
}

// FIXME: return type and type of idItemFrom and idGroupTo?
LRESULT ListView_MoveItemToGroup(HWND hwnd, WPARAM idItemFrom,
	  LPARAM idGroupTo) {
	return SendMessage(hwnd, LVM_MOVEITEMTOGROUP, idItemFrom, idGroupTo);
}

BOOL ListView_RedrawItems(HWND hwndLV, int iFirst, int iLast) {
	return SendMessage(hwndLV, LVM_REDRAWITEMS, iFirst, iLast);
}

// FIXME: return type?
LRESULT ListView_RemoveAllGroups(HWND hwnd) {
	return SendMessage(hwnd, LVM_REMOVEALLGROUPS, 0, 0);
}

// FIXME: return type and type of iGroupId?
LRESULT ListView_RemoveGroup(HWND hwnd, WPARAM iGroupId) {
	return SendMessage(hwnd, LVM_REMOVEGROUP, iGroupId, 0);
}

BOOL ListView_Scroll(HWND hwndLV, int dx, int dy) {
	return SendMessage(hwndLV, LVM_SCROLL, dx, dy);
}

BOOL ListView_SetBkColor(HWND hwnd, COLORREF clrBk) {
	return SendMessage(hwnd, LVM_SETBKCOLOR, 0, clrBk);
}

BOOL ListView_SetBkImage(HWND hwnd, LVBKIMAGE* plvbki) {
	return SendMessage(hwnd, LVM_SETBKIMAGE, 0, cast(LPARAM) plvbki);
}

BOOL ListView_SetCallbackMask(HWND hwnd, UINT mask) {
	return SendMessage(hwnd, LVM_SETCALLBACKMASK, mask, 0);
}

BOOL ListView_SetCheckState(HWND hwndLV, int i, BOOL fCheck) {
	return ListView_SetItemState(hwndLV, i,
	  INDEXTOSTATEIMAGEMASK(fCheck ? 2 : 1), LVIS_STATEIMAGEMASK);
}

BOOL ListView_SetColumn(HWND hwnd, int iCol, LV_COLUMN* pcol) {
	return SendMessage(hwnd, LVM_SETCOLUMN, iCol, cast(LPARAM) pcol);
}

BOOL ListView_SetColumnOrderArray(HWND hwnd, WPARAM iCount, int* pi) {
	return SendMessage(hwnd, LVM_SETCOLUMNORDERARRAY, iCount,
	  cast(LPARAM) pi);
}

BOOL ListView_SetColumnWidth(HWND hwnd, int iCol, int cx) {
	return SendMessage(hwnd, LVM_SETCOLUMNWIDTH, iCol,
	  MAKELPARAM(cast(ushort) cx, 0));
}

DWORD ListView_SetExtendedListViewStyle(HWND hwndLV, DWORD dw) {
	return SendMessage(hwndLV, LVM_SETEXTENDEDLISTVIEWSTYLE, 0, dw);
}

DWORD ListView_SetExtendedListViewStyleEx(HWND hwndLV, DWORD dwMask,
	  DWORD dw) {
	return SendMessage(hwndLV, LVM_SETEXTENDEDLISTVIEWSTYLE, dwMask, dw);
}

// FIXME: return type and type of iGroupId?
LRESULT ListView_SetGroupInfo(HWND hwnd, WPARAM iGroupId, LVGROUP* pgrp) {
	return SendMessage(hwnd, LVM_SETGROUPINFO, iGroupId, cast(LPARAM) pgrp);
}

// FIXME: return type?
LRESULT ListView_SetGroupMetrics(HWND hwnd, LVGROUPMETRICS* pGroupMetrics) {
	return SendMessage(hwnd, LVM_SETGROUPMETRICS, 0,
	  cast(LPARAM) pGroupMetrics);
}

HCURSOR ListView_SetHotCursor(HWND hwnd, HCURSOR hcur) {
	return cast(HCURSOR) SendMessage(hwnd, LVM_SETHOTCURSOR, 0,
	  cast(LPARAM) hcur);
}

int ListView_SetHotItem(HWND hwnd, int i) {
	return SendMessage(hwnd, LVM_SETHOTITEM, i, 0);
}

DWORD ListView_SetHoverTime(HWND hwndLV, DWORD dwHoverTimeMs) {
	return SendMessage(hwndLV, LVM_SETHOVERTIME, 0, dwHoverTimeMs);
}

HIMAGELIST ListView_SetImageList(HWND hwnd, HIMAGELIST himl,
	  int iImageList) {
	return cast(HIMAGELIST) SendMessage(hwnd, LVM_SETIMAGELIST, iImageList,
	  cast(LPARAM) himl);
}

BOOL ListView_SetItem(HWND hwnd, LV_ITEM* pitem) {
	return SendMessage(hwnd, LVM_SETITEM, 0, cast(LPARAM) pitem);
}

DWORD ListView_SetIconSpacing(HWND hwndLV, WORD cx, WORD cy) {
	return SendMessage(hwndLV, LVM_SETICONSPACING, 0, MAKELONG(cx,cy));
}

BOOL ListView_SetInfoTip(HWND hwndLV, NMLVGETINFOTIP* plvInfoTip) {
	return SendMessage(hwndLV, LVM_SETINFOTIP, 0, cast(LPARAM) plvInfoTip);
}

BOOL ListView_SetInsertMark(HWND hwnd, LPARAM lvim) {
	return SendMessage(hwnd, LVM_SETINSERTMARK, 0, lvim);
}

COLORREF ListView_SetInsertMarkColor(HWND hwnd, COLORREF color) {
	return SendMessage(hwnd, LVM_SETINSERTMARKCOLOR, 0, color);
}

void ListView_SetItemCount(HWND hwndLV, int cItems) {
	SendMessage(hwndLV, LVM_SETITEMCOUNT, cItems, 0);
}

// FIXME: return type and type of cItems?
LRESULT ListView_SetItemCountEx(HWND hwndLV, WPARAM cItems, DWORD dwFlags) {
	return SendMessage(hwndLV, LVM_SETITEMCOUNT, cItems, dwFlags);
}

BOOL ListView_SetItemPosition(HWND hwndLV, int i, int x, int y) {
	return SendMessage(hwndLV, LVM_SETITEMPOSITION, i,
	  MAKELPARAM(cast(ushort) x, cast(ushort) y));
}

void ListView_SetItemPosition32(HWND hwndLV, int i, int x0, int y0) {
	POINT ptNewPos;
	ptNewPos.x = x0;
	ptNewPos.y = y0;
	SendMessage(hwndLV, LVM_SETITEMPOSITION32, i, cast(LPARAM) &ptNewPos);
}

BOOL ListView_SetItemState(HWND hwndLV, int i, UINT data, UINT mask) {
	LV_ITEM _ms_lvi;
	_ms_lvi.stateMask = mask;
	_ms_lvi.state = data;
	return SendMessage(hwndLV, LVM_SETITEMSTATE, i, cast(LPARAM) &_ms_lvi);
}

BOOL ListView_SetItemText(HWND hwndLV, int i, int iSubItem_,
	  LPCTSTR pszText_) {
	LV_ITEM _ms_lvi;
	_ms_lvi.iSubItem = iSubItem_;
	_ms_lvi.pszText = pszText_;
	return SendMessage(hwndLV, LVM_SETITEMTEXT, i, cast(LPARAM) &_ms_lvi);
}

COLORREF ListView_SetOutlineColor(HWND hwnd, COLORREF color) {
	return SendMessage(hwnd, LVM_SETOUTLINECOLOR, 0, color);
}

// FIXME: return type?
LRESULT ListView_SetSelectedColumn(HWND hwnd, int iCol) {
	return SendMessage(hwnd, LVM_SETSELECTEDCOLUMN, iCol, 0);
}

int ListView_SetSelectionMark(HWND hwnd, int i) {
	return SendMessage(hwnd, LVM_SETSELECTIONMARK, 0, i);
}

BOOL ListView_SetTextBkColor(HWND hwnd, COLORREF clrTextBk) {
	return SendMessage(hwnd, LVM_SETTEXTBKCOLOR, 0, clrTextBk);
}

BOOL ListView_SetTextColor(HWND hwnd, COLORREF clrText) {
	return SendMessage(hwnd, LVM_SETTEXTCOLOR, 0, clrText);
}

// FIXME: return type?
LRESULT ListView_SetTileInfo(HWND hwnd, LVTILEINFO* pti) {
	return SendMessage(hwnd, LVM_SETTILEINFO, 0, cast(LPARAM) pti);
}

// FIXME: return type?
LRESULT ListView_SetTileViewInfo(HWND hwnd, LVTILEINFO* ptvi) {
	return SendMessage(hwnd, LVM_SETTILEVIEWINFO, 0, cast(LPARAM) ptvi);
}

// FIXME: return type and type of cpWidth?
LRESULT ListView_SetTileWidth(HWND hwnd, WPARAM cpWidth) {
	return SendMessage(hwnd, LVM_SETTILEWIDTH, cpWidth, 0);
}

HWND ListView_SetToolTips(HWND hwndLV, HWND hwndNewHwnd) {
	return cast(HWND) SendMessage(hwndLV, LVM_SETTOOLTIPS,
	  cast(LPARAM) hwndNewHwnd, 0);
}

DWORD ListView_SetView(HWND hwnd, DWORD iView) {
	return SendMessage(hwnd, LVM_SETVIEW, iView, 0);
}

BOOL ListView_SetWorkAreas(HWND hwnd, int nWorkAreas, RECT* prc) {
	return SendMessage(hwnd, LVM_SETWORKAREAS, nWorkAreas, cast(LPARAM) prc);
}

// FIXME: return type and type of _plv
LRESULT ListView_SortGroups(HWND hwnd, PFNLVCOMPARE _pfnGroupCompate,
	  LPARAM _plv) {
	return SendMessage(hwnd, LVM_SORTGROUPS, cast(WPARAM) _pfnGroupCompate,
	  _plv);
}

BOOL ListView_SortItems(HWND hwndLV, PFNLVCOMPARE _pfnCompare,
	  LPARAM _lPrm) {
	return SendMessage(hwndLV, LVM_SORTITEMS, _lPrm,
	  cast(LPARAM) _pfnCompare);
}

BOOL ListView_SortItemsEx(HWND hwndLV, PFNLVCOMPARE _pfnCompare,
	  LPARAM _lPrm) {
	return SendMessage(hwndLV, LVM_SORTITEMSEX, _lPrm,
	  cast(LPARAM) _pfnCompare);
}

int ListView_SubItemHitTest(HWND hwnd, LVHITTESTINFO* plvhti) {
	return SendMessage(hwnd, LVM_SUBITEMHITTEST, 0, cast(LPARAM) plvhti);
}

BOOL ListView_Update(HWND hwndLV, int i) {
	return SendMessage(hwndLV, LVM_UPDATE, i, 0);
}


struct NMLISTVIEW {
	NMHDR hdr;
	int iItem;
	int iSubItem;
	UINT uNewState;
	UINT uOldState;
	UINT uChanged;
	POINT ptAction;
	LPARAM lParam;
}
alias NMLISTVIEW NM_LISTVIEW;
alias NMLISTVIEW* LPNMLISTVIEW, LPNM_LISTVIEW;

struct NMITEMACTIVATE {
	NMHDR hdr;
	int iItem;
	int iSubItem;
	UINT uNewState;
	UINT uOldState;
	UINT uChanged;
	POINT ptAction;
	LPARAM lParam;
	UINT uKeyFlags;
}
alias NMITEMACTIVATE* LPNMITEMACTIVATE;

enum : uint {
	LVKF_ALT     = 0x0001,
	LVKF_CONTROL = 0x0002,
	LVKF_SHIFT   = 0x0004
}

struct NMLVCUSTOMDRAW {
	NMCUSTOMDRAW nmcd;
	COLORREF clrText;
	COLORREF clrTextBk;
	int iSubItem;
	DWORD dwItemType;
	COLORREF clrFace;
	int iIconEffect;
	int iIconPhase;
	int iPartId;
	int iStateId;
	RECT rcText;
	UINT uAlign;
}
alias NMLVCUSTOMDRAW* LPNMLVCUSTOMDRAW;

enum : size_t { NMLVCUSTOMDRAW_V3_SIZE = NMLVCUSTOMDRAW.iSubItem.offsetof }

enum : uint {
	LVCDI_ITEM          = 0x00000000,
	LVCDI_GROUP         = 0x00000001,
}

enum : uint {
	LVCDRF_NOSELECT     = 0x00010000,
	LVCDRF_NOGROUPFRAME = 0x00020000
}

struct NMLVCACHEHINT {
	NMHDR hdr;
	int iFrom;
	int iTo;
}
alias NMLVCACHEHINT NM_CACHEHINT;
alias NMLVCACHEHINT* LPNMLVCACHEHINT, LPNM_CACHEHINT, PNM_CACHEHINT;

struct NMLVFINDITEMA {
	NMHDR hdr;
	int iStart;
	LVFINDINFOA lvfi;
}
alias NMLVFINDITEMA NM_FINDITEMA;
alias NMLVFINDITEMA* LPNMLVFINDITEMA, PNM_FINDITEMA, LPNM_FINDITEMA;

struct NMLVFINDITEMW {
	NMHDR hdr;
	int iStart;
	LVFINDINFOW lvfi;
}
alias NMLVFINDITEMW NM_FINDITEMW;
alias NMLVFINDITEMW* LPNMLVFINDITEMW, PNM_FINDITEMW, LPNM_FINDITEMW;

struct NMLVODSTATECHANGE {
	NMHDR hdr;
	int iFrom;
	int iTo;
	UINT uNewState;
	UINT uOldState;
}
alias NMLVODSTATECHANGE NM_ODSTATECHANGE;
alias NMLVODSTATECHANGE* LPNMLVODSTATECHANGE, PNM_ODSTATECHANGE,
  LPNM_ODSTATECHANGE;

enum : uint {
	LVN_ITEMCHANGING    = LVN_FIRST,
	LVN_ITEMCHANGED     = LVN_FIRST -  1,
	LVN_INSERTITEM      = LVN_FIRST -  2,
	LVN_DELETEITEM      = LVN_FIRST -  3,
	LVN_DELETEALLITEMS  = LVN_FIRST -  4,
	LVN_BEGINLABELEDITA = LVN_FIRST -  5,
	LVN_BEGINLABELEDITW = LVN_FIRST - 75,
	LVN_ENDLABELEDITA   = LVN_FIRST -  6,
	LVN_ENDLABELEDITW   = LVN_FIRST - 76,
	LVN_COLUMNCLICK     = LVN_FIRST -  8,
	LVN_BEGINDRAG       = LVN_FIRST -  9,
	LVN_BEGINRDRAG      = LVN_FIRST - 11,
	LVN_ODCACHEHINT     = LVN_FIRST - 13,
	LVN_ITEMACTIVATE    = LVN_FIRST - 14,
	LVN_ODSTATECHANGED  = LVN_FIRST - 15,
	LVN_HOTTRACK        = LVN_FIRST - 21,
	LVN_GETDISPINFOA    = LVN_FIRST - 50,
	LVN_GETDISPINFOW    = LVN_FIRST - 77,
	LVN_SETDISPINFOA    = LVN_FIRST - 51,
	LVN_SETDISPINFOW    = LVN_FIRST - 78,
	LVN_ODFINDITEMA     = LVN_FIRST - 52,
	LVN_ODFINDITEMW     = LVN_FIRST - 79,
	LVN_KEYDOWN         = LVN_FIRST - 55,
	LVN_MARQUEEBEGIN    = LVN_FIRST - 56,
	LVN_GETINFOTIPA     = LVN_FIRST - 57,
	LVN_GETINFOTIPW     = LVN_FIRST - 58,
	LVN_BEGINSCROLL     = LVN_FIRST - 80,
	LVN_ENDSCROLL       = LVN_FIRST - 81
}

struct NMLVDISPINFOA {
	NMHDR hdr;
	LVITEMA item;
}
alias NMLVDISPINFOA LV_DISPINFOA;
alias NMLVDISPINFOA* LPNMLVDISPINFOA;

struct NMLVDISPINFOW {
	NMHDR hdr;
	LVITEMW item;
}
alias NMLVDISPINFOW LV_DISPINFOW;
alias NMLVDISPINFOW* LPNMLVDISPINFOW;

align(1):

struct NMLVKEYDOWN {
	NMHDR hdr;
	WORD wVKey;
	UINT flags;
}
alias NMLVKEYDOWN LV_KEYDOWN;
alias NMLVKEYDOWN* LPNMLVKEYDOWN;

align:

struct NMLVGETINFOTIPA {
	NMHDR hdr;
	DWORD dwFlags;
	LPSTR pszText;
	int cchTextMax;
	int iItem;
	int iSubItem;
	LPARAM lParam;
}
alias NMLVGETINFOTIPA* LPNMLVGETINFOTIPA;

struct NMLVGETINFOTIPW {
	NMHDR hdr;
	DWORD dwFlags;
	LPWSTR pszText;
	int cchTextMax;
	int iItem;
	int iSubItem;
	LPARAM lParam;
}
alias NMLVGETINFOTIPW* LPNMLVGETINFOTIPW;

enum : uint { LVGIT_UNFOLDED = 0x0001 }

struct NMLVSCROLL {
	NMHDR hdr;
	int dx;
	int dy;
}
alias NMLVSCROLL* LPNMLVSCROLL;

version (Unicode) {
	alias LVITEMW LVITEM, LV_ITEM;
	alias LPLVITEMW LPLVITEM;
	alias LVM_GETITEMW LVM_GETITEM;
	alias LVM_SETITEMW LVM_SETITEM;
	alias LVM_INSERTITEMW LVM_INSERTITEM;
	alias LVFINDINFOW LVFINDINFO, LV_FINDINFO;
	alias LVM_FINDITEMW LVM_FINDITEM;
	alias LVM_GETSTRINGWIDTHW LVM_GETSTRINGWIDTH;
	alias LVM_EDITLABELW LVM_EDITLABEL;
	alias LVCOLUMNW LVCOLUMN, LV_COLUMN;
	alias LPLVCOLUMNW LPLVCOLUMN;
	alias LVM_GETCOLUMNW LVM_GETCOLUMN;
	alias LVM_SETCOLUMNW LVM_SETCOLUMN;
	alias LVM_INSERTCOLUMNW LVM_INSERTCOLUMN;
	alias LVM_GETITEMTEXTW LVM_GETITEMTEXT;
	alias LVM_SETITEMTEXTW LVM_SETITEMTEXT;
	alias LVM_GETISEARCHSTRINGW LVM_GETISEARCHSTRING;
	alias LVBKIMAGEW LVBKIMAGE;
	alias LPLVBKIMAGEW LPLVBKIMAGE;
	alias LVM_SETBKIMAGEW LVM_SETBKIMAGE;
	alias LVM_GETBKIMAGEW LVM_GETBKIMAGE;
	alias NMLVFINDITEMW NM_FINDITEM, NMLVFINDITEM;
	alias NMLVFINDITEMW* PNM_FINDITEM, LPNM_FINDITEM, LPNMLVFINDITEM;
	alias LVN_ODFINDITEMW LVN_ODFINDITEM;
	alias LVN_BEGINLABELEDITW LVN_BEGINLABELEDIT;
	alias LVN_ENDLABELEDITW LVN_ENDLABELEDIT;
	alias LVN_GETDISPINFOW LVN_GETDISPINFO;
	alias LVN_SETDISPINFOW LVN_SETDISPINFO;
	alias NMLVDISPINFOW NMLVDISPINFO, LV_DISPINFO;
	alias LVN_GETINFOTIPW LVN_GETINFOTIP;
	alias NMLVGETINFOTIPW NMLVGETINFOTIP;
	alias LPNMLVGETINFOTIPW LPNMLVGETINFOTIP;
} else {
	alias LVITEMA LVITEM, LV_ITEM;
	alias LPLVITEMA LPLVITEM;
	alias LVM_GETITEMA LVM_GETITEM;
	alias LVM_SETITEMA LVM_SETITEM;
	alias LVM_INSERTITEMA LVM_INSERTITEM;
	alias LVFINDINFOA LVFINDINFO, LV_FINDINFO;
	alias LVM_FINDITEMA LVM_FINDITEM;
	alias LVM_GETSTRINGWIDTHA LVM_GETSTRINGWIDTH;
	alias LVM_EDITLABELA LVM_EDITLABEL;
	alias LVCOLUMNA LVCOLUMN, LV_COLUMN;
	alias LPLVCOLUMNA LPLVCOLUMN;
	alias LVM_GETCOLUMNA LVM_GETCOLUMN;
	alias LVM_SETCOLUMNA LVM_SETCOLUMN;
	alias LVM_INSERTCOLUMNA LVM_INSERTCOLUMN;
	alias LVM_GETITEMTEXTA LVM_GETITEMTEXT;
	alias LVM_SETITEMTEXTA LVM_SETITEMTEXT;
	alias LVM_GETISEARCHSTRINGA LVM_GETISEARCHSTRING;
	alias LVBKIMAGEA LVBKIMAGE;
	alias LPLVBKIMAGEA LPLVBKIMAGE;
	alias LVM_SETBKIMAGEA LVM_SETBKIMAGE;
	alias LVM_GETBKIMAGEA LVM_GETBKIMAGE;
	alias NMLVFINDITEMA NM_FINDITEM, NMLVFINDITEM;
	alias LPNMLVFINDITEMA PNM_FINDITEM, LPNM_FINDITEM, LPNMLVFINDITEM;
	alias LVN_ODFINDITEMA LVN_ODFINDITEM;
	alias LVN_BEGINLABELEDITA LVN_BEGINLABELEDIT;
	alias LVN_ENDLABELEDITA LVN_ENDLABELEDIT;
	alias LVN_GETDISPINFOA LVN_GETDISPINFO;
	alias LVN_SETDISPINFOA LVN_SETDISPINFO;
	alias NMLVDISPINFOA NMLVDISPINFO, LV_DISPINFO;
	alias LVN_GETINFOTIPA LVN_GETINFOTIP;
	alias NMLVGETINFOTIPA NMLVGETINFOTIP;
	alias LPNMLVGETINFOTIPA LPNMLVGETINFOTIP;
}


// Tree view
// ---------
const TCHAR[] WC_TREEVIEW = "SysTreeView32";

enum : uint {
	TVS_HASBUTTONS      = 0x0001,
	TVS_HASLINES        = 0x0002,
	TVS_LINESATROOT     = 0x0004,
	TVS_EDITLABELS      = 0x0008,
	TVS_DISABLEDRAGDROP = 0x0010,
	TVS_SHOWSELALWAYS   = 0x0020,
	TVS_RTLREADING      = 0x0040,

	TVS_NOTOOLTIPS      = 0x0080,
	TVS_CHECKBOXES      = 0x0100,
	TVS_TRACKSELECT     = 0x0200,
	TVS_SINGLEEXPAND    = 0x0400,
	TVS_INFOTIP         = 0x0800,
	TVS_FULLROWSELECT   = 0x1000,
	TVS_NOSCROLL        = 0x2000,
	TVS_NONEVENHEIGHT   = 0x4000,
	TVS_NOHSCROLL       = 0x8000
}

alias HANDLE HTREEITEM;

enum : uint {
	TVIF_TEXT           = 0x0001,
	TVIF_IMAGE          = 0x0002,
	TVIF_PARAM          = 0x0004,
	TVIF_STATE          = 0x0008,
	TVIF_HANDLE         = 0x0010,
	TVIF_SELECTEDIMAGE  = 0x0020,
	TVIF_CHILDREN       = 0x0040,
	TVIF_INTEGRAL       = 0x0080,
	TVIF_DI_SETITEM     = 0x1000
}

enum : uint {
	TVIS_SELECTED       = 0x0002,
	TVIS_CUT            = 0x0004,
	TVIS_DROPHILITED    = 0x0008,
	TVIS_BOLD           = 0x0010,
	TVIS_EXPANDED       = 0x0020,
	TVIS_EXPANDEDONCE   = 0x0040,
	TVIS_EXPANDPARTIAL  = 0x0080,

	TVIS_OVERLAYMASK    = 0x0F00,
	TVIS_STATEIMAGEMASK = 0xF000,
	TVIS_USERMASK       = 0xF000
}

enum { I_CHILDRENCALLBACK = -1 }

struct TVITEMA {
	UINT mask;
	HTREEITEM hItem;
	UINT state;
	UINT stateMask;
	LPSTR pszText;
	int cchTextMax;
	int iImage;
	int iSelectedImage;
	int cChildren;
	LPARAM lParam;
}
alias TVITEMA TV_ITEMA;
alias TVITEMA* LPTVITEMA;

struct TVITEMW {
	UINT mask;
	HTREEITEM hItem;
	UINT state;
	UINT stateMask;
	LPWSTR pszText;
	int cchTextMax;
	int iImage;
	int iSelectedImage;
	int cChildren;
	LPARAM lParam;
}
alias TVITEMW TV_ITEMW;
alias TVITEMW* LPTVITEMW, LPTV_ITEMW;

struct TVITEMEXA {
	UINT mask;
	HTREEITEM hItem;
	UINT state;
	UINT stateMask;
	LPSTR pszText;
	int cchTextMax;
	int iImage;
	int iSelectedImage;
	int cChildren;
	LPARAM lParam;
	int iIntegral;
}
alias TVITEMEXA* LPTVITEMEXA;

struct TVITEMEXW {
	UINT mask;
	HTREEITEM hItem;
	UINT state;
	UINT stateMask;
	LPWSTR pszText;
	int cchTextMax;
	int iImage;
	int iSelectedImage;
	int cChildren;
	LPARAM lParam;
	int iIntegral;
}
alias TVITEMEXW* LPTVITEMEXW;

const HTREEITEM TVI_ROOT = cast(HTREEITEM)(-0x10000);
const HTREEITEM TVI_FIRST = cast(HTREEITEM)(-0x0FFFF);
const HTREEITEM TVI_LAST = cast(HTREEITEM)(-0x0FFFE);
const HTREEITEM TVI_SORT = cast(HTREEITEM)(-0x0FFFD);

alias LPTVINSERTSTRUCTA LPTV_INSERTSTRUCTA;
alias LPTVINSERTSTRUCTW LPTV_INSERTSTRUCTW;
alias TVINSERTSTRUCTA TV_INSERTSTRUCTA;
alias TVINSERTSTRUCTW TV_INSERTSTRUCTW;

alias TVINSERTSTRUCT TV_INSERTSTRUCT;
alias LPTVINSERTSTRUCT LPTV_INSERTSTRUCT;

struct TVINSERTSTRUCTA {
	HTREEITEM hParent;
	HTREEITEM hInsertAfter;
	union {
		TVITEMEXA itemex;
		TV_ITEMA item;
	}
}
alias TVINSERTSTRUCTA* LPTVINSERTSTRUCTA;

struct TVINSERTSTRUCTW {
	HTREEITEM hParent;
	HTREEITEM hInsertAfter;
	union {
		TVITEMEXW itemex;
		TV_ITEMW item;
	}
}
alias TVINSERTSTRUCTW* LPTVINSERTSTRUCTW;

enum : size_t {
	TVINSERTSTRUCTA_V1_SIZE = TVINSERTSTRUCTA.sizeof,
	TVINSERTSTRUCTW_V1_SIZE = TVINSERTSTRUCTW.sizeof
}

enum : uint {
	TVM_INSERTITEMA         = TV_FIRST + 0,
	TVM_INSERTITEMW         = TV_FIRST + 50,
	TVM_DELETEITEM          = TV_FIRST + 1,
	TVM_EXPAND              = TV_FIRST + 2,
	TVM_GETITEMRECT         = TV_FIRST + 4,
	TVM_GETCOUNT            = TV_FIRST + 5,
	TVM_GETINDENT           = TV_FIRST + 6,
	TVM_SETINDENT           = TV_FIRST + 7,
	TVM_GETIMAGELIST        = TV_FIRST + 8,
	TVM_SETIMAGELIST        = TV_FIRST + 9,
	TVM_GETNEXTITEM         = TV_FIRST + 10,
	TVM_SELECTITEM          = TV_FIRST + 11,
	TVM_GETITEMA            = TV_FIRST + 12,
	TVM_GETITEMW            = TV_FIRST + 62,
	TVM_SETITEMA            = TV_FIRST + 13,
	TVM_SETITEMW            = TV_FIRST + 63,
	TVM_EDITLABELA          = TV_FIRST + 14,
	TVM_EDITLABELW          = TV_FIRST + 65,
	TVM_GETEDITCONTROL      = TV_FIRST + 15,
	TVM_GETVISIBLECOUNT     = TV_FIRST + 16,
	TVM_HITTEST             = TV_FIRST + 17,
	TVM_CREATEDRAGIMAGE     = TV_FIRST + 18,
	TVM_SORTCHILDREN        = TV_FIRST + 19,
	TVM_ENSUREVISIBLE       = TV_FIRST + 20,
	TVM_SORTCHILDRENCB      = TV_FIRST + 21,
	TVM_ENDEDITLABELNOW     = TV_FIRST + 22,
	TVM_GETISEARCHSTRINGA   = TV_FIRST + 23,
	TVM_GETISEARCHSTRINGW   = TV_FIRST + 64,
	TVM_SETTOOLTIPS         = TV_FIRST + 24,
	TVM_GETTOOLTIPS         = TV_FIRST + 25,
	TVM_SETINSERTMARK       = TV_FIRST + 26,
	TVM_SETITEMHEIGHT       = TV_FIRST + 27,
	TVM_GETITEMHEIGHT       = TV_FIRST + 28,
	TVM_SETBKCOLOR          = TV_FIRST + 29,
	TVM_SETTEXTCOLOR        = TV_FIRST + 30,
	TVM_GETBKCOLOR          = TV_FIRST + 31,
	TVM_GETTEXTCOLOR        = TV_FIRST + 32,
	TVM_SETSCROLLTIME       = TV_FIRST + 33,
	TVM_GETSCROLLTIME       = TV_FIRST + 34,
	TVM_SETINSERTMARKCOLOR  = TV_FIRST + 37,
	TVM_GETINSERTMARKCOLOR  = TV_FIRST + 38,
	TVM_GETITEMSTATE        = TV_FIRST + 39,
	TVM_SETLINECOLOR        = TV_FIRST + 40,
	TVM_GETLINECOLOR        = TV_FIRST + 41,
	TVM_MAPACCIDTOHTREEITEM = TV_FIRST + 42,
	TVM_MAPHTREEITEMTOACCID = TV_FIRST + 43,
	TVM_SETUNICODEFORMAT    = CCM_SETUNICODEFORMAT,
	TVM_GETUNICODEFORMAT    = CCM_GETUNICODEFORMAT
}

enum : uint {
	TVE_COLLAPSE      = 0x0001,
	TVE_EXPAND        = 0x0002,
	TVE_TOGGLE        = 0x0003,
	TVE_EXPANDPARTIAL = 0x4000,
	TVE_COLLAPSERESET = 0x8000
}

enum : uint {
	TVSIL_NORMAL = 0,
	TVSIL_STATE  = 2
}

enum : uint {
	TVGN_ROOT            = 0x0000,
	TVGN_NEXT            = 0x0001,
	TVGN_PREVIOUS        = 0x0002,
	TVGN_PARENT          = 0x0003,
	TVGN_CHILD           = 0x0004,
	TVGN_FIRSTVISIBLE    = 0x0005,
	TVGN_NEXTVISIBLE     = 0x0006,
	TVGN_PREVIOUSVISIBLE = 0x0007,
	TVGN_DROPHILITE      = 0x0008,
	TVGN_CARET           = 0x0009,
	TVGN_LASTVISIBLE     = 0x000A
}

enum : uint { TVSI_NOSINGLEEXPAND = 0x8000 }

struct TVHITTESTINFO {
	POINT pt;
	UINT flags;
	HTREEITEM hItem;
}
alias TVHITTESTINFO TV_HITTESTINFO;
alias TVHITTESTINFO* LPTVHITTESTINFO, LPTV_HITTESTINFO;

enum : uint {
	TVHT_NOWHERE         = 0x0001,
	TVHT_ONITEMICON      = 0x0002,
	TVHT_ONITEMLABEL     = 0x0004,
	TVHT_ONITEMINDENT    = 0x0008,
	TVHT_ONITEMBUTTON    = 0x0010,
	TVHT_ONITEMRIGHT     = 0x0020,
	TVHT_ONITEMSTATEICON = 0x0040,
	TVHT_ONITEM          = TVHT_ONITEMICON | TVHT_ONITEMLABEL
	  | TVHT_ONITEMSTATEICON
}

enum : uint {
	TVHT_ABOVE   = 0x0100,
	TVHT_BELOW   = 0x0200,
	TVHT_TORIGHT = 0x0400,
	TVHT_TOLEFT  = 0x0800
}

HIMAGELIST TreeView_CreateDragImage(HWND hwnd, HTREEITEM hitem) {
	return cast(HTREEITEM) SendMessage(hwnd, TVM_CREATEDRAGIMAGE, 0,
	  cast(LPARAM) hitem);
}

BOOL TreeView_DeleteAllItems(HWND hwnd) {
	return SendMessage(hwnd, TVM_DELETEITEM, 0, cast(LPARAM) TVI_ROOT);
}

BOOL TreeView_DeleteItem(HWND hwnd, HTREEITEM hitem) {
	return SendMessage(hwnd, TVM_DELETEITEM, 0, cast(LPARAM) hitem);
}

HWND TreeView_EditLabel(HWND hwnd, HTREEITEM hitem) {
	return cast(HWND) SendMessage(hwnd, TVM_EDITLABEL, 0,
	  cast(LPARAM) hitem);
}

BOOL TreeView_EndEditLabelNow(HWND hwnd, BOOL fCancel) {
	return SendMessage(hwnd, TVM_ENDEDITLABELNOW, fCancel, 0);
}

BOOL TreeView_EnsureVisible(HWND hwnd, HTREEITEM hitem) {
	return SendMessage(hwnd, TVM_ENSUREVISIBLE, 0, cast(LPARAM) hitem);
}

BOOL TreeView_Expand(HWND hwnd, HTREEITEM hitem, uint code) {
	return SendMessage(hwnd, TVM_EXPAND, code, cast(LPARAM) hitem);
}

COLORREF TreeView_GetBkColor(HWND hwnd) {
	return SendMessage(hwnd, TVM_GETBKCOLOR, 0, 0);
}

// FIXME: return type?
LRESULT TreeView_GetCheckState(HWND hwndTV, HTREEITEM hti) {
	return ((cast(UINT) SendMessage(hwndTV, TVM_GETITEMSTATE,
	  cast(WPARAM) hti, TVIS_STATEIMAGEMASK)) >> 12) - 1;
}

HTREEITEM TreeView_GetChild(HWND hwnd, HTREEITEM hitem) {
	return TreeView_GetNextItem(hwnd, hitem, TVGN_CHILD);
}

UINT TreeView_GetCount(HWND hwnd) {
	return SendMessage(hwnd, TVM_GETCOUNT, 0, 0);
}

HTREEITEM TreeView_GetDropHilight(HWND hwnd) {
	return TreeView_GetNextItem(hwnd, null, TVGN_DROPHILITE);
}

HWND TreeView_GetEditControl(HWND hwnd) {
	return cast(HWND) SendMessage(hwnd, TVM_GETEDITCONTROL, 0, 0);
}

HTREEITEM TreeView_GetFirstVisible(HWND hwnd) {
	return TreeView_GetNextItem(hwnd, null, TVGN_FIRSTVISIBLE);
}

BOOL TreeView_GetISearchString(HWND hwndTV, LPTSTR lpsz) {
	return SendMessage(hwndTV, TVM_GETISEARCHSTRING, 0, cast(LPARAM) lpsz);
}

HIMAGELIST TreeView_GetImageList(HWND hwnd, uint iImage) {
	return cast(HIMAGELIST) SendMessage(hwnd, TVM_GETIMAGELIST, iImage, 0);
}

UINT TreeView_GetIndent(HWND hwnd) {
	return SendMessage(hwnd, TVM_GETINDENT, 0, 0);
}

COLORREF TreeView_GetInsertMarkColor(HWND hwnd) {
	return SendMessage(hwnd, TVM_GETINSERTMARKCOLOR, 0, 0);
}

BOOL TreeView_GetItem(HWND hwnd, TV_ITEM* pitem) {
	return SendMessage(hwnd, TVM_GETITEM, 0, cast(LPARAM) pitem);
}

int TreeView_GetItemHeight(HWND hwnd) {
	return SendMessage(hwnd, TVM_GETITEMHEIGHT, 0, 0);
}

BOOL TreeView_GetItemRect(HWND hwnd, HTREEITEM hitem, RECT* prc,
	  BOOL fItemRect) {
	*cast(HTREEITEM*) prc = hitem;
	return SendMessage(hwnd, TVM_GETITEMRECT, fItemRect, cast(LPARAM) prc);
}

UINT TreeView_GetItemState(HWND hwndTV, HTREEITEM hti, UINT mask) {
	return SendMessage(hwndTV, TVM_GETITEMSTATE, cast(WPARAM) hti, mask);
}

HTREEITEM TreeView_GetLastVisible(HWND hwnd) {
	return TreeView_GetNextItem(hwnd, null, TVGN_LASTVISIBLE);
}

COLORREF TreeView_GetLineColor(HWND hwnd) {
	return SendMessage(hwnd, TVM_GETLINECOLOR, 0, 0);
}

HTREEITEM TreeView_GetNextItem(HWND hwnd, HTREEITEM hitem, UINT code) {
	return cast(HTREEITEM) SendMessage(hwnd, TVM_GETNEXTITEM, code,
	  cast(LPARAM) hitem);
}

HTREEITEM TreeView_GetNextSibling(HWND hwnd, HTREEITEM hitem) {
	return TreeView_GetNextItem(hwnd, hitem, TVGN_NEXT);
}

HTREEITEM TreeView_GetNextVisible(HWND hwnd, HTREEITEM hitem) {
	return TreeView_GetNextItem(hwnd, hitem, TVGN_NEXTVISIBLE);
}

HTREEITEM TreeView_GetParent(HWND hwnd, HTREEITEM hitem) {
	return TreeView_GetNextItem(hwnd, hitem, TVGN_PARENT);
}

HTREEITEM TreeView_GetPrevSibling(HWND hwnd, HTREEITEM hitem) {
	return TreeView_GetNextItem(hwnd, hitem, TVGN_PREVIOUS);
}

HTREEITEM TreeView_GetPrevVisible(HWND hwnd, HTREEITEM hitem) {
	return TreeView_GetNextItem(hwnd, hitem, TVGN_PREVIOUSVISIBLE);
}

HTREEITEM TreeView_GetRoot(HWND hwnd) {
	return TreeView_GetNextItem(hwnd, null, TVGN_ROOT);
}

UINT TreeView_GetScrollTime(HWND hwnd) {
	return SendMessage(hwnd, TVM_GETSCROLLTIME, 0, 0);
}

HTREEITEM TreeView_GetSelection(HWND hwnd) {
	return TreeView_GetNextItem(hwnd, null, TVGN_CARET);
}

COLORREF TreeView_GetTextColor(HWND hwnd) {
	return SendMessage(hwnd, TVM_GETTEXTCOLOR, 0, 0);
}

HWND TreeView_GetToolTips(HWND hwnd) {
	return cast(HWND) SendMessage(hwnd, TVM_GETTOOLTIPS, 0, 0);
}

BOOL TreeView_GetUnicodeFormat(HWND hwnd) {
	return SendMessage(hwnd, TVM_GETUNICODEFORMAT, 0, 0);
}

UINT TreeView_GetVisibleCount(HWND hwnd) {
	return SendMessage(hwnd, TVM_GETVISIBLECOUNT, 0, 0);
}

HTREEITEM TreeView_HitTest(HWND hwnd, TV_HITTESTINFO* lpht) {
	return cast(HTREEITEM) SendMessage(hwnd, TVM_HITTEST, 0,
	  cast(LPARAM) lpht);
}

HTREEITEM TreeView_InsertItem(HWND hwnd, TV_INSERTSTRUCT* lpis) {
	return cast(HTREEITEM) SendMessage(hwnd, TVM_INSERTITEM, 0,
	  cast(LPARAM) lpis);
}

HTREEITEM TreeView_MapAccIDToHTREEITEM(HWND hwnd, UINT id) {
	return cast(HTREEITEM) SendMessage(hwnd, TVM_MAPACCIDTOHTREEITEM, id, 0);
}

UINT TreeView_MapHTREEITEMToAccID(HWND hwnd, HTREEITEM htreeitem) {
	return SendMessage(hwnd, TVM_MAPHTREEITEMTOACCID,
	  cast(WPARAM) htreeitem, 0);
}

BOOL TreeView_Select(HWND hwnd, HTREEITEM hitem, UINT code) {
	return SendMessage(hwnd, TVM_SELECTITEM, code, cast(LPARAM) hitem);
}

BOOL TreeView_SelectDropTarget(HWND hwnd, HTREEITEM hitem) {
	return TreeView_Select(hwnd, hitem, TVGN_DROPHILITE);
}

BOOL TreeView_SelectItem(HWND hwnd, HTREEITEM hitem) {
	return TreeView_Select(hwnd, hitem, TVGN_CARET);
}

BOOL TreeView_SelectSetFirstVisible(HWND hwnd, HTREEITEM hitem) {
	return TreeView_Select(hwnd, hitem, TVGN_FIRSTVISIBLE);
}

COLORREF TreeView_SetBkColor(HWND hwnd, COLORREF clr) {
	return SendMessage(hwnd, TVM_SETBKCOLOR, 0, clr);
}

BOOL TreeView_SetCheckState(HWND hwndTV, HTREEITEM hti, BOOL fCheck) {
	return TreeView_SetItemState(hwndTV, hti,
	  INDEXTOSTATEIMAGEMASK(fCheck ? 2 : 1), TVIS_STATEIMAGEMASK);
}

HIMAGELIST TreeView_SetImageList(HWND hwnd, HIMAGELIST himl, uint iImage) {
	return cast(HIMAGELIST) SendMessage(hwnd, TVM_SETIMAGELIST, iImage,
	  cast(LPARAM) himl);
}

BOOL TreeView_SetIndent(HWND hwnd, UINT indent) {
	return SendMessage(hwnd, TVM_SETINDENT, indent, 0);
}

BOOL TreeView_SetInsertMark(HWND hwnd, HTREEITEM hItem, BOOL fAfter) {
	return SendMessage(hwnd, TVM_SETINSERTMARK, fAfter, cast(LPARAM) hItem);
}

COLORREF TreeView_SetInsertMarkColor(HWND hwnd, COLORREF clr) {
	return SendMessage(hwnd, TVM_SETINSERTMARKCOLOR, 0, clr);
}

BOOL TreeView_SetItem(HWND hwnd, TV_ITEM* pitem) {
	return SendMessage(hwnd, TVM_SETITEM, 0, cast(LPARAM) pitem);
}

int TreeView_SetItemHeight(HWND hwnd, int iHeight) {
	return SendMessage(hwnd, TVM_SETITEMHEIGHT, iHeight, 0);
}

BOOL TreeView_SetItemState(HWND hwndTV, HTREEITEM hti, UINT data,
	  UINT _mask) {
	TVITEM _ms_TVi;
	_ms_TVi.mask = TVIF_STATE;
	_ms_TVi.hItem = hti;
	_ms_TVi.stateMask = _mask;
	_ms_TVi.state = data;
	return -SendMessage(hwndTV, TVM_SETITEM, 0, cast(LPARAM) &_ms_TVi);
}

COLORREF TreeView_SetLineColor(HWND hwnd, COLORREF clr) {
	return SendMessage(hwnd, TVM_SETLINECOLOR, 0, clr);
}

UINT TreeView_SetScrollTime(HWND hwnd, UINT uTime) {
	return SendMessage(hwnd, TVM_SETSCROLLTIME, uTime, 0);
}

COLORREF TreeView_SetTextColor(HWND hwnd, COLORREF clr) {
	return SendMessage(hwnd, TVM_SETTEXTCOLOR, 0, clr);
}

HWND TreeView_SetToolTips(HWND hwnd, HWND hwndTT) {
	return cast(HWND) SendMessage(hwnd, TVM_SETTOOLTIPS,
	  cast(WPARAM) hwndTT, 0);
}

BOOL TreeView_SetUnicodeFormat(HWND hwnd, BOOL fUnicode) {
	return SendMessage(hwnd, TVM_SETUNICODEFORMAT, fUnicode, 0);
}

// FIXME: type of recurse (still reserved?)
BOOL TreeView_SortChildren(HWND hwnd, HTREEITEM hitem, WPARAM recurse) {
	return SendMessage(hwnd, TVM_SORTCHILDREN, recurse,
	  cast(LPARAM) hitem);
}

// FIXME: type of recurse (still reserved?)
BOOL TreeView_SortChildrenCB(HWND hwnd, TV_SORTCB* psort, WPARAM recurse) {
	return SendMessage(hwnd, TVM_SORTCHILDRENCB, cast(WPARAM) recurse,
	  cast(LPARAM) psort);
}

extern(Windows) alias int function(LPARAM lParam1, LPARAM lParam2,
  LPARAM lParamSort) PFNTVCOMPARE;

struct TVSORTCB {
	HTREEITEM hParent;
	PFNTVCOMPARE lpfnCompare;
	LPARAM lParam;
}
alias TVSORTCB TV_SORTCB;
alias TVSORTCB* LPTVSORTCB, LPTV_SORTCB;

struct NMTREEVIEWA {
	NMHDR hdr;
	UINT action;
	TVITEMA itemOld;
	TVITEMA itemNew;
	POINT ptDrag;
}
alias NMTREEVIEWA NM_TREEVIEWA;
alias NMTREEVIEWA* LPNMTREEVIEWA, LPNM_TREEVIEWA;

struct NMTREEVIEWW {
	NMHDR hdr;
	UINT action;
	TVITEMW itemOld;
	TVITEMW itemNew;
	POINT ptDrag;
}
alias NMTREEVIEWW NM_TREEVIEWW;
alias NMTREEVIEWW* LPNMTREEVIEWW, LPNM_TREEVIEWW;

enum : uint {
	TVN_SELCHANGINGA    = TVN_FIRST - 1,
	TVN_SELCHANGINGW    = TVN_FIRST - 50,
	TVN_SELCHANGEDA     = TVN_FIRST - 2,
	TVN_SELCHANGEDW     = TVN_FIRST - 51,

	TVN_GETDISPINFOA    = TVN_FIRST - 3,
	TVN_GETDISPINFOW    = TVN_FIRST - 52,
	TVN_SETDISPINFOA    = TVN_FIRST - 4,
	TVN_SETDISPINFOW    = TVN_FIRST - 53,

	TVN_ITEMEXPANDINGA  = TVN_FIRST - 5,
	TVN_ITEMEXPANDINGW  = TVN_FIRST - 54,
	TVN_ITEMEXPANDEDA   = TVN_FIRST - 6,
	TVN_ITEMEXPANDEDW   = TVN_FIRST - 55,
	TVN_BEGINDRAGA      = TVN_FIRST - 7,
	TVN_BEGINDRAGW      = TVN_FIRST - 56,
	TVN_BEGINRDRAGA     = TVN_FIRST - 8,
	TVN_BEGINRDRAGW     = TVN_FIRST - 57,
	TVN_DELETEITEMA     = TVN_FIRST - 9,
	TVN_DELETEITEMW     = TVN_FIRST - 58,
	TVN_BEGINLABELEDITA = TVN_FIRST - 10,
	TVN_BEGINLABELEDITW = TVN_FIRST - 59,
	TVN_ENDLABELEDITA   = TVN_FIRST - 11,
	TVN_ENDLABELEDITW   = TVN_FIRST - 60,
	TVN_KEYDOWN         = TVN_FIRST - 12,

	TVN_GETINFOTIPA     = TVN_FIRST - 13,
	TVN_GETINFOTIPW     = TVN_FIRST - 14,
	TVN_SINGLEEXPAND    = TVN_FIRST - 15,
}

enum : uint {
	TVC_UNKNOWN      = 0x0000,
	TVC_BYMOUSE      = 0x0001,
	TVC_BYKEYBOARD   = 0x0002
}

struct NMTVDISPINFOA {
	NMHDR hdr;
	TVITEMA item;
}
alias NMTVDISPINFOA TV_DISPINFOA;
alias NMTVDISPINFOA* LPNMTVDISPINFOA;

struct NMTVDISPINFOW {
  NMHDR hdr;
  TVITEMW item;
}
alias NMTVDISPINFOW TV_DISPINFOW;
alias NMTVDISPINFOW* LPNMTVDISPINFOW;

alias NMTVKEYDOWN TV_KEYDOWN;

align(1):

struct NMTVKEYDOWN {
	NMHDR hdr;
	WORD wVKey;
	UINT flags;
}
alias NMTVKEYDOWN* LPNMTVKEYDOWN;

align:

enum : uint {
	TVNRET_DEFAULT      = 0,
	TVNRET_SKIPOLD      = 1,
	TVNRET_SKIPNEW      = 2
}

struct NMTVCUSTOMDRAW {
	NMCUSTOMDRAW nmcd;
	COLORREF clrText;
	COLORREF clrTextBk;
	int iLevel;
}
alias NMTVCUSTOMDRAW* LPNMTVCUSTOMDRAW;

enum : size_t { NMTVCUSTOMDRAW_V3_SIZE = NMTVCUSTOMDRAW.iLevel.offsetof }

struct NMTVGETINFOTIPA {
	NMHDR hdr;
	LPSTR pszText;
	int cchTextMax;
	HTREEITEM hItem;
	LPARAM lParam;
}
alias NMTVGETINFOTIPA* LPNMTVGETINFOTIPA;

struct NMTVGETINFOTIPW {
	NMHDR hdr;
	LPWSTR pszText;
	int cchTextMax;
	HTREEITEM hItem;
	LPARAM lParam;
}
alias NMTVGETINFOTIPW* LPNMTVGETINFOTIPW;

enum : uint { TVCDRF_NOIMAGES = 0x00010000 }

version (Unicode) {
	alias TVITEMW TVITEM, TV_ITEM;
	alias LPTVITEMW LPTVITEM, LPTV_ITEM;
	alias TVITEMEXW TVITEMEX;
	alias LPTVITEMEXW LPTVITEMEX;
	alias TVINSERTSTRUCTW TVINSERTSTRUCT;
	alias LPTVINSERTSTRUCTW LPTVINSERTSTRUCT;
	alias TVM_INSERTITEMW TVM_INSERTITEM;
	alias TVM_GETITEMW TVM_GETITEM;
	alias TVM_SETITEMW TVM_SETITEM;
	alias TVM_EDITLABELW TVM_EDITLABEL;
	alias TVM_GETISEARCHSTRINGW TVM_GETISEARCHSTRING;
	alias NMTREEVIEWW NMTREEVIEW, NM_TREEVIEW;
	alias LPNMTREEVIEWW LPNMTREEVIEW, LPNM_TREEVIEW;
	alias NMTVDISPINFOW NMTVDISPINFO, TV_DISPINFO;
	alias LPNMTVDISPINFOW LPNMTVDISPINFO;
	alias TVN_SELCHANGINGW TVN_SELCHANGING;
	alias TVN_SELCHANGEDW TVN_SELCHANGED;
	alias TVN_GETDISPINFOW TVN_GETDISPINFO;
	alias TVN_SETDISPINFOW TVN_SETDISPINFO;
	alias TVN_ITEMEXPANDINGW TVN_ITEMEXPANDING;
	alias TVN_ITEMEXPANDEDW TVN_ITEMEXPANDED;
	alias TVN_BEGINDRAGW TVN_BEGINDRAG;
	alias TVN_BEGINRDRAGW TVN_BEGINRDRAG;
	alias TVN_DELETEITEMW TVN_DELETEITEM;
	alias TVN_BEGINLABELEDITW TVN_BEGINLABELEDIT;
	alias TVN_ENDLABELEDITW TVN_ENDLABELEDIT;
	alias TVN_GETINFOTIPW TVN_GETINFOTIP;
	alias NMTVGETINFOTIPW NMTVGETINFOTIP;
	alias LPNMTVGETINFOTIPW LPNMTVGETINFOTIP;
} else {
	alias TVITEMA TVITEM, TV_ITEM;
	alias LPTVITEMA LPTVITEM, LPTV_ITEM;
	alias TVITEMEXA TVITEMEX;
	alias LPTVITEMEXA LPTVITEMEX;
	alias TVINSERTSTRUCTA TVINSERTSTRUCT;
	alias LPTVINSERTSTRUCTA LPTVINSERTSTRUCT;
	alias TVM_INSERTITEMA TVM_INSERTITEM;
	alias TVM_GETITEMA TVM_GETITEM;
	alias TVM_SETITEMA TVM_SETITEM;
	alias TVM_EDITLABELA TVM_EDITLABEL;
	alias TVM_GETISEARCHSTRINGA TVM_GETISEARCHSTRING;
	alias NMTREEVIEWA NMTREEVIEW, NM_TREEVIEW;
	alias LPNMTREEVIEWA LPNMTREEVIEW, LPNM_TREEVIEW;
	alias NMTVDISPINFOA NMTVDISPINFO, TV_DISPINFO;
	alias LPNMTVDISPINFOA LPNMTVDISPINFO;
	alias TVN_SELCHANGINGA TVN_SELCHANGING;
	alias TVN_SELCHANGEDA TVN_SELCHANGED;
	alias TVN_GETDISPINFOA TVN_GETDISPINFO;
	alias TVN_SETDISPINFOA TVN_SETDISPINFO;
	alias TVN_ITEMEXPANDINGA TVN_ITEMEXPANDING;
	alias TVN_ITEMEXPANDEDA TVN_ITEMEXPANDED;
	alias TVN_BEGINDRAGA TVN_BEGINDRAG;
	alias TVN_BEGINRDRAGA TVN_BEGINRDRAG;
	alias TVN_DELETEITEMA TVN_DELETEITEM;
	alias TVN_BEGINLABELEDITA TVN_BEGINLABELEDIT;
	alias TVN_ENDLABELEDITA TVN_ENDLABELEDIT;
	alias TVN_GETINFOTIPA TVN_GETINFOTIP;
	alias NMTVGETINFOTIPA NMTVGETINFOTIP;
	alias LPNMTVGETINFOTIPA LPNMTVGETINFOTIP;
}


// Extended combo box (?)
// ----------------------
const TCHAR[] WC_COMBOBOXEX = "ComboBoxEx32";

enum : uint {
	CBEIF_TEXT          = 0x00000001,
	CBEIF_IMAGE         = 0x00000002,
	CBEIF_SELECTEDIMAGE = 0x00000004,
	CBEIF_OVERLAY       = 0x00000008,
	CBEIF_INDENT        = 0x00000010,
	CBEIF_LPARAM        = 0x00000020,
	CBEIF_DI_SETITEM    = 0x10000000
}

struct COMBOBOXEXITEMA {
	UINT mask;
	INT_PTR iItem;
	LPSTR pszText;
	int cchTextMax;
	int iImage;
	int iSelectedImage;
	int iOverlay;
	int iIndent;
	LPARAM lParam;
}
alias COMBOBOXEXITEMA* PCOMBOBOXEXITEMA, PCCOMBOEXITEMA;

struct COMBOBOXEXITEMW {
	UINT mask;
	INT_PTR iItem;
	LPWSTR pszText;
	int cchTextMax;
	int iImage;
	int iSelectedImage;
	int iOverlay;
	int iIndent;
	LPARAM lParam;
}
alias COMBOBOXEXITEMW* PCOMBOBOXEXITEMW, PCCOMBOEXITEMW;

enum : uint {
	CBEM_INSERTITEMA      = WM_USER + 1,
	CBEM_SETIMAGELIST     = WM_USER + 2,
	CBEM_GETIMAGELIST     = WM_USER + 3,
	CBEM_GETITEMA         = WM_USER + 4,
	CBEM_SETITEMA         = WM_USER + 5,
	CBEM_GETCOMBOCONTROL  = WM_USER + 6,
	CBEM_GETEDITCONTROL   = WM_USER + 7,
	CBEM_SETEXSTYLE       = WM_USER + 8,
	CBEM_GETEXSTYLE       = WM_USER + 9,
	CBEM_GETEXTENDEDSTYLE = WM_USER + 9,
	CBEM_HASEDITCHANGED   = WM_USER + 10,
	CBEM_INSERTITEMW      = WM_USER + 11,
	CBEM_SETITEMW         = WM_USER + 12,
	CBEM_GETITEMW         = WM_USER + 13,
	CBEM_SETEXTENDEDSTYLE = WM_USER + 14,
	CBEM_DELETEITEM       = CB_DELETESTRING,
	CBEM_SETUNICODEFORMAT = CCM_SETUNICODEFORMAT,
	CBEM_GETUNICODEFORMAT = CCM_GETUNICODEFORMAT,
	CBEM_SETWINDOWTHEME   = CCM_SETWINDOWTHEME
}

enum : uint {
	CBES_EX_NOEDITIMAGE       = 0x00000001,
	CBES_EX_NOEDITIMAGEINDENT = 0x00000002,
	CBES_EX_PATHWORDBREAKPROC = 0x00000004,
	CBES_EX_NOSIZELIMIT       = 0x00000008,
	CBES_EX_CASESENSITIVE     = 0x00000010
}

struct NMCOMBOBOXEXA {
	NMHDR hdr;
	COMBOBOXEXITEMA ceItem;
}
alias NMCOMBOBOXEXA* PNMCOMBOBOXEXA;

struct NMCOMBOBOXEXW {
	NMHDR hdr;
	COMBOBOXEXITEMW ceItem;
}
alias NMCOMBOBOXEXW* PNMCOMBOBOXEXW;

enum : uint {
// why are these commented out?
// #define CBEN_GETDISPINFOA (CBEN_FIRST - 0)
// #define CBEN_GETDISPINFOW (CBEN_FIRST - 7)
	CBEN_INSERTITEM = CBEN_FIRST - 1,
	CBEN_DELETEITEM = CBEN_FIRST - 2,
	CBEN_BEGINEDIT  = CBEN_FIRST - 4,
	CBEN_ENDEDITA   = CBEN_FIRST - 5,
	CBEN_ENDEDITW   = CBEN_FIRST - 6,
	CBEN_DRAGBEGINA = CBEN_FIRST - 8,
	CBEN_DRAGBEGINW = CBEN_FIRST - 9
}

enum : uint {
	CBENF_KILLFOCUS = 1,
	CBENF_RETURN    = 2,
	CBENF_ESCAPE    = 3,
	CBENF_DROPDOWN  = 4,
}

enum : uint { CBEMAXSTRLEN = 260 }

struct NMCBEDRAGBEGINW {
	NMHDR hdr;
	int iItemid;
	WCHAR szText[CBEMAXSTRLEN];
}
alias NMCBEDRAGBEGINW* LPNMCBEDRAGBEGINW,PNMCBEDRAGBEGINW;

struct NMCBEDRAGBEGINA {
	NMHDR hdr;
	int iItemid;
	char szText[CBEMAXSTRLEN];
}
alias NMCBEDRAGBEGINA* LPNMCBEDRAGBEGINA, PNMCBEDRAGBEGINA;

struct NMCBEENDEDITW {
	NMHDR hdr;
	BOOL fChanged;
	int iNewSelection;
	WCHAR szText[CBEMAXSTRLEN];
	int iWhy;
}
alias NMCBEENDEDITW* LPNMCBEENDEDITW, PNMCBEENDEDITW;

struct NMCBEENDEDITA {
	NMHDR hdr;
	BOOL fChanged;
	int iNewSelection;
	char szText[CBEMAXSTRLEN];
	int iWhy;
}
alias NMCBEENDEDITA* LPNMCBEENDEDITA, PNMCBEENDEDITA;

version (Unicode) {
	alias COMBOBOXEXITEMW COMBOBOXEXITEM;
	alias PCOMBOBOXEXITEMW PCOMBOBOXEXITEM, PCCOMBOBOXEXITEM;
	alias CBEM_INSERTITEMW CBEM_INSERTITEM;
	alias CBEM_SETITEMW CBEM_SETITEM;
	alias CBEM_GETITEMW CBEM_GETITEM;
	alias NMCOMBOBOXEXW NMCOMBOBOXEX;
	alias PNMCOMBOBOXEXW PNMCOMBOBOXEX;
	alias CBEN_GETDISPINFOW CBEN_GETDISPINFO;
	alias CBEN_DRAGBEGINW CBEN_DRAGBEGIN;
	alias CBEN_ENDEDITW CBEN_ENDEDIT;
	alias NMCBEDRAGBEGINW NMCBEDRAGBEGIN;
	alias LPNMCBEDRAGBEGINW LPNMCBEDRAGBEGIN;
	alias PNMCBEDRAGBEGINW PNMCBEDRAGBEGIN;
	alias NMCBEENDEDITW NMCBEENDEDIT;
	alias LPNMCBEENDEDITW LPNMCBEENDEDIT;
	alias PNMCBEENDEDITW PNMCBEENDEDIT;
} else {
	alias COMBOBOXEXITEMA COMBOBOXEXITEM;
	alias PCOMBOBOXEXITEMA PCOMBOBOXEXITEM, PCCOMBOBOXEXITEM;
	alias CBEM_INSERTITEMA CBEM_INSERTITEM;
	alias CBEM_SETITEMA CBEM_SETITEM;
	alias CBEM_GETITEMA CBEM_GETITEM;
	alias NMCOMBOBOXEXA NMCOMBOBOXEX;
	alias PNMCOMBOBOXEXA PNMCOMBOBOXEX;
	alias CBEN_GETDISPINFOA CBEN_GETDISPINFO;
	alias CBEN_DRAGBEGINA CBEN_DRAGBEGIN;
	alias CBEN_ENDEDITA CBEN_ENDEDIT;
	alias NMCBEDRAGBEGINA NMCBEDRAGBEGIN;
	alias LPNMCBEDRAGBEGINA LPNMCBEDRAGBEGIN;
	alias PNMCBEDRAGBEGINA PNMCBEDRAGBEGIN;
	alias NMCBEENDEDITA NMCBEENDEDIT;
	alias LPNMCBEENDEDITA LPNMCBEENDEDIT;
	alias PNMCBEENDEDITA PNMCBEENDEDIT;
}


// Tab control
// -----------
const TCHAR[] WC_TABCONTROL = "SysTabControl32";

enum : uint {
	TCS_SCROLLOPPOSITE    = 0x0001,
	TCS_BOTTOM            = 0x0002,
	TCS_RIGHT             = 0x0002,
	TCS_MULTISELECT       = 0x0004,
	TCS_FLATBUTTONS       = 0x0008,
	TCS_FORCEICONLEFT     = 0x0010,
	TCS_FORCELABELLEFT    = 0x0020,
	TCS_HOTTRACK          = 0x0040,
	TCS_VERTICAL          = 0x0080,
	TCS_TABS              = 0x0000,
	TCS_BUTTONS           = 0x0100,
	TCS_SINGLELINE        = 0x0000,
	TCS_MULTILINE         = 0x0200,
	TCS_RIGHTJUSTIFY      = 0x0000,
	TCS_FIXEDWIDTH        = 0x0400,
	TCS_RAGGEDRIGHT       = 0x0800,
	TCS_FOCUSONBUTTONDOWN = 0x1000,
	TCS_OWNERDRAWFIXED    = 0x2000,
	TCS_TOOLTIPS          = 0x4000,
	TCS_FOCUSNEVER        = 0x8000
}

enum : uint {
	TCS_EX_FLATSEPARATORS = 0x00000001,
	TCS_EX_REGISTERDROP   = 0x00000002
}

enum : uint {
	TCM_GETIMAGELIST     = TCM_FIRST + 2,
	TCM_SETIMAGELIST     = TCM_FIRST + 3,
	TCM_GETITEMCOUNT     = TCM_FIRST + 4,
	TCM_GETITEMA         = TCM_FIRST + 5,
	TCM_GETITEMW         = TCM_FIRST + 60,
	TCM_SETITEMA         = TCM_FIRST + 6,
	TCM_SETITEMW         = TCM_FIRST + 61,
	TCM_INSERTITEMA      = TCM_FIRST + 7,
	TCM_INSERTITEMW      = TCM_FIRST + 62,
	TCM_DELETEITEM       = TCM_FIRST + 8,
	TCM_DELETEALLITEMS   = TCM_FIRST + 9,
	TCM_GETITEMRECT      = TCM_FIRST + 10,
	TCM_GETCURSEL        = TCM_FIRST + 11,
	TCM_SETCURSEL        = TCM_FIRST + 12,
	TCM_HITTEST          = TCM_FIRST + 13,
	TCM_SETITEMEXTRA     = TCM_FIRST + 14,
	TCM_ADJUSTRECT       = TCM_FIRST + 40,
	TCM_SETITEMSIZE      = TCM_FIRST + 41,
	TCM_REMOVEIMAGE      = TCM_FIRST + 42,
	TCM_SETPADDING       = TCM_FIRST + 43,
	TCM_GETROWCOUNT      = TCM_FIRST + 44,
	TCM_GETTOOLTIPS      = TCM_FIRST + 45,
	TCM_SETTOOLTIPS      = TCM_FIRST + 46,
	TCM_GETCURFOCUS      = TCM_FIRST + 47,
	TCM_SETCURFOCUS      = TCM_FIRST + 48,
	TCM_SETMINTABWIDTH   = TCM_FIRST + 49,
	TCM_DESELECTALL      = TCM_FIRST + 50,
	TCM_HIGHLIGHTITEM    = TCM_FIRST + 51,
	TCM_SETEXTENDEDSTYLE = TCM_FIRST + 52,
	TCM_GETEXTENDEDSTYLE = TCM_FIRST + 53,
	TCM_SETUNICODEFORMAT = CCM_SETUNICODEFORMAT,
	TCM_GETUNICODEFORMAT = CCM_GETUNICODEFORMAT
}

enum : uint {
	TCIF_TEXT       = 0x0001,
	TCIF_IMAGE      = 0x0002,
	TCIF_RTLREADING = 0x0004,
	TCIF_PARAM      = 0x0008,
	TCIF_STATE      = 0x0010
}

enum : uint {
	TCIS_BUTTONPRESSED = 0x0001,
	TCIS_HIGHLIGHTED   = 0x0002
}

struct TCITEMHEADERA {
	UINT mask;
	UINT lpReserved1;
	UINT lpReserved2;
	LPSTR pszText;
	int cchTextMax;
	int iImage;
}
alias TCITEMHEADERA TC_ITEMHEADERA;
alias TCITEMHEADERA* LPTCITEMHEADERA;

struct TCITEMHEADERW {
	UINT mask;
	UINT lpReserved1;
	UINT lpReserved2;
	LPWSTR pszText;
	int cchTextMax;
	int iImage;
}
alias TCITEMHEADERW TC_ITEMHEADERW;
alias TCITEMHEADERW* LPTCITEMHEADERW;

struct TCITEMA {
	UINT mask;
	DWORD dwState;
	DWORD dwStateMask;
	LPSTR pszText;
	int cchTextMax;
	int iImage;
	LPARAM lParam;
}
alias TCITEMA TC_ITEMA;
alias TCITEMA* LPTCITEMA;

struct TCITEMW {
	UINT mask;
	DWORD dwState;
	DWORD dwStateMask;
	LPWSTR pszText;
	int cchTextMax;
	int iImage;
	LPARAM lParam;
}
alias TCITEMW TC_ITEMW;
alias TCITEMW* LPTCITEMW;

enum : uint {
	TCHT_NOWHERE     = 0x0001,
	TCHT_ONITEMICON  = 0x0002,
	TCHT_ONITEMLABEL = 0x0004,
	TCHT_ONITEM      = TCHT_ONITEMICON | TCHT_ONITEMLABEL
}

struct TCHITTESTINFO {
	POINT pt;
	UINT flags;
}
alias TCHITTESTINFO TC_HITTESTINFO;
alias TCHITTESTINFO* LPTCHITTESTINFO, LPTC_HITTESTINFO;


int TabCtrl_AdjustRect(HWND hwnd, BOOL bLarger, RECT* prc) {
	return SendMessage(hwnd, TCM_ADJUSTRECT, bLarger, cast(LPARAM) prc);
}

BOOL TabCtrl_DeleteItem(HWND hwnd, int iItem) {
	return SendMessage(hwnd, TCM_DELETEITEM, iItem, 0);
}

BOOL TabCtrl_DeleteAllItems(HWND hwnd) {
	return SendMessage(hwnd, TCM_DELETEALLITEMS, 0, 0);
}

void TabCtrl_DeselectAll(HWND hwnd, BOOL fExcludeFocus) {
	SendMessage(hwnd, TCM_DESELECTALL, fExcludeFocus, 0);
}

int TabCtrl_GetCurFocus(HWND hwnd) {
	return SendMessage(hwnd, TCM_GETCURFOCUS, 0, 0);
}

int TabCtrl_GetCurSel(HWND hwnd) {
	return SendMessage(hwnd, TCM_GETCURSEL, 0, 0);
}

DWORD TabCtrl_GetExtendedStyle(HWND hwnd) {
	return SendMessage(hwnd, TCM_GETEXTENDEDSTYLE, 0, 0);
}

HIMAGELIST TabCtrl_GetImageList(HWND hwnd) {
	return cast(HIMAGELIST) SendMessage(hwnd, TCM_GETIMAGELIST, 0, 0);
}

BOOL TabCtrl_GetItem(HWND hwnd, int iItem, TC_ITEM* pitem) {
	return SendMessage(hwnd, TCM_GETITEM, iItem, cast(LPARAM) pitem);
}

int TabCtrl_GetItemCount(HWND hwnd) {
	return SendMessage(hwnd, TCM_GETITEMCOUNT, 0, 0);
}

BOOL TabCtrl_GetItemRect(HWND hwnd, int iItem, RECT* prc) {
	return SendMessage(hwnd, TCM_GETITEMRECT, iItem, cast(LPARAM) prc);
}

int TabCtrl_GetRowCount(HWND hwnd) {
	return SendMessage(hwnd, TCM_GETROWCOUNT, 0, 0);
}

HWND TabCtrl_GetToolTips(HWND hwnd) {
	return cast(HWND) SendMessage(hwnd, TCM_GETTOOLTIPS, 0, 0);
}

BOOL TabCtrl_GetUnicodeFormat(HWND hwnd) {
	return SendMessage(hwnd, TCM_GETUNICODEFORMAT, 0, 0);
}

BOOL TabCtrl_HighlightItem(HWND hwnd, int i, BOOL fHighlight) {
	return SendMessage(hwnd, TCM_HIGHLIGHTITEM, i,
	  MAKELONG(cast(ushort) fHighlight, 0));
}

int TabCtrl_HitTest(HWND hwndTC, TC_HITTESTINFO* pinfo) {
	return SendMessage(hwndTC, TCM_HITTEST, 0, cast(LPARAM) pinfo);
}

int TabCtrl_InsertItem(HWND hwnd, int iItem, TC_ITEM* pitem) {
	return SendMessage(hwnd, TCM_INSERTITEM, iItem, cast(LPARAM) pitem);
}

void TabCtrl_RemoveImage(HWND hwnd, int i) {
	SendMessage(hwnd, TCM_REMOVEIMAGE, i, 0);
}

void TabCtrl_SetCurFocus(HWND hwnd, int i) {
	SendMessage(hwnd, TCM_SETCURFOCUS, i, 0);
}

int TabCtrl_SetCurSel(HWND hwnd, int iItem) {
	return SendMessage(hwnd, TCM_SETCURSEL, iItem, 0);
}

DWORD TabCtrl_SetExtendedStyle(HWND hwnd, DWORD dw) {
	return SendMessage(hwnd, TCM_SETEXTENDEDSTYLE, 0, dw);
}

HIMAGELIST TabCtrl_SetImageList(HWND hwnd, HIMAGELIST himl) {
	return cast(HIMAGELIST) SendMessage(hwnd, TCM_SETIMAGELIST, 0,
	  cast(LPARAM) himl);
}

BOOL TabCtrl_SetItem(HWND hwnd, int iItem, TC_ITEM* pitem) {
	return SendMessage(hwnd, TCM_SETITEM, iItem, cast(LPARAM) pitem);
}

BOOL TabCtrl_SetItemExtra(HWND hwndTC, int cb) {
	return SendMessage(hwndTC, TCM_SETITEMEXTRA, cb, 0);
}

DWORD TabCtrl_SetItemSize(HWND hwnd, int x, int y) {
	return SendMessage(hwnd, TCM_SETITEMSIZE, 0,
	  MAKELPARAM(cast(ushort) x, cast(ushort) y));
}

// FIXME: type of x
int TabCtrl_SetMinTabWidth(HWND hwnd, LPARAM x) {
	return SendMessage(hwnd, TCM_SETMINTABWIDTH, 0, x);
}

void TabCtrl_SetPadding(HWND hwnd, int cx, int cy) {
	SendMessage(hwnd, TCM_SETPADDING, 0,
	  MAKELPARAM(cast(ushort) cx, cast(ushort) cy));
}

void TabCtrl_SetToolTips(HWND hwnd, HWND hwndTT) {
	SendMessage(hwnd, TCM_SETTOOLTIPS, cast(WPARAM) hwndTT, 0);
}

BOOL TabCtrl_SetUnicodeFormat(HWND hwnd, BOOL fUnicode) {
	return SendMessage(hwnd, TCM_SETUNICODEFORMAT, fUnicode, 0);
}


enum : uint {
	TCN_KEYDOWN     = TCN_FIRST - 0,
	TCN_SELCHANGE   = TCN_FIRST - 1,
	TCN_SELCHANGING = TCN_FIRST - 2,
	TCN_GETOBJECT   = TCN_FIRST - 3,
	TCN_FOCUSCHANGE = TCN_FIRST - 4
}

align(1):

struct NMTCKEYDOWN {
	NMHDR hdr;
	WORD wVKey;
	UINT flags;
}
alias NMTCKEYDOWN TC_KEYDOWN;

align:

version (Unicode) {
	alias TCITEMHEADERW TCITEMHEADER, TC_ITEMHEADER;
	alias LPTCITEMHEADERW LPTCITEMHEADER;
	alias TCITEMW TCITEM, TC_ITEM;
	alias LPTCITEMW LPTCITEM;
	alias TCM_GETITEMW TCM_GETITEM;
	alias TCM_SETITEMW TCM_SETITEM;
	alias TCM_INSERTITEMW TCM_INSERTITEM;
} else {
	alias TCITEMHEADERA TCITEMHEADER, TC_ITEMHEADER;
	alias LPTCITEMHEADERA LPTCITEMHEADER;
	alias TCITEMA TCITEM, TC_ITEM;
	alias LPTCITEMA LPTCITEM;
	alias TCM_GETITEMA TCM_GETITEM;
	alias TCM_SETITEMA TCM_SETITEM;
	alias TCM_INSERTITEMA TCM_INSERTITEM;
}


// Animation control
// -----------------
const TCHAR[] ANIMATE_CLASS = "SysAnimate32";

enum : uint {
	ACS_CENTER      = 0x0001,
	ACS_TRANSPARENT = 0x0002,
	ACS_AUTOPLAY    = 0x0004,
	ACS_TIMER       = 0x0008
}

enum : uint {
	ACM_OPENA = WM_USER + 100,
	ACM_OPENW = WM_USER + 103,
	ACM_PLAY  = WM_USER + 101,
	ACM_STOP  = WM_USER + 102
}

enum : uint {
	ACN_START = 1,
	ACN_STOP  = 2
}


HWND Animate_Create(HWND hwndP, UINT id, DWORD dwStyle,
	  HINSTANCE hInstance) {
	return CreateWindow(ANIMATE_CLASS, null, dwStyle, 0, 0, 0, 0, hwndP,
	  cast(HMENU) id, hInstance, null);
}

BOOL Animate_Open(HWND hwnd, LPTSTR szName) {
	return SendMessage(hwnd, ACM_OPEN, 0, cast(LPARAM) szName);
}

BOOL Animate_OpenEx(HWND hwnd, HINSTANCE hInst, LPTSTR szName) {
	return SendMessage(hwnd, ACM_OPEN, cast(WPARAM) hInst,
	  cast(LPARAM) szName);
}

BOOL Animate_Play(HWND hwnd, int from, int to, int rep) {
	return SendMessage(hwnd, ACM_PLAY, rep,
	  MAKELONG(cast(ushort) from, cast(ushort) to));
}

BOOL Animate_Stop(HWND hwnd) {
	return SendMessage(hwnd, ACM_STOP, 0, 0);
}

BOOL Animate_Close(HWND hwnd) {
	return Animate_Open(hwnd, null);
}

BOOL Animate_Seek(HWND hwnd, int frame) {
	return Animate_Play(hwnd, frame, frame, 1);
}


version (Unicode) {
	alias ACM_OPENW ACM_OPEN;
} else {
	alias ACM_OPENA ACM_OPEN;
}


// Month calendar (?)
// ------------------
const TCHAR[] MONTHCAL_CLASS = "SysMonthCal32";

alias DWORD MONTHDAYSTATE;
alias DWORD* LPMONTHDAYSTATE;

enum : uint {
	MCM_FIRST             = 0x1000,
	MCM_GETCURSEL         = MCM_FIRST + 1,
	MCM_SETCURSEL         = MCM_FIRST + 2,
	MCM_GETMAXSELCOUNT    = MCM_FIRST + 3,
	MCM_SETMAXSELCOUNT    = MCM_FIRST + 4,
	MCM_GETSELRANGE       = MCM_FIRST + 5,
	MCM_SETSELRANGE       = MCM_FIRST + 6,
	MCM_GETMONTHRANGE     = MCM_FIRST + 7,
	MCM_SETDAYSTATE       = MCM_FIRST + 8,
	MCM_GETMINREQRECT     = MCM_FIRST + 9,
	MCM_SETCOLOR          = MCM_FIRST + 10,
	MCM_GETCOLOR          = MCM_FIRST + 11,
	MCM_SETTODAY          = MCM_FIRST + 12,
	MCM_GETTODAY          = MCM_FIRST + 13,
	MCM_HITTEST           = MCM_FIRST + 14,
	MCM_SETFIRSTDAYOFWEEK = MCM_FIRST + 15,
	MCM_GETFIRSTDAYOFWEEK = MCM_FIRST + 16,
	MCM_GETRANGE          = MCM_FIRST + 17,
	MCM_SETRANGE          = MCM_FIRST + 18,
	MCM_GETMONTHDELTA     = MCM_FIRST + 19,
	MCM_SETMONTHDELTA     = MCM_FIRST + 20,
	MCM_GETMAXTODAYWIDTH  = MCM_FIRST + 21,
	MCM_SETUNICODEFORMAT  = CCM_SETUNICODEFORMAT,
	MCM_GETUNICODEFORMAT  = CCM_GETUNICODEFORMAT
}

enum : uint {
	MCSC_BACKGROUND   = 0,
	MCSC_TEXT         = 1,
	MCSC_TITLEBK      = 2,
	MCSC_TITLETEXT    = 3,
	MCSC_MONTHBK      = 4,
	MCSC_TRAILINGTEXT = 5
}

struct MCHITTESTINFO {
	UINT cbSize = MCHITTESTINFO.sizeof;
	POINT pt;
	UINT uHit;
	SYSTEMTIME st;
}
alias MCHITTESTINFO* PMCHITTESTINFO;

enum : uint {
	MCHT_TITLE            = 0x00010000,
	MCHT_CALENDAR         = 0x00020000,
	MCHT_TODAYLINK        = 0x00030000,
	MCHT_NEXT             = 0x01000000,
	MCHT_PREV             = 0x02000000,
	MCHT_NOWHERE          = 0x00000000,
	MCHT_TITLEBK          = MCHT_TITLE,
	MCHT_TITLEMONTH       = MCHT_TITLE | 0x0001,
	MCHT_TITLEYEAR        = MCHT_TITLE | 0x0002,
	MCHT_TITLEBTNNEXT     = MCHT_TITLE | MCHT_NEXT | 0x0003,
	MCHT_TITLEBTNPREV     = MCHT_TITLE | MCHT_PREV | 0x0003,
	MCHT_CALENDARBK       = MCHT_CALENDAR,
	MCHT_CALENDARDATE     = MCHT_CALENDAR | 0x0001,
	MCHT_CALENDARDATENEXT = MCHT_CALENDARDATE | MCHT_NEXT,
	MCHT_CALENDARDATEPREV = MCHT_CALENDARDATE | MCHT_PREV,
	MCHT_CALENDARDAY      = MCHT_CALENDAR | 0x0002,
	MCHT_CALENDARWEEKNUM  = MCHT_CALENDAR | 0x0003
}


// FIXME: type of pst?
BOOL MonthCal_GetCurSel(HWND hmc, LPARAM pst) {
	return SendMessage(hmc, MCM_GETCURSEL, 0, pst);
}

// FIXME: type of pst?
BOOL MonthCal_SetCurSel(HWND hmc, LPARAM pst) {
	return SendMessage(hmc, MCM_SETCURSEL, 0, pst);
}

BOOL MonthCal_GetMaxSelCount(HWND hmc) {
	return SendMessage(hmc, MCM_GETMAXSELCOUNT, 0, 0);
}

// FIXME: type of n?
BOOL MonthCal_SetMaxSelCount(HWND hmc, WPARAM n) {
	return SendMessage(hmc, MCM_SETMAXSELCOUNT, n, 0);
}

// FIXME: return type and typeof rgst?
LRESULT MonthCal_GetSelRange(HWND hmc, LPARAM rgst) {
	return SendMessage(hmc, MCM_GETSELRANGE, 0, rgst);
}

// FIXME: return type and typeof rgst?
LRESULT MonthCal_SetSelRange(HWND hmc, LPARAM rgst) {
	return SendMessage(hmc, MCM_SETSELRANGE, 0, rgst);
}

// FIXME: type of gmr and rgst?
DWORD MonthCal_GetMonthRange(HWND hmc, WPARAM gmr, LPARAM rgst) {
	return SendMessage(hmc, MCM_GETMONTHRANGE, gmr, rgst);
}

// FIXME: return type and type of cbds and rgds?
LRESULT MonthCal_SetDayState(HWND hmc, WPARAM cbds, LPARAM rgds) {
	return SendMessage(hmc, MCM_SETDAYSTATE, cbds, rgds);
}

// FIXME: return type and type of prc?
LRESULT MonthCal_GetMinReqRect(HWND hmc, LPARAM prc) {
	return SendMessage(hmc, MCM_GETMINREQRECT, 0, prc);
}

// FIXME: return type?
LRESULT MonthCal_SetColor(HWND hmc, int iColor, COLORREF clr) {
	return SendMessage(hmc, MCM_SETCOLOR, iColor, clr);
}

COLORREF MonthCal_GetColor(HWND hmc, int iColor) {
	return SendMessage(hmc, MCM_GETCOLOR, iColor, 0);
}

// FIXME: return type and type of pst?
LRESULT MonthCal_SetToday(HWND hmc, LPARAM pst) {
	return SendMessage(hmc, MCM_SETTODAY, 0, pst);
}

// FIXME: type of pst?
BOOL MonthCal_GetToday(HWND hmc, LPARAM pst) {
	return SendMessage(hmc, MCM_GETTODAY, 0, pst);
}

// FIXME: return type?
LRESULT MonthCal_HitTest(HWND hmc, MCHITTESTINFO* pinfo) {
	return SendMessage(hmc, MCM_HITTEST, 0, cast(LPARAM) pinfo);
}

// FIXME: return type?
LRESULT MonthCal_SetFirstDayOfWeek(HWND hmc, LPARAM iDay) {
	return SendMessage(hmc, MCM_SETFIRSTDAYOFWEEK, 0, iDay);
}

DWORD MonthCal_GetFirstDayOfWeek(HWND hmc) {
	return SendMessage(hmc, MCM_GETFIRSTDAYOFWEEK, 0, 0);
}

// FIXME: type of rgst?
DWORD MonthCal_GetRange(HWND hmc, LPARAM rgst) {
	return SendMessage(hmc, MCM_GETRANGE, 0, rgst);
}

// FIXME: type of rgst?
BOOL MonthCal_SetRange(HWND hmc, WPARAM gd, LPARAM rgst) {
	return SendMessage(hmc, MCM_SETRANGE, gd, rgst);
}

int MonthCal_GetMonthDelta(HWND hmc) {
	return SendMessage(hmc, MCM_GETMONTHDELTA, 0, 0);
}

// FIXME: type of n?
int MonthCal_SetMonthDelta(HWND hmc, WPARAM n) {
	return SendMessage(hmc, MCM_SETMONTHDELTA, n, 0);
}

DWORD MonthCal_GetMaxTodayWidth(HWND hmc) {
	return SendMessage(hmc, MCM_GETMAXTODAYWIDTH, 0, 0);
}

BOOL MonthCal_SetUnicodeFormat(HWND hwnd, BOOL fUnicode) {
	return SendMessage(hwnd, MCM_SETUNICODEFORMAT, fUnicode, 0);
}

BOOL MonthCal_GetUnicodeFormat(HWND hwnd) {
	return SendMessage(hwnd, MCM_GETUNICODEFORMAT, 0, 0);
}


struct NMSELCHANGE {
	NMHDR nmhdr;

	SYSTEMTIME stSelStart;
	SYSTEMTIME stSelEnd;
}
alias NMSELCHANGE NMSELECT;
alias NMSELCHANGE* LPNMSELCHANGE, LPNMSELECT;

enum : uint {
	MCN_SELCHANGE   = MCN_FIRST + 1,
	MCN_GETDAYSTATE = MCN_FIRST + 3,
	MCN_SELECT      = MCN_FIRST + 4
}

struct NMDAYSTATE {
	NMHDR nmhdr;

	SYSTEMTIME stStart;
	int cDayState;
	LPMONTHDAYSTATE prgDayState;
}
alias NMDAYSTATE* LPNMDAYSTATE;

enum : uint {
	MCS_DAYSTATE      = 0x0001,
	MCS_MULTISELECT   = 0x0002,
	MCS_WEEKNUMBERS   = 0x0004,
	MCS_NOTODAYCIRCLE = 0x0008,
	MCS_NOTODAY       = 0x0010
}

enum : uint {
	GMR_VISIBLE  = 0,
	GMR_DAYSTATE = 1
}


// Date/time picker (?)
// --------------------
const TCHAR[] DATETIMEPICK_CLASS = "SysDateTimePick32";

enum : uint {
	DTM_FIRST         = 0x1000,
	DTM_GETSYSTEMTIME = DTM_FIRST + 1,
	DTM_SETSYSTEMTIME = DTM_FIRST + 2,
	DTM_GETRANGE      = DTM_FIRST + 3,
	DTM_SETRANGE      = DTM_FIRST + 4,
	DTM_SETFORMATA    = DTM_FIRST + 5,
	DTM_SETFORMATW    = DTM_FIRST + 50,
	DTM_SETMCCOLOR    = DTM_FIRST + 6,
	DTM_GETMCCOLOR    = DTM_FIRST + 7,
	DTM_GETMONTHCAL   = DTM_FIRST + 8,
	DTM_SETMCFONT     = DTM_FIRST + 9,
	DTM_GETMCFONT     = DTM_FIRST + 10
}


DWORD DateTime_GetSystemtime(HWND hdp, LPARAM pst) {
	return SendMessage(hdp, DTM_GETSYSTEMTIME, 0, pst);
}

BOOL DateTime_SetSystemtime(HWND hdp, WPARAM gd, LPARAM pst) {
	return SendMessage(hdp, DTM_SETSYSTEMTIME, gd, pst);
}

DWORD DateTime_GetRange(HWND hdp, LPARAM rgst) {
	return SendMessage(hdp, DTM_GETRANGE, 0, rgst);
}

BOOL DateTime_SetRange(HWND hdp, WPARAM gd, LPARAM rgst) {
	return SendMessage(hdp, DTM_SETRANGE, gd, rgst);
}

BOOL DateTime_SetFormat(HWND hdp, LPARAM sz) {
	return SendMessage(hdp, DTM_SETFORMAT, 0, sz);
}

// FIXME: return type?
LRESULT DateTime_SetMonthCalColor(HWND hdp, int iColor, COLORREF clr) {
	return SendMessage(hdp, DTM_SETMCCOLOR, iColor, clr);
}

COLORREF DateTime_GetMonthCalColor(HWND hdp, int iColor) {
	return SendMessage(hdp, DTM_GETMCCOLOR, iColor, 0);
}

HWND DateTime_GetMonthCal(HWND hdp) {
	return cast(HWND) SendMessage(hdp, DTM_GETMONTHCAL, 0, 0);
}

// FIXME: return type?
LRESULT DateTime_SetMonthCalFont(HWND hdp, HFONT hfont, BOOL fRedraw) {
	return SendMessage(hdp, DTM_SETMCFONT, cast(WPARAM) hfont, fRedraw);
}

// FIXME: return type?
LRESULT DateTime_GetMonthCalFont(HWND hdp) {
	return SendMessage(hdp, DTM_GETMCFONT, 0, 0);
}


enum : uint {
	DTS_SHORTDATEFORMAT        = 0x0000,
	DTS_UPDOWN                 = 0x0001,
	DTS_SHOWNONE               = 0x0002,
	DTS_LONGDATEFORMAT         = 0x0004,
	DTS_TIMEFORMAT             = 0x0009,
	DTS_SHORTDATECENTURYFORMAT = 0x000C,
	DTS_APPCANPARSE            = 0x0010,
	DTS_RIGHTALIGN             = 0x0020
}

enum : uint {
	DTN_DATETIMECHANGE = DTN_FIRST + 1,
	DTN_USERSTRINGA    = DTN_FIRST + 2,
	DTN_USERSTRINGW    = DTN_FIRST + 15,
	DTN_WMKEYDOWNA     = DTN_FIRST + 3,
	DTN_WMKEYDOWNW     = DTN_FIRST + 16,
	DTN_FORMATA        = DTN_FIRST + 4,
	DTN_FORMATW        = DTN_FIRST + 17,
	DTN_FORMATQUERYA   = DTN_FIRST + 5,
	DTN_FORMATQUERYW   = DTN_FIRST + 18,
	DTN_DROPDOWN       = DTN_FIRST + 6,
	DTN_CLOSEUP        = DTN_FIRST + 7
}

struct NMDATETIMECHANGE {
	NMHDR nmhdr;
	DWORD dwFlags;
	SYSTEMTIME st;
}
alias NMDATETIMECHANGE* LPNMDATETIMECHANGE;

struct NMDATETIMESTRINGA {
	NMHDR nmhdr;
	LPCSTR pszUserString;
	SYSTEMTIME st;
	DWORD dwFlags;
}
alias NMDATETIMESTRINGA* LPNMDATETIMESTRINGA;

struct NMDATETIMESTRINGW {
	NMHDR nmhdr;
	LPCWSTR pszUserString;
	SYSTEMTIME st;
	DWORD dwFlags;
}
alias NMDATETIMESTRINGW* LPNMDATETIMESTRINGW;

struct NMDATETIMEWMKEYDOWNA {
	NMHDR nmhdr;
	int nVirtKey;
	LPCSTR pszFormat;
	SYSTEMTIME st;
}
alias NMDATETIMEWMKEYDOWNA* LPNMDATETIMEWMKEYDOWNA;

struct NMDATETIMEWMKEYDOWNW {
	NMHDR nmhdr;
	int nVirtKey;
	LPCWSTR pszFormat;
	SYSTEMTIME st;
}
alias NMDATETIMEWMKEYDOWNW* LPNMDATETIMEWMKEYDOWNW;

struct NMDATETIMEFORMATA {
	NMHDR nmhdr;
	LPCSTR pszFormat;
	SYSTEMTIME st;
	LPCSTR pszDisplay;
	CHAR szDisplay[64];
}
alias NMDATETIMEFORMATA* LPNMDATETIMEFORMATA;

struct NMDATETIMEFORMATW {
	NMHDR nmhdr;
	LPCWSTR pszFormat;
	SYSTEMTIME st;
	LPCWSTR pszDisplay;
	WCHAR szDisplay[64];
}
alias NMDATETIMEFORMATW* LPNMDATETIMEFORMATW;

struct NMDATETIMEFORMATQUERYA {
	NMHDR nmhdr;
	LPCSTR pszFormat;
	SIZE szMax;
}
alias NMDATETIMEFORMATQUERYA* LPNMDATETIMEFORMATQUERYA;

struct NMDATETIMEFORMATQUERYW {
	NMHDR nmhdr;
	LPCWSTR pszFormat;
	SIZE szMax;
}
alias NMDATETIMEFORMATQUERYW* LPNMDATETIMEFORMATQUERYW;

enum : uint {
	GDTR_MIN = 0x0001,
	GDTR_MAX = 0x0002
}

enum {
	GDT_ERROR = -1,
	GDT_VALID =  0,
	GDT_NONE  =  1
}

version (Unicode) {
	alias DTM_SETFORMATW DTM_SETFORMAT;
	alias DTN_USERSTRINGW DTN_USERSTRING;
	alias NMDATETIMESTRINGW NMDATETIMESTRING;
	alias LPNMDATETIMESTRINGW LPNMDATETIMESTRING;
	alias DTN_WMKEYDOWNW DTN_WMKEYDOWN;
	alias NMDATETIMEWMKEYDOWNW NMDATETIMEWMKEYDOWN;
	alias LPNMDATETIMEWMKEYDOWNW LPNMDATETIMEWMKEYDOWN;
	alias DTN_FORMATW DTN_FORMAT;
	alias NMDATETIMEFORMATW NMDATETIMEFORMAT;
	alias LPNMDATETIMEFORMATW LPNMDATETIMEFORMAT;
	alias DTN_FORMATQUERYW DTN_FORMATQUERY;
	alias NMDATETIMEFORMATQUERYW NMDATETIMEFORMATQUERY;
	alias LPNMDATETIMEFORMATQUERYW LPNMDATETIMEFORMATQUERY;
} else {
	alias DTM_SETFORMATA DTM_SETFORMAT;
	alias DTN_USERSTRINGA DTN_USERSTRING;
	alias NMDATETIMESTRINGA NMDATETIMESTRING;
	alias LPNMDATETIMESTRINGA LPNMDATETIMESTRING;
	alias DTN_WMKEYDOWNA DTN_WMKEYDOWN;
	alias NMDATETIMEWMKEYDOWNA NMDATETIMEWMKEYDOWN;
	alias LPNMDATETIMEWMKEYDOWNA LPNMDATETIMEWMKEYDOWN;
	alias DTN_FORMATA DTN_FORMAT;
	alias NMDATETIMEFORMATA NMDATETIMEFORMAT;
	alias LPNMDATETIMEFORMATA LPNMDATETIMEFORMAT;
	alias DTN_FORMATQUERYA DTN_FORMATQUERY;
	alias NMDATETIMEFORMATQUERYA NMDATETIMEFORMATQUERY;
	alias LPNMDATETIMEFORMATQUERYA LPNMDATETIMEFORMATQUERY;
}


// IP address (?)
// --------------
const TCHAR[] WC_IPADDRESS = "SysIPAddress32";

enum : uint {
	IPM_CLEARADDRESS = WM_USER + 100,
	IPM_SETADDRESS   = WM_USER + 101,
	IPM_GETADDRESS   = WM_USER + 102,
	IPM_SETRANGE     = WM_USER + 103,
	IPM_SETFOCUS     = WM_USER + 104,
	IPM_ISBLANK      = WM_USER + 105
}

enum : uint { IPN_FIELDCHANGED = IPN_FIRST - 0 }

struct NMIPADDRESS {
	NMHDR hdr;
	int iField;
	int iValue;
}
alias NMIPADDRESS* LPNMIPADDRESS;


LPARAM MAKEIPRANGE(ubyte low, ubyte high) {
	return (cast(int) high << 8) | low;
}

LPARAM MAKEIPADDRESS(ubyte b1, ubyte b2, ubyte b3, ubyte b4) {
	return (cast(DWORD) b1 << 24)
	     | (cast(DWORD) b2 << 16)
	     | (cast(DWORD) b3 << 8)
	     | (cast(DWORD) b4);
}

ubyte FIRST_IPADDRESS(LPARAM x) {
	return cast(ubyte) (x >> 24);
}

ubyte SECOND_IPADDRESS(LPARAM x) {
	return cast(ubyte) (x >> 16);
}

ubyte THIRD_IPADDRESS(LPARAM x) {
	return cast(ubyte) (x >> 8);
}

ubyte FOURTH_IPADDRESS(LPARAM x) {
	return cast(ubyte) x;
}


// Page scroller (?)
// -----------------
const TCHAR[] WC_PAGESCROLLER = "SysPager";

enum : uint {
	PGS_VERT       = 0x00000000,
	PGS_HORZ       = 0x00000001,
	PGS_AUTOSCROLL = 0x00000002,
	PGS_DRAGNDROP  = 0x00000004
}

enum : uint {
	PGF_INVISIBLE = 0,
	PGF_NORMAL    = 1,
	PGF_GRAYED    = 2,
	PGF_DEPRESSED = 4,
	PGF_HOT       = 8
}

enum : uint {
	PGB_TOPORLEFT     = 0,
	PGB_BOTTOMORRIGHT = 1
}

enum : uint {
	PGM_SETCHILD       = PGM_FIRST + 1,
	PGM_RECALCSIZE     = PGM_FIRST + 2,
	PGM_FORWARDMOUSE   = PGM_FIRST + 3,
	PGM_SETBKCOLOR     = PGM_FIRST + 4,
	PGM_GETBKCOLOR     = PGM_FIRST + 5,
	PGM_SETBORDER      = PGM_FIRST + 6,
	PGM_GETBORDER      = PGM_FIRST + 7,
	PGM_SETPOS         = PGM_FIRST + 8,
	PGM_GETPOS         = PGM_FIRST + 9,
	PGM_SETBUTTONSIZE  = PGM_FIRST + 10,
	PGM_GETBUTTONSIZE  = PGM_FIRST + 11,
	PGM_GETBUTTONSTATE = PGM_FIRST + 12,
	PGM_GETDROPTARGET  = CCM_GETDROPTARGET
}

void Pager_SetChild(HWND hwnd, HWND hwndChild) {
	SendMessage(hwnd, PGM_SETCHILD, 0, cast(LPARAM) hwndChild);
}

void Pager_RecalcSize(HWND hwnd) {
	SendMessage(hwnd, PGM_RECALCSIZE, 0, 0);
}

void Pager_ForwardMouse(HWND hwnd, BOOL bForward) {
	SendMessage(hwnd, PGM_FORWARDMOUSE, bForward, 0);
}

COLORREF Pager_SetBkColor(HWND hwnd, COLORREF clr) {
	return SendMessage(hwnd, PGM_SETBKCOLOR, 0, clr);
}

COLORREF Pager_GetBkColor(HWND hwnd) {
	return SendMessage(hwnd, PGM_GETBKCOLOR, 0, 0);
}

int Pager_SetBorder(HWND hwnd, int iBorder) {
	return SendMessage(hwnd, PGM_SETBORDER, 0, iBorder);
}

int Pager_GetBorder(HWND hwnd) {
	return SendMessage(hwnd, PGM_GETBORDER, 0, 0);
}

int Pager_SetPos(HWND hwnd, int iPos) {
	return SendMessage(hwnd, PGM_SETPOS, 0, iPos);
}

int Pager_GetPos(HWND hwnd) {
	return SendMessage(hwnd, PGM_GETPOS, 0, 0);
}

int Pager_SetButtonSize(HWND hwnd, int iSize) {
	return SendMessage(hwnd, PGM_SETBUTTONSIZE, 0, iSize);
}

int Pager_GetButtonSize(HWND hwnd) {
	return SendMessage(hwnd, PGM_GETBUTTONSIZE, 0,0);
}

DWORD Pager_GetButtonState(HWND hwnd, int iButton) {
	return SendMessage(hwnd, PGM_GETBUTTONSTATE, 0, iButton);
}

// FIXME: type of ppdt
void Pager_GetDropTarget(HWND hwnd, LPARAM ppdt) {
	SendMessage(hwnd, PGM_GETDROPTARGET, 0, ppdt);
}


enum : uint {
	PGN_SCROLL        = PGN_FIRST - 1,
	PGN_CALCSIZE      = PGN_FIRST - 2,
	PGN_HOTITEMCHANGE = PGN_FIRST - 3
}

enum : uint {
	PGF_SCROLLUP    = 1,
	PGF_SCROLLDOWN  = 2,
	PGF_SCROLLLEFT  = 4,
	PGF_SCROLLRIGHT = 8
}

enum : uint {
	PGK_SHIFT   = 1,
	PGK_CONTROL = 2,
	PGK_MENU    = 4
}

align(1):

struct NMPGSCROLL {
	NMHDR hdr;
	WORD fwKeys;
	RECT rcParent;
	int iDir;
	int iXpos;
	int iYpos;
	int iScroll;
}
alias NMPGSCROLL* LPNMPGSCROLL;

align:

enum : uint {
	PGF_CALCWIDTH  = 1,
	PGF_CALCHEIGHT = 2
}

struct NMPGCALCSIZE {
	NMHDR hdr;
	DWORD dwFlag;
	int iWidth;
	int iHeight;
}
alias NMPGCALCSIZE* LPNMPGCALCSIZE;

struct NMPGHOTITEM {
	NMHDR hdr;
	int idOld;
	int idNew;
	DWORD dwFlags;
}
alias NMPGHOTITEM* LPNMPGHOTITEM;


// Native font control (?)
// -----------------------
const TCHAR[] WC_NATIVEFONTCTL = "NativeFontCtl";

enum : uint {
	NFS_EDIT         = 0x0001,
	NFS_STATIC       = 0x0002,
	NFS_LISTCOMBO    = 0x0004,
	NFS_BUTTON       = 0x0008,
	NFS_ALL          = 0x0010,
	NFS_USEFONTASSOC = 0x0020
}


// Button (?)
// ----------
const TCHAR[] WC_BUTTON = "Button";

enum : uint {
	BUTTON_IMAGELIST_ALIGN_LEFT   = 0,
	BUTTON_IMAGELIST_ALIGN_RIGHT  = 1,
	BUTTON_IMAGELIST_ALIGN_TOP    = 2,
	BUTTON_IMAGELIST_ALIGN_BOTTOM = 3,
	BUTTON_IMAGELIST_ALIGN_CENTER = 4
}

struct BUTTON_IMAGELIST {
	HIMAGELIST himl;
	RECT margin;
	UINT uAlign;
}
alias BUTTON_IMAGELIST* PBUTTON_IMAGELIST;

enum : uint {
	BCM_GETIDEALSIZE  = BCM_FIRST + 0x0001,
	BCM_SETIMAGELIST  = BCM_FIRST + 0x0002,
	BCM_GETIMAGELIST  = BCM_FIRST + 0x0003,
	BCM_SETTEXTMARGIN = BCM_FIRST + 0x0004,
	BCM_GETTEXTMARGIN = BCM_FIRST + 0x0005
}


// FIXME: type of psize
BOOL Button_GetIdealSize(HWND hwnd, LPARAM psize) {
	return SendMessage(hwnd, BCM_GETIDEALSIZE, 0, psize);
}

BOOL Button_SetImageList(HWND hwnd, BUTTON_IMAGELIST* pbuttonImagelist) {
	return SendMessage(hwnd, BCM_SETIMAGELIST, 0,
	  cast(LPARAM) pbuttonImagelist);
}

BOOL Button_GetImageList(HWND hwnd, BUTTON_IMAGELIST* pbuttonImagelist) {
	return SendMessage(hwnd, BCM_GETIMAGELIST, 0,
	  cast(LPARAM) pbuttonImagelist);
}

// FIXME: type of pmargin
BOOL Button_SetTextMargin(HWND hwnd, LPARAM pmargin) {
	return SendMessage(hwnd, BCM_SETTEXTMARGIN, 0, pmargin);
}

// FIXME: type of pmargin
BOOL Button_GetTextMargin(HWND hwnd, LPARAM pmargin) {
	return SendMessage(hwnd, BCM_GETTEXTMARGIN, 0, pmargin);
}


struct NMBCHOTITEM {
	NMHDR hdr;
	DWORD dwFlags;
}
alias NMBCHOTITEM* LPNMBCHOTITEM;

enum : uint { BCN_HOTITEMCHANGE = BCN_FIRST + 0x0001 }
enum : uint { BST_HOT = 0x0200 }


// Static (?)
// ----------
const TCHAR[] WC_STATIC = "Static";


// Edit (?)
// --------
const TCHAR[] WC_EDIT = "Edit";

enum : uint {
	EM_SETCUEBANNER   = ECM_FIRST + 1,
	EM_GETCUEBANNER   = ECM_FIRST + 2,
	EM_SHOWBALLOONTIP = ECM_FIRST + 3,
	EM_HIDEBALLOONTIP = ECM_FIRST + 4
}

struct EDITBALLOONTIP {
	DWORD cbStruct;
	LPCWSTR pszTitle;
	LPCWSTR pszText;
	INT ttiIcon;
}
alias EDITBALLOONTIP* PEDITBALLOONTIP;


// List box (?)
// ------------
const TCHAR[] WC_LISTBOX = "ListBox";


// Combo box (?)
// -------------
const TCHAR[] WC_COMBOBOX = "ComboBox";

enum : uint {
	CB_SETMINVISIBLE = CBM_FIRST + 1,
	CB_GETMINVISIBLE = CBM_FIRST + 2
}


BOOL ComboBox_SetMinVisible(HWND hwnd, int iMinVisible) {
	return SendMessage(hwnd, CB_SETMINVISIBLE, iMinVisible, 0);
}

int ComboBox_GetMinVisible(HWND hwnd) {
	return SendMessage(hwnd, CB_GETMINVISIBLE, 0, 0);
}


// Scroll bar (?)
// --------------
const TCHAR[] WC_SCROLLBAR = "ScrollBar";


// Link (?)
// --------
const TCHAR[] WC_LINK = "SysLink";
enum {
	INVALID_LINK_INDEX = -1,
	L_MAX_URL_LENGTH   = 2048 + 32 + 4
}
enum : uint { MAX_LINKID_TEXT = 48 }

enum : uint {
	LWS_TRANSPARENT  = 0x0001,
	LWS_IGNORERETURN = 0x0002
}

enum : uint {
	LIF_ITEMINDEX = 0x00000001,
	LIF_STATE     = 0x00000002,
	LIF_ITEMID    = 0x00000004,
	LIF_URL       = 0x00000008
}

enum : uint {
	LIS_FOCUSED = 0x00000001,
	LIS_ENABLED = 0x00000002,
	LIS_VISITED = 0x00000004
}

struct LITEM {
	UINT mask;
	int iLink;
	UINT state;
	UINT stateMask;
	WCHAR szID[MAX_LINKID_TEXT];
	WCHAR szUrl[L_MAX_URL_LENGTH];
}
alias LITEM* PLITEM;

struct LHITTESTINFO {
	POINT pt;
	LITEM item;
}
alias LHITTESTINFO* PLHITTESTINFO;

struct NMLINK {
	NMHDR hdr;
	LITEM item;
}
alias NMLINK* PNMLINK;

enum : uint {
	LM_HITTEST        = WM_USER + 0x300,
	LM_GETIDEALHEIGHT = WM_USER + 0x301,
	LM_SETITEM        = WM_USER + 0x302,
	LM_GETITEM        = WM_USER + 0x303
}


// MUI (?)
// -------
extern(Windows) export {
	void InitMUILanguage(LANGID uiLang);
	LANGID GetMUILanguage();
}


// Track mouse event (?)
// ---------------------
enum : uint {
	TME_HOVER     = 0x00000001,
	TME_LEAVE     = 0x00000002,
	TME_NONCLIENT = 0x00000010,
	TME_QUERY     = 0x40000000,
	TME_CANCEL    = 0x80000000
}

enum : uint { HOVER_DEFAULT = 0xFFFFFFFF }

struct TRACKMOUSEEVENT {
	DWORD cbSize = TRACKMOUSEEVENT.sizeof;
	DWORD dwFlags;
	HWND hwndTrack;
	DWORD dwHoverTime;
}
alias TRACKMOUSEEVENT* LPTRACKMOUSEEVENT;

extern(Windows) export BOOL _TrackMouseEvent(
  LPTRACKMOUSEEVENT lpEventTrack);


// Flat scroll bar (?)
// -------------------
enum : uint {
	WSB_PROP_CYVSCROLL = 0x00000001,
	WSB_PROP_CXHSCROLL = 0x00000002,
	WSB_PROP_CYHSCROLL = 0x00000004,
	WSB_PROP_CXVSCROLL = 0x00000008,
	WSB_PROP_CXHTHUMB  = 0x00000010,
	WSB_PROP_CYVTHUMB  = 0x00000020,
	WSB_PROP_VBKGCOLOR = 0x00000040,
	WSB_PROP_HBKGCOLOR = 0x00000080,
	WSB_PROP_VSTYLE    = 0x00000100,
	WSB_PROP_HSTYLE    = 0x00000200,
	WSB_PROP_WINSTYLE  = 0x00000400,
	WSB_PROP_PALETTE   = 0x00000800,
	WSB_PROP_MASK      = 0x00000FFF
}

enum : uint {
	FSB_FLAT_MODE    = 2,
	FSB_ENCARTA_MODE = 1,
	FSB_REGULAR_MODE = 0
}

extern(Windows) export {
	BOOL FlatSB_EnableScrollBar(HWND, int, UINT);
	BOOL FlatSB_ShowScrollBar(HWND, int code, BOOL);
	BOOL FlatSB_GetScrollRange(HWND, int code, LPINT, LPINT);
	BOOL FlatSB_GetScrollInfo(HWND, int code, LPSCROLLINFO);
	int FlatSB_GetScrollPos(HWND, int code);
	BOOL FlatSB_GetScrollProp(HWND, int propIndex, LPINT);
	int FlatSB_SetScrollPos(HWND, int code, int pos, BOOL fRedraw);
	int FlatSB_SetScrollInfo(HWND, int code, LPSCROLLINFO, BOOL fRedraw);
	int FlatSB_SetScrollRange(HWND, int code, int min, int max,
	  BOOL fRedraw);
	BOOL FlatSB_SetScrollProp(HWND, UINT index, INT_PTR newValue, BOOL);
	BOOL InitializeFlatSB(HWND);
	HRESULT UninitializeFlatSB(HWND);
}

alias FlatSB_GetScrollProp FlatSB_GetScrollPropPtr;
alias FlatSB_SetScrollProp FlatSB_SetScrollPropPtr;


// Miscellaneous
// -------------
extern(Windows)
	alias LRESULT function(HWND hWnd, UINT uMsg, WPARAM wParam,
	  LPARAM lParam, UINT_PTR uIdSubclass, DWORD_PTR dwRefData) SUBCLASSPROC;

extern(Windows) export {
	BOOL SetWindowSubclass(HWND hWnd, SUBCLASSPROC pfnSubclass,
	  UINT_PTR uIdSubclass, DWORD_PTR dwRefData);
	BOOL GetWindowSubclass(HWND hWnd, SUBCLASSPROC pfnSubclass,
	  UINT_PTR uIdSubclass, DWORD_PTR *pdwRefData);
	BOOL RemoveWindowSubclass(HWND hWnd, SUBCLASSPROC pfnSubclass,
	  UINT_PTR uIdSubclass);

	LRESULT DefSubclassProc(HWND hWnd, UINT uMsg, WPARAM wParam,
	  LPARAM lParam);
	int DrawShadowText(HDC hdc, LPCWSTR pszText, UINT cch, RECT* prc,
	  DWORD dwFlags, COLORREF crText, COLORREF crShadow,
	  int ixOffset, int iyOffset);
}
