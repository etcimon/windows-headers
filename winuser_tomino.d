module win32.winuser;

// Translated from Microsoft Platform SDK August 2001 Edition
// by Y.Tomino (demoonlit@inter7.jp)

import win32.winbase, win32.wingdi;
enum : uint {
  QS_POSTMESSAGE = 0x0008,
  QS_TIMER       = 0x0010,
  QS_PAINT       = 0x0020,
  QS_SENDMESSAGE = 0x0040,
  QS_HOTKEY      = 0x0080,
  QS_INPUT       = 0x0407
}

// #ifndef _WINUSER_
// #define _WINUSER_

// #if !defined(_USER32_)
// #define WINUSERAPI DECLSPEC_IMPORT
// #else
// #...
// #endif

// #ifdef _MAC
// #...
// #endif

// #ifdef __cplusplus
// extern "C" {
// #endif /* __cplusplus */

// #ifndef WINVER
// #...
// #endif /* !WINVER */

// #include <stdarg.h>

// #ifndef NOUSER

alias HANDLE HDWP;
alias VOID MENUTEMPLATEA;
alias VOID MENUTEMPLATEW;
// #ifdef UNICODE
alias MENUTEMPLATEW MENUTEMPLATE;
// #else
// ...
// #endif // UNICODE
alias PVOID LPMENUTEMPLATEA;
alias PVOID LPMENUTEMPLATEW;
// #ifdef UNICODE
alias LPMENUTEMPLATEW LPMENUTEMPLATE;
// #else
// ...
// #endif // UNICODE

extern(Windows) alias LRESULT function(HWND, UINT, WPARAM, LPARAM) WNDPROC;

// #ifdef STRICT

extern(Windows) alias INT_PTR function(HWND, UINT, WPARAM, LPARAM) DLGPROC;
extern(Windows) alias VOID function(HWND, UINT, UINT_PTR, DWORD) TIMERPROC;
extern(Windows) alias BOOL function(HDC, LPARAM, int) GRAYSTRINGPROC;
extern(Windows) alias BOOL function(HWND, LPARAM) WNDENUMPROC;
extern(Windows) alias LRESULT function(int code, WPARAM wParam, LPARAM lParam) HOOKPROC;
extern(Windows) alias VOID function(HWND, UINT, ULONG_PTR, LRESULT) SENDASYNCPROC;

extern(Windows) alias BOOL function(HWND, LPCSTR, HANDLE) PROPENUMPROCA;
extern(Windows) alias BOOL function(HWND, LPCWSTR, HANDLE) PROPENUMPROCW;

extern(Windows) alias BOOL function(HWND, LPSTR, HANDLE, ULONG_PTR) PROPENUMPROCEXA;
extern(Windows) alias BOOL function(HWND, LPWSTR, HANDLE, ULONG_PTR) PROPENUMPROCEXW;

extern(Windows) alias int function(LPSTR lpch, int ichCurrent, int cch, int code) EDITWORDBREAKPROCA;
extern(Windows) alias int function(LPWSTR lpch, int ichCurrent, int cch, int code) EDITWORDBREAKPROCW;

// #if(WINVER >= 0x0400)
extern(Windows) alias BOOL function(HDC hdc, LPARAM lData, WPARAM wData, int cx, int cy) DRAWSTATEPROC;
// #endif /* WINVER >= 0x0400 */
// #else /* !STRICT */

// ...

// ...

// ...

// ...

// #if(WINVER >= 0x0400)
// ...
// #endif /* WINVER >= 0x0400 */
// #endif /* !STRICT */

// #ifdef UNICODE
alias PROPENUMPROCW PROPENUMPROC;
alias PROPENUMPROCEXW PROPENUMPROCEX;
alias EDITWORDBREAKPROCW EDITWORDBREAKPROC;
// #else  /* !UNICODE */
// ...
// #endif /* UNICODE */

// #ifdef STRICT

extern(Windows) alias BOOL function(LPSTR, LPARAM) NAMEENUMPROCA;
extern(Windows) alias BOOL function(LPWSTR, LPARAM) NAMEENUMPROCW;

alias NAMEENUMPROCA WINSTAENUMPROCA;
alias NAMEENUMPROCA DESKTOPENUMPROCA;
alias NAMEENUMPROCW WINSTAENUMPROCW;
alias NAMEENUMPROCW DESKTOPENUMPROCW;

// #else /* !STRICT */

// ...

// #endif /* !STRICT */

// #ifdef UNICODE
alias WINSTAENUMPROCW WINSTAENUMPROC;
alias DESKTOPENUMPROCW DESKTOPENUMPROC;

// #else  /* !UNICODE */
// ...

// #endif /* UNICODE */

bit IS_INTRESOURCE(LPTSTR _r){ return ((cast(ULONG_PTR)(_r) >> 16) == 0); }
LPSTR MAKEINTRESOURCEA(WORD i){ return cast(LPSTR)(cast(ULONG_PTR)(cast(WORD)(i))); }
LPWSTR MAKEINTRESOURCEW(WORD i){ return cast(LPWSTR)(cast(ULONG_PTR)(cast(WORD)(i))); }
// #ifdef UNICODE
alias MAKEINTRESOURCEW MAKEINTRESOURCE;
// #else
// #...
// #endif // !UNICODE

// #ifndef NORESOURCE

const LPTSTR RT_CURSOR = cast(LPTSTR)(1);
const LPTSTR RT_BITMAP = cast(LPTSTR)(2);
const LPTSTR RT_ICON = cast(LPTSTR)(3);
const LPTSTR RT_MENU = cast(LPTSTR)(4);
const LPTSTR RT_DIALOG = cast(LPTSTR)(5);
const LPTSTR RT_STRING = cast(LPTSTR)(6);
const LPTSTR RT_FONTDIR = cast(LPTSTR)(7);
const LPTSTR RT_FONT = cast(LPTSTR)(8);
const LPTSTR RT_ACCELERATOR = cast(LPTSTR)(9);
const LPTSTR RT_RCDATA = cast(LPTSTR)(10);
const LPTSTR RT_MESSAGETABLE = cast(LPTSTR)(11);

enum : uint { DIFFERENCE = 11 }
const LPTSTR RT_GROUP_CURSOR = cast(LPTSTR)(cast(ULONG_PTR)RT_CURSOR + DIFFERENCE);
const LPTSTR RT_GROUP_ICON = cast(LPTSTR)(cast(ULONG_PTR)RT_ICON + DIFFERENCE);
const LPTSTR RT_VERSION = cast(LPTSTR)(16);
const LPTSTR RT_DLGINCLUDE = cast(LPTSTR)(17);
// #if(WINVER >= 0x0400)
const LPTSTR RT_PLUGPLAY = cast(LPTSTR)(19);
const LPTSTR RT_VXD = cast(LPTSTR)(20);
const LPTSTR RT_ANICURSOR = cast(LPTSTR)(21);
const LPTSTR RT_ANIICON = cast(LPTSTR)(22);
// #endif /* WINVER >= 0x0400 */
const LPTSTR RT_HTML = cast(LPTSTR)(23);
// #ifdef RC_INVOKED
// #...
// #...
// #...
// #...
// #...
// #...
// #else  /* RC_INVOKED */
const LPTSTR RT_MANIFEST = cast(LPTSTR)(24);
const LPTSTR CREATEPROCESS_MANIFEST_RESOURCE_ID = cast(LPTSTR)( 1);
const LPTSTR ISOLATIONAWARE_MANIFEST_RESOURCE_ID = cast(LPTSTR)(2);
const LPTSTR ISOLATIONAWARE_NOSTATICIMPORT_MANIFEST_RESOURCE_ID = cast(LPTSTR)(3);
const LPTSTR MINIMUM_RESERVED_MANIFEST_RESOURCE_ID = cast(LPTSTR)( 1 );
const LPTSTR MAXIMUM_RESERVED_MANIFEST_RESOURCE_ID = cast(LPTSTR)(16 );
// #endif /* RC_INVOKED */

// #endif /* !NORESOURCE */

/+extern(Windows) export int wvsprintfA(
  LPSTR,
  LPCSTR,
  va_list arglist);
extern(Windows) export int wvsprintfW(
  LPWSTR,
  LPCWSTR,
  va_list arglist);
// #ifdef UNICODE
alias wvsprintfW wvsprintf;
// #else
// #...
// #endif // !UNICODE
+/
extern(C) export int wsprintfA(
  LPSTR,
  LPCSTR,
  ...);
extern(C) export int wsprintfW(
  LPWSTR,
  LPCWSTR,
  ...);
// #ifdef UNICODE
alias wsprintfW wsprintf;
// #else
// #...
// #endif // !UNICODE

const LPWSTR SETWALLPAPER_DEFAULT = cast(LPWSTR)-1;

// #ifndef NOSCROLL

enum : uint { SB_HORZ = 0 }
enum : uint { SB_VERT = 1 }
enum : uint { SB_CTL = 2 }
enum : uint { SB_BOTH = 3 }

enum : uint { SB_LINEUP = 0 }
enum : uint { SB_LINELEFT = 0 }
enum : uint { SB_LINEDOWN = 1 }
enum : uint { SB_LINERIGHT = 1 }
enum : uint { SB_PAGEUP = 2 }
enum : uint { SB_PAGELEFT = 2 }
enum : uint { SB_PAGEDOWN = 3 }
enum : uint { SB_PAGERIGHT = 3 }
enum : uint { SB_THUMBPOSITION = 4 }
enum : uint { SB_THUMBTRACK = 5 }
enum : uint { SB_TOP = 6 }
enum : uint { SB_LEFT = 6 }
enum : uint { SB_BOTTOM = 7 }
enum : uint { SB_RIGHT = 7 }
enum : uint { SB_ENDSCROLL = 8 }

// #endif /* !NOSCROLL */

// #ifndef NOSHOWWINDOW

enum : uint { SW_HIDE = 0 }
enum : uint { SW_SHOWNORMAL = 1 }
enum : uint { SW_NORMAL = 1 }
enum : uint { SW_SHOWMINIMIZED = 2 }
enum : uint { SW_SHOWMAXIMIZED = 3 }
enum : uint { SW_MAXIMIZE = 3 }
enum : uint { SW_SHOWNOACTIVATE = 4 }
enum : uint { SW_SHOW = 5 }
enum : uint { SW_MINIMIZE = 6 }
enum : uint { SW_SHOWMINNOACTIVE = 7 }
enum : uint { SW_SHOWNA = 8 }
enum : uint { SW_RESTORE = 9 }
enum : uint { SW_SHOWDEFAULT = 10 }
enum : uint { SW_FORCEMINIMIZE = 11 }
enum : uint { SW_MAX = 11 }

enum : uint { HIDE_WINDOW = 0 }
enum : uint { SHOW_OPENWINDOW = 1 }
enum : uint { SHOW_ICONWINDOW = 2 }
enum : uint { SHOW_FULLSCREEN = 3 }
enum : uint { SHOW_OPENNOACTIVATE = 4 }

enum : uint { SW_PARENTCLOSING = 1 }
enum : uint { SW_OTHERZOOM = 2 }
enum : uint { SW_PARENTOPENING = 3 }
enum : uint { SW_OTHERUNZOOM = 4 }

// #endif /* !NOSHOWWINDOW */

// #if(WINVER >= 0x0500)

enum : uint { AW_HOR_POSITIVE = 0x00000001 }
enum : uint { AW_HOR_NEGATIVE = 0x00000002 }
enum : uint { AW_VER_POSITIVE = 0x00000004 }
enum : uint { AW_VER_NEGATIVE = 0x00000008 }
enum : uint { AW_CENTER = 0x00000010 }
enum : uint { AW_HIDE = 0x00010000 }
enum : uint { AW_ACTIVATE = 0x00020000 }
enum : uint { AW_SLIDE = 0x00040000 }
enum : uint { AW_BLEND = 0x00080000 }

// #endif /* WINVER >= 0x0500 */

enum : uint { KF_EXTENDED = 0x0100 }
enum : uint { KF_DLGMODE = 0x0800 }
enum : uint { KF_MENUMODE = 0x1000 }
enum : uint { KF_ALTDOWN = 0x2000 }
enum : uint { KF_REPEAT = 0x4000 }
enum : uint { KF_UP = 0x8000 }

// #ifndef NOVIRTUALKEYCODES

enum : uint { VK_LBUTTON = 0x01 }
enum : uint { VK_RBUTTON = 0x02 }
enum : uint { VK_CANCEL = 0x03 }
enum : uint { VK_MBUTTON = 0x04 }

// #if(_WIN32_WINNT >= 0x0500)
enum : uint { VK_XBUTTON1 = 0x05 }
enum : uint { VK_XBUTTON2 = 0x06 }
// #endif /* _WIN32_WINNT >= 0x0500 */

enum : uint { VK_BACK = 0x08 }
enum : uint { VK_TAB = 0x09 }

enum : uint { VK_CLEAR = 0x0C }
enum : uint { VK_RETURN = 0x0D }

enum : uint { VK_SHIFT = 0x10 }
enum : uint { VK_CONTROL = 0x11 }
enum : uint { VK_MENU = 0x12 }
enum : uint { VK_PAUSE = 0x13 }
enum : uint { VK_CAPITAL = 0x14 }

enum : uint { VK_KANA = 0x15 }
enum : uint { VK_HANGEUL = 0x15 }
enum : uint { VK_HANGUL = 0x15 }
enum : uint { VK_JUNJA = 0x17 }
enum : uint { VK_FINAL = 0x18 }
enum : uint { VK_HANJA = 0x19 }
enum : uint { VK_KANJI = 0x19 }

enum : uint { VK_ESCAPE = 0x1B }

enum : uint { VK_CONVERT = 0x1C }
enum : uint { VK_NONCONVERT = 0x1D }
enum : uint { VK_ACCEPT = 0x1E }
enum : uint { VK_MODECHANGE = 0x1F }

enum : uint { VK_SPACE = 0x20 }
enum : uint { VK_PRIOR = 0x21 }
enum : uint { VK_NEXT = 0x22 }
enum : uint { VK_END = 0x23 }
enum : uint { VK_HOME = 0x24 }
enum : uint { VK_LEFT = 0x25 }
enum : uint { VK_UP = 0x26 }
enum : uint { VK_RIGHT = 0x27 }
enum : uint { VK_DOWN = 0x28 }
enum : uint { VK_SELECT = 0x29 }
enum : uint { VK_PRINT = 0x2A }
enum : uint { VK_EXECUTE = 0x2B }
enum : uint { VK_SNAPSHOT = 0x2C }
enum : uint { VK_INSERT = 0x2D }
enum : uint { VK_DELETE = 0x2E }
enum : uint { VK_HELP = 0x2F }

enum : uint { VK_LWIN = 0x5B }
enum : uint { VK_RWIN = 0x5C }
enum : uint { VK_APPS = 0x5D }

enum : uint { VK_SLEEP = 0x5F }

enum : uint { VK_NUMPAD0 = 0x60 }
enum : uint { VK_NUMPAD1 = 0x61 }
enum : uint { VK_NUMPAD2 = 0x62 }
enum : uint { VK_NUMPAD3 = 0x63 }
enum : uint { VK_NUMPAD4 = 0x64 }
enum : uint { VK_NUMPAD5 = 0x65 }
enum : uint { VK_NUMPAD6 = 0x66 }
enum : uint { VK_NUMPAD7 = 0x67 }
enum : uint { VK_NUMPAD8 = 0x68 }
enum : uint { VK_NUMPAD9 = 0x69 }
enum : uint { VK_MULTIPLY = 0x6A }
enum : uint { VK_ADD = 0x6B }
enum : uint { VK_SEPARATOR = 0x6C }
enum : uint { VK_SUBTRACT = 0x6D }
enum : uint { VK_DECIMAL = 0x6E }
enum : uint { VK_DIVIDE = 0x6F }
enum : uint { VK_F1 = 0x70 }
enum : uint { VK_F2 = 0x71 }
enum : uint { VK_F3 = 0x72 }
enum : uint { VK_F4 = 0x73 }
enum : uint { VK_F5 = 0x74 }
enum : uint { VK_F6 = 0x75 }
enum : uint { VK_F7 = 0x76 }
enum : uint { VK_F8 = 0x77 }
enum : uint { VK_F9 = 0x78 }
enum : uint { VK_F10 = 0x79 }
enum : uint { VK_F11 = 0x7A }
enum : uint { VK_F12 = 0x7B }
enum : uint { VK_F13 = 0x7C }
enum : uint { VK_F14 = 0x7D }
enum : uint { VK_F15 = 0x7E }
enum : uint { VK_F16 = 0x7F }
enum : uint { VK_F17 = 0x80 }
enum : uint { VK_F18 = 0x81 }
enum : uint { VK_F19 = 0x82 }
enum : uint { VK_F20 = 0x83 }
enum : uint { VK_F21 = 0x84 }
enum : uint { VK_F22 = 0x85 }
enum : uint { VK_F23 = 0x86 }
enum : uint { VK_F24 = 0x87 }

enum : uint { VK_NUMLOCK = 0x90 }
enum : uint { VK_SCROLL = 0x91 }

enum : uint { VK_OEM_NEC_EQUAL = 0x92 }

enum : uint { VK_OEM_FJ_JISHO = 0x92 }
enum : uint { VK_OEM_FJ_MASSHOU = 0x93 }
enum : uint { VK_OEM_FJ_TOUROKU = 0x94 }
enum : uint { VK_OEM_FJ_LOYA = 0x95 }
enum : uint { VK_OEM_FJ_ROYA = 0x96 }

enum : uint { VK_LSHIFT = 0xA0 }
enum : uint { VK_RSHIFT = 0xA1 }
enum : uint { VK_LCONTROL = 0xA2 }
enum : uint { VK_RCONTROL = 0xA3 }
enum : uint { VK_LMENU = 0xA4 }
enum : uint { VK_RMENU = 0xA5 }

// #if(_WIN32_WINNT >= 0x0500)
enum : uint { VK_BROWSER_BACK = 0xA6 }
enum : uint { VK_BROWSER_FORWARD = 0xA7 }
enum : uint { VK_BROWSER_REFRESH = 0xA8 }
enum : uint { VK_BROWSER_STOP = 0xA9 }
enum : uint { VK_BROWSER_SEARCH = 0xAA }
enum : uint { VK_BROWSER_FAVORITES = 0xAB }
enum : uint { VK_BROWSER_HOME = 0xAC }

enum : uint { VK_VOLUME_MUTE = 0xAD }
enum : uint { VK_VOLUME_DOWN = 0xAE }
enum : uint { VK_VOLUME_UP = 0xAF }
enum : uint { VK_MEDIA_NEXT_TRACK = 0xB0 }
enum : uint { VK_MEDIA_PREV_TRACK = 0xB1 }
enum : uint { VK_MEDIA_STOP = 0xB2 }
enum : uint { VK_MEDIA_PLAY_PAUSE = 0xB3 }
enum : uint { VK_LAUNCH_MAIL = 0xB4 }
enum : uint { VK_LAUNCH_MEDIA_SELECT = 0xB5 }
enum : uint { VK_LAUNCH_APP1 = 0xB6 }
enum : uint { VK_LAUNCH_APP2 = 0xB7 }

// #endif /* _WIN32_WINNT >= 0x0500 */

enum : uint { VK_OEM_1 = 0xBA }
enum : uint { VK_OEM_PLUS = 0xBB }
enum : uint { VK_OEM_COMMA = 0xBC }
enum : uint { VK_OEM_MINUS = 0xBD }
enum : uint { VK_OEM_PERIOD = 0xBE }
enum : uint { VK_OEM_2 = 0xBF }
enum : uint { VK_OEM_3 = 0xC0 }

enum : uint { VK_OEM_4 = 0xDB }
enum : uint { VK_OEM_5 = 0xDC }
enum : uint { VK_OEM_6 = 0xDD }
enum : uint { VK_OEM_7 = 0xDE }
enum : uint { VK_OEM_8 = 0xDF }

enum : uint { VK_OEM_AX = 0xE1 }
enum : uint { VK_OEM_102 = 0xE2 }
enum : uint { VK_ICO_HELP = 0xE3 }
enum : uint { VK_ICO_00 = 0xE4 }

// #if(WINVER >= 0x0400)
enum : uint { VK_PROCESSKEY = 0xE5 }
// #endif /* WINVER >= 0x0400 */

enum : uint { VK_ICO_CLEAR = 0xE6 }

// #if(_WIN32_WINNT >= 0x0500)
enum : uint { VK_PACKET = 0xE7 }
// #endif /* _WIN32_WINNT >= 0x0500 */

enum : uint { VK_OEM_RESET = 0xE9 }
enum : uint { VK_OEM_JUMP = 0xEA }
enum : uint { VK_OEM_PA1 = 0xEB }
enum : uint { VK_OEM_PA2 = 0xEC }
enum : uint { VK_OEM_PA3 = 0xED }
enum : uint { VK_OEM_WSCTRL = 0xEE }
enum : uint { VK_OEM_CUSEL = 0xEF }
enum : uint { VK_OEM_ATTN = 0xF0 }
enum : uint { VK_OEM_FINISH = 0xF1 }
enum : uint { VK_OEM_COPY = 0xF2 }
enum : uint { VK_OEM_AUTO = 0xF3 }
enum : uint { VK_OEM_ENLW = 0xF4 }
enum : uint { VK_OEM_BACKTAB = 0xF5 }

enum : uint { VK_ATTN = 0xF6 }
enum : uint { VK_CRSEL = 0xF7 }
enum : uint { VK_EXSEL = 0xF8 }
enum : uint { VK_EREOF = 0xF9 }
enum : uint { VK_PLAY = 0xFA }
enum : uint { VK_ZOOM = 0xFB }
enum : uint { VK_NONAME = 0xFC }
enum : uint { VK_PA1 = 0xFD }
enum : uint { VK_OEM_CLEAR = 0xFE }

// #endif /* !NOVIRTUALKEYCODES */

// #ifndef NOWH

enum { WH_MIN = -1 }
enum { WH_MSGFILTER = -1 }
enum : uint { WH_JOURNALRECORD = 0 }
enum : uint { WH_JOURNALPLAYBACK = 1 }
enum : uint { WH_KEYBOARD = 2 }
enum : uint { WH_GETMESSAGE = 3 }
enum : uint { WH_CALLWNDPROC = 4 }
enum : uint { WH_CBT = 5 }
enum : uint { WH_SYSMSGFILTER = 6 }
enum : uint { WH_MOUSE = 7 }
// #if defined(_WIN32_WINDOWS)
// #...
// #endif
enum : uint { WH_DEBUG = 9 }
enum : uint { WH_SHELL = 10 }
enum : uint { WH_FOREGROUNDIDLE = 11 }
// #if(WINVER >= 0x0400)
enum : uint { WH_CALLWNDPROCRET = 12 }
// #endif /* WINVER >= 0x0400 */

// #if (_WIN32_WINNT >= 0x0400)
enum : uint { WH_KEYBOARD_LL = 13 }
enum : uint { WH_MOUSE_LL = 14 }
// #endif // (_WIN32_WINNT >= 0x0400)

// #if(WINVER >= 0x0400)
// #if (_WIN32_WINNT >= 0x0400)
enum : uint { WH_MAX = 14 }
// #else
// #...
// #endif // (_WIN32_WINNT >= 0x0400)
// #else
// #...
// #endif

alias WH_MIN WH_MINHOOK;
alias WH_MAX WH_MAXHOOK;

enum : uint { HC_ACTION = 0 }
enum : uint { HC_GETNEXT = 1 }
enum : uint { HC_SKIP = 2 }
enum : uint { HC_NOREMOVE = 3 }
alias HC_NOREMOVE HC_NOREM;
enum : uint { HC_SYSMODALON = 4 }
enum : uint { HC_SYSMODALOFF = 5 }

enum : uint { HCBT_MOVESIZE = 0 }
enum : uint { HCBT_MINMAX = 1 }
enum : uint { HCBT_QS = 2 }
enum : uint { HCBT_CREATEWND = 3 }
enum : uint { HCBT_DESTROYWND = 4 }
enum : uint { HCBT_ACTIVATE = 5 }
enum : uint { HCBT_CLICKSKIPPED = 6 }
enum : uint { HCBT_KEYSKIPPED = 7 }
enum : uint { HCBT_SYSCOMMAND = 8 }
enum : uint { HCBT_SETFOCUS = 9 }

struct tagCBT_CREATEWNDA {
  tagCREATESTRUCTA *lpcs;
  HWND hwndInsertAfter;
}
alias tagCBT_CREATEWNDA CBT_CREATEWNDA;
alias tagCBT_CREATEWNDA* LPCBT_CREATEWNDA;

struct tagCBT_CREATEWNDW {
  tagCREATESTRUCTW *lpcs;
  HWND hwndInsertAfter;
}
alias tagCBT_CREATEWNDW CBT_CREATEWNDW;
alias tagCBT_CREATEWNDW* LPCBT_CREATEWNDW;

// #ifdef UNICODE
alias CBT_CREATEWNDW CBT_CREATEWND;
alias LPCBT_CREATEWNDW LPCBT_CREATEWND;
// #else
// ...
// #endif // UNICODE

struct tagCBTACTIVATESTRUCT {
  BOOL fMouse;
  HWND hWndActive;
}
alias tagCBTACTIVATESTRUCT CBTACTIVATESTRUCT;
alias tagCBTACTIVATESTRUCT* LPCBTACTIVATESTRUCT;

// #if(_WIN32_WINNT >= 0x0501)

struct tagWTSSESSION_NOTIFICATION {
  DWORD cbSize;
  DWORD dwSessionId;
}
alias tagWTSSESSION_NOTIFICATION WTSSESSION_NOTIFICATION;
alias tagWTSSESSION_NOTIFICATION* PWTSSESSION_NOTIFICATION;

enum : uint { WTS_CONSOLE_CONNECT = 0x1 }
enum : uint { WTS_CONSOLE_DISCONNECT = 0x2 }
enum : uint { WTS_REMOTE_CONNECT = 0x3 }
enum : uint { WTS_REMOTE_DISCONNECT = 0x4 }
enum : uint { WTS_SESSION_LOGON = 0x5 }
enum : uint { WTS_SESSION_LOGOFF = 0x6 }
enum : uint { WTS_SESSION_LOCK = 0x7 }
enum : uint { WTS_SESSION_UNLOCK = 0x8 }

// #endif /* _WIN32_WINNT >= 0x0501 */

enum : uint { MSGF_DIALOGBOX = 0 }
enum : uint { MSGF_MESSAGEBOX = 1 }
enum : uint { MSGF_MENU = 2 }
enum : uint { MSGF_SCROLLBAR = 5 }
enum : uint { MSGF_NEXTWINDOW = 6 }
enum : uint { MSGF_MAX = 8 }
enum : uint { MSGF_USER = 4096 }

enum : uint { HSHELL_WINDOWCREATED = 1 }
enum : uint { HSHELL_WINDOWDESTROYED = 2 }
enum : uint { HSHELL_ACTIVATESHELLWINDOW = 3 }

// #if(WINVER >= 0x0400)
enum : uint { HSHELL_WINDOWACTIVATED = 4 }
enum : uint { HSHELL_GETMINRECT = 5 }
enum : uint { HSHELL_REDRAW = 6 }
enum : uint { HSHELL_TASKMAN = 7 }
enum : uint { HSHELL_LANGUAGE = 8 }
// #endif /* WINVER >= 0x0400 */
// #if(_WIN32_WINNT >= 0x0500)
enum : uint { HSHELL_ACCESSIBILITYSTATE = 11 }
enum : uint { HSHELL_APPCOMMAND = 12 }
// #endif /* _WIN32_WINNT >= 0x0500 */

// #if(_WIN32_WINNT >= 0x0501)
enum : uint { HSHELL_WINDOWREPLACED = 13 }
// #endif /* _WIN32_WINNT >= 0x0501 */

// #if(_WIN32_WINNT >= 0x0500)

enum : uint { ACCESS_STICKYKEYS = 0x0001 }
enum : uint { ACCESS_FILTERKEYS = 0x0002 }
enum : uint { ACCESS_MOUSEKEYS = 0x0003 }

enum : uint { APPCOMMAND_BROWSER_BACKWARD = 1 }
enum : uint { APPCOMMAND_BROWSER_FORWARD = 2 }
enum : uint { APPCOMMAND_BROWSER_REFRESH = 3 }
enum : uint { APPCOMMAND_BROWSER_STOP = 4 }
enum : uint { APPCOMMAND_BROWSER_SEARCH = 5 }
enum : uint { APPCOMMAND_BROWSER_FAVORITES = 6 }
enum : uint { APPCOMMAND_BROWSER_HOME = 7 }
enum : uint { APPCOMMAND_VOLUME_MUTE = 8 }
enum : uint { APPCOMMAND_VOLUME_DOWN = 9 }
enum : uint { APPCOMMAND_VOLUME_UP = 10 }
enum : uint { APPCOMMAND_MEDIA_NEXTTRACK = 11 }
enum : uint { APPCOMMAND_MEDIA_PREVIOUSTRACK = 12 }
enum : uint { APPCOMMAND_MEDIA_STOP = 13 }
enum : uint { APPCOMMAND_MEDIA_PLAY_PAUSE = 14 }
enum : uint { APPCOMMAND_LAUNCH_MAIL = 15 }
enum : uint { APPCOMMAND_LAUNCH_MEDIA_SELECT = 16 }
enum : uint { APPCOMMAND_LAUNCH_APP1 = 17 }
enum : uint { APPCOMMAND_LAUNCH_APP2 = 18 }
enum : uint { APPCOMMAND_BASS_DOWN = 19 }
enum : uint { APPCOMMAND_BASS_BOOST = 20 }
enum : uint { APPCOMMAND_BASS_UP = 21 }
enum : uint { APPCOMMAND_TREBLE_DOWN = 22 }
enum : uint { APPCOMMAND_TREBLE_UP = 23 }
// #if(_WIN32_WINNT >= 0x0501)
enum : uint { APPCOMMAND_MICROPHONE_VOLUME_MUTE = 24 }
enum : uint { APPCOMMAND_MICROPHONE_VOLUME_DOWN = 25 }
enum : uint { APPCOMMAND_MICROPHONE_VOLUME_UP = 26 }
enum : uint { APPCOMMAND_HELP = 27 }
enum : uint { APPCOMMAND_FIND = 28 }
enum : uint { APPCOMMAND_NEW = 29 }
enum : uint { APPCOMMAND_OPEN = 30 }
enum : uint { APPCOMMAND_CLOSE = 31 }
enum : uint { APPCOMMAND_SAVE = 32 }
enum : uint { APPCOMMAND_PRINT = 33 }
enum : uint { APPCOMMAND_UNDO = 34 }
enum : uint { APPCOMMAND_REDO = 35 }
enum : uint { APPCOMMAND_COPY = 36 }
enum : uint { APPCOMMAND_CUT = 37 }
enum : uint { APPCOMMAND_PASTE = 38 }
enum : uint { APPCOMMAND_REPLY_TO_MAIL = 39 }
enum : uint { APPCOMMAND_FORWARD_MAIL = 40 }
enum : uint { APPCOMMAND_SEND_MAIL = 41 }
enum : uint { APPCOMMAND_SPELL_CHECK = 42 }
enum : uint { APPCOMMAND_DICTATE_OR_COMMAND_CONTROL_TOGGLE = 43 }
enum : uint { APPCOMMAND_MIC_ON_OFF_TOGGLE = 44 }
enum : uint { APPCOMMAND_CORRECTION_LIST = 45 }
// #endif /* _WIN32_WINNT >= 0x0501 */

enum : uint { FAPPCOMMAND_MOUSE = 0x8000 }
enum : uint { FAPPCOMMAND_KEY = 0 }
enum : uint { FAPPCOMMAND_OEM = 0x1000 }
enum : uint { FAPPCOMMAND_MASK = 0xF000 }

// #define GET_APPCOMMAND_LPARAM(lParam) ((short)(HIWORD(lParam) & ~FAPPCOMMAND_MASK))
// #define GET_DEVICE_LPARAM(lParam) ((WORD)(HIWORD(lParam) & FAPPCOMMAND_MASK))
// #define GET_MOUSEORKEY_LPARAM GET_DEVICE_LPARAM
// #define GET_FLAGS_LPARAM(lParam) (LOWORD(lParam))
// #define GET_KEYSTATE_LPARAM(lParam) GET_FLAGS_LPARAM(lParam)
// #endif /* _WIN32_WINNT >= 0x0500 */

struct tagEVENTMSG {
  UINT message;
  UINT paramL;
  UINT paramH;
  DWORD time;
  HWND hwnd;
}
alias tagEVENTMSG EVENTMSG;
alias tagEVENTMSG* PEVENTMSGMSG;
alias tagEVENTMSG* NPEVENTMSGMSG;
alias tagEVENTMSG* LPEVENTMSGMSG;

alias tagEVENTMSG* PEVENTMSG;
alias tagEVENTMSG* NPEVENTMSG;
alias tagEVENTMSG* LPEVENTMSG;

struct tagCWPSTRUCT {
  LPARAM lParam;
  WPARAM wParam;
  UINT message;
  HWND hwnd;
}
alias tagCWPSTRUCT CWPSTRUCT;
alias tagCWPSTRUCT* PCWPSTRUCT;
alias tagCWPSTRUCT* NPCWPSTRUCT;
alias tagCWPSTRUCT* LPCWPSTRUCT;

// #if(WINVER >= 0x0400)

struct tagCWPRETSTRUCT {
  LRESULT lResult;
  LPARAM lParam;
  WPARAM wParam;
  UINT message;
  HWND hwnd;
}
alias tagCWPRETSTRUCT CWPRETSTRUCT;
alias tagCWPRETSTRUCT* PCWPRETSTRUCT;
alias tagCWPRETSTRUCT* NPCWPRETSTRUCT;
alias tagCWPRETSTRUCT* LPCWPRETSTRUCT;

// #endif /* WINVER >= 0x0400 */

// #if (_WIN32_WINNT >= 0x0400)

enum : uint { LLKHF_EXTENDED = KF_EXTENDED >> 8 }
enum : uint { LLKHF_INJECTED = 0x00000010 }
enum : uint { LLKHF_ALTDOWN = KF_ALTDOWN >> 8 }
enum : uint { LLKHF_UP = KF_UP >> 8 }

enum : uint { LLMHF_INJECTED = 0x00000001 }

struct tagKBDLLHOOKSTRUCT {
  DWORD vkCode;
  DWORD scanCode;
  DWORD flags;
  DWORD time;
  ULONG_PTR dwExtraInfo;
}
alias tagKBDLLHOOKSTRUCT KBDLLHOOKSTRUCT;
alias tagKBDLLHOOKSTRUCT* LPKBDLLHOOKSTRUCT;
alias tagKBDLLHOOKSTRUCT* PKBDLLHOOKSTRUCT;

struct tagMSLLHOOKSTRUCT {
  POINT pt;
  DWORD mouseData;
  DWORD flags;
  DWORD time;
  ULONG_PTR dwExtraInfo;
}
alias tagMSLLHOOKSTRUCT MSLLHOOKSTRUCT;
alias tagMSLLHOOKSTRUCT* LPMSLLHOOKSTRUCT;
alias tagMSLLHOOKSTRUCT* PMSLLHOOKSTRUCT;

// #endif // (_WIN32_WINNT >= 0x0400)

struct tagDEBUGHOOKINFO {
  DWORD idThread;
  DWORD idThreadInstaller;
  LPARAM lParam;
  WPARAM wParam;
  int code;
}
alias tagDEBUGHOOKINFO DEBUGHOOKINFO;
alias tagDEBUGHOOKINFO* PDEBUGHOOKINFO;
alias tagDEBUGHOOKINFO* NPDEBUGHOOKINFO;
alias tagDEBUGHOOKINFO* LPDEBUGHOOKINFO;

struct tagMOUSEHOOKSTRUCT {
  POINT pt;
  HWND hwnd;
  UINT wHitTestCode;
  ULONG_PTR dwExtraInfo;
}
alias tagMOUSEHOOKSTRUCT MOUSEHOOKSTRUCT;
alias tagMOUSEHOOKSTRUCT* LPMOUSEHOOKSTRUCT;
alias tagMOUSEHOOKSTRUCT* PMOUSEHOOKSTRUCT;

// #if(_WIN32_WINNT >= 0x0500)
// #ifdef __cplusplus
struct tagMOUSEHOOKSTRUCTEX {
  POINT pt;
  HWND hwnd;
  UINT wHitTestCode;
  ULONG_PTR dwExtraInfo;
  DWORD mouseData;
}
alias tagMOUSEHOOKSTRUCTEX MOUSEHOOKSTRUCTEX;
alias tagMOUSEHOOKSTRUCTEX* LPMOUSEHOOKSTRUCTEX;
alias tagMOUSEHOOKSTRUCTEX* PMOUSEHOOKSTRUCTEX;

// #else // ndef __cplusplus
// ...
// #endif
// #endif /* _WIN32_WINNT >= 0x0500 */

// #if(WINVER >= 0x0400)

struct tagHARDWAREHOOKSTRUCT {
  HWND hwnd;
  UINT message;
  WPARAM wParam;
  LPARAM lParam;
}
alias tagHARDWAREHOOKSTRUCT HARDWAREHOOKSTRUCT;
alias tagHARDWAREHOOKSTRUCT* LPHARDWAREHOOKSTRUCT;
alias tagHARDWAREHOOKSTRUCT* PHARDWAREHOOKSTRUCT;

// #endif /* WINVER >= 0x0400 */
// #endif /* !NOWH */

enum : uint { HKL_PREV = 0 }
enum : uint { HKL_NEXT = 1 }

enum : uint { KLF_ACTIVATE = 0x00000001 }
enum : uint { KLF_SUBSTITUTE_OK = 0x00000002 }
enum : uint { KLF_REORDER = 0x00000008 }
// #if(WINVER >= 0x0400)
enum : uint { KLF_REPLACELANG = 0x00000010 }
enum : uint { KLF_NOTELLSHELL = 0x00000080 }
// #endif /* WINVER >= 0x0400 */
enum : uint { KLF_SETFORPROCESS = 0x00000100 }
// #if(_WIN32_WINNT >= 0x0500)
enum : uint { KLF_SHIFTLOCK = 0x00010000 }
enum : uint { KLF_RESET = 0x40000000 }
// #endif /* _WIN32_WINNT >= 0x0500 */

// #if(WINVER >= 0x0500)

enum : uint { INPUTLANGCHANGE_SYSCHARSET = 0x0001 }
enum : uint { INPUTLANGCHANGE_FORWARD = 0x0002 }
enum : uint { INPUTLANGCHANGE_BACKWARD = 0x0004 }
// #endif /* WINVER >= 0x0500 */

enum : uint { KL_NAMELENGTH = 9 }

extern(Windows) export HKL LoadKeyboardLayoutA(
  LPCSTR pwszKLID,
  UINT Flags);
extern(Windows) export HKL LoadKeyboardLayoutW(
  LPCWSTR pwszKLID,
  UINT Flags);
// #ifdef UNICODE
alias LoadKeyboardLayoutW LoadKeyboardLayout;
// #else
// #...
// #endif // !UNICODE

// #if(WINVER >= 0x0400)
extern(Windows) export HKL ActivateKeyboardLayout(
  HKL hkl,
  UINT Flags);
// #else
// ...
// #endif /* WINVER >= 0x0400 */

// #if(WINVER >= 0x0400)
extern(Windows) export int ToUnicodeEx(
  UINT wVirtKey,
  UINT wScanCode,
  BYTE *lpKeyState,
  LPWSTR pwszBuff,
  int cchBuff,
  UINT wFlags,
  HKL dwhkl);
// #endif /* WINVER >= 0x0400 */

extern(Windows) export BOOL UnloadKeyboardLayout(
  HKL hkl);

extern(Windows) export BOOL GetKeyboardLayoutNameA(
  LPSTR pwszKLID);
extern(Windows) export BOOL GetKeyboardLayoutNameW(
  LPWSTR pwszKLID);
// #ifdef UNICODE
alias GetKeyboardLayoutNameW GetKeyboardLayoutName;
// #else
// #...
// #endif // !UNICODE

// #if(WINVER >= 0x0400)
extern(Windows) export int GetKeyboardLayoutList(
  int nBuff,
  HKL *lpList);

extern(Windows) export HKL GetKeyboardLayout(
  DWORD idThread
);
// #endif /* WINVER >= 0x0400 */

// #if(WINVER >= 0x0500)

struct tagMOUSEMOVEPOINT {
  int x;
  int y;
  DWORD time;
  ULONG_PTR dwExtraInfo;
}
alias tagMOUSEMOVEPOINT MOUSEMOVEPOINT;
alias tagMOUSEMOVEPOINT* PMOUSEMOVEPOINT;
alias tagMOUSEMOVEPOINT* LPMOUSEMOVEPOINT;

enum : uint { GMMP_USE_DISPLAY_POINTS = 1 }
enum : uint { GMMP_USE_HIGH_RESOLUTION_POINTS = 2 }

extern(Windows) export int GetMouseMovePointsEx(
  UINT cbSize,
  LPMOUSEMOVEPOINT lppt,
  LPMOUSEMOVEPOINT lpptBuf,
  int nBufPoints,
  DWORD resolution
);

// #endif /* WINVER >= 0x0500 */

// #ifndef NODESKTOP

enum : uint { DESKTOP_READOBJECTS = 0x0001 }
enum : uint { DESKTOP_CREATEWINDOW = 0x0002 }
enum : uint { DESKTOP_CREATEMENU = 0x0004 }
enum : uint { DESKTOP_HOOKCONTROL = 0x0008 }
enum : uint { DESKTOP_JOURNALRECORD = 0x0010 }
enum : uint { DESKTOP_JOURNALPLAYBACK = 0x0020 }
enum : uint { DESKTOP_ENUMERATE = 0x0040 }
enum : uint { DESKTOP_WRITEOBJECTS = 0x0080 }
enum : uint { DESKTOP_SWITCHDESKTOP = 0x0100 }

enum : uint { DF_ALLOWOTHERACCOUNTHOOK = 0x0001 }

// #ifdef _WINGDI_
// #ifndef NOGDI

// ...
// #ifdef UNICODE
// #...
// #else
// #...
// #endif // !UNICODE

// #endif /* NOGDI */
// #endif /* _WINGDI_ */

extern(Windows) export HDESK OpenDesktopA(
  LPCSTR lpszDesktop,
  DWORD dwFlags,
  BOOL fInherit,
  ACCESS_MASK dwDesiredAccess);
extern(Windows) export HDESK OpenDesktopW(
  LPCWSTR lpszDesktop,
  DWORD dwFlags,
  BOOL fInherit,
  ACCESS_MASK dwDesiredAccess);
// #ifdef UNICODE
alias OpenDesktopW OpenDesktop;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export HDESK OpenInputDesktop(
  DWORD dwFlags,
  BOOL fInherit,
  ACCESS_MASK dwDesiredAccess);

extern(Windows) export BOOL EnumDesktopsA(
  HWINSTA hwinsta,
  DESKTOPENUMPROCA lpEnumFunc,
  LPARAM lParam);
extern(Windows) export BOOL EnumDesktopsW(
  HWINSTA hwinsta,
  DESKTOPENUMPROCW lpEnumFunc,
  LPARAM lParam);
// #ifdef UNICODE
alias EnumDesktopsW EnumDesktops;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL EnumDesktopWindows(
  HDESK hDesktop,
  WNDENUMPROC lpfn,
  LPARAM lParam);

extern(Windows) export BOOL SwitchDesktop(
  HDESK hDesktop);

extern(Windows) export BOOL SetThreadDesktop(
  HDESK hDesktop);

extern(Windows) export BOOL CloseDesktop(
  HDESK hDesktop);

extern(Windows) export HDESK GetThreadDesktop(
  DWORD dwThreadId);
// #endif  /* !NODESKTOP */

// #ifndef NOWINDOWSTATION

enum : uint { WINSTA_ENUMDESKTOPS = 0x0001 }
enum : uint { WINSTA_READATTRIBUTES = 0x0002 }
enum : uint { WINSTA_ACCESSCLIPBOARD = 0x0004 }
enum : uint { WINSTA_CREATEDESKTOP = 0x0008 }
enum : uint { WINSTA_WRITEATTRIBUTES = 0x0010 }
enum : uint { WINSTA_ACCESSGLOBALATOMS = 0x0020 }
enum : uint { WINSTA_EXITWINDOWS = 0x0040 }
enum : uint { WINSTA_ENUMERATE = 0x0100 }
enum : uint { WINSTA_READSCREEN = 0x0200 }

enum : uint { WSF_VISIBLE = 0x0001 }

extern(Windows) export HWINSTA CreateWindowStationA(
  LPCSTR lpwinsta,
  DWORD dwReserved,
  ACCESS_MASK dwDesiredAccess,
  LPSECURITY_ATTRIBUTES lpsa);
extern(Windows) export HWINSTA CreateWindowStationW(
  LPCWSTR lpwinsta,
  DWORD dwReserved,
  ACCESS_MASK dwDesiredAccess,
  LPSECURITY_ATTRIBUTES lpsa);
// #ifdef UNICODE
alias CreateWindowStationW CreateWindowStation;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export HWINSTA OpenWindowStationA(
  LPCSTR lpszWinSta,
  BOOL fInherit,
  ACCESS_MASK dwDesiredAccess);
extern(Windows) export HWINSTA OpenWindowStationW(
  LPCWSTR lpszWinSta,
  BOOL fInherit,
  ACCESS_MASK dwDesiredAccess);
// #ifdef UNICODE
alias OpenWindowStationW OpenWindowStation;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL EnumWindowStationsA(
  WINSTAENUMPROCA lpEnumFunc,
  LPARAM lParam);
extern(Windows) export BOOL EnumWindowStationsW(
  WINSTAENUMPROCW lpEnumFunc,
  LPARAM lParam);
// #ifdef UNICODE
alias EnumWindowStationsW EnumWindowStations;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL CloseWindowStation(
  HWINSTA hWinSta);

extern(Windows) export BOOL SetProcessWindowStation(
  HWINSTA hWinSta);

extern(Windows) export HWINSTA GetProcessWindowStation();
// #endif  /* !NOWINDOWSTATION */

// #ifndef NOSECURITY

extern(Windows) export BOOL SetUserObjectSecurity(
  HANDLE hObj,
  PSECURITY_INFORMATION pSIRequested,
  PSECURITY_DESCRIPTOR pSID);

extern(Windows) export BOOL GetUserObjectSecurity(
  HANDLE hObj,
  PSECURITY_INFORMATION pSIRequested,
  PSECURITY_DESCRIPTOR pSID,
  DWORD nLength,
  LPDWORD lpnLengthNeeded);

enum : uint { UOI_FLAGS = 1 }
enum : uint { UOI_NAME = 2 }
enum : uint { UOI_TYPE = 3 }
enum : uint { UOI_USER_SID = 4 }

struct tagUSEROBJECTFLAGS {
  BOOL fInherit;
  BOOL fReserved;
  DWORD dwFlags;
}
alias tagUSEROBJECTFLAGS USEROBJECTFLAGS;
alias tagUSEROBJECTFLAGS* PUSEROBJECTFLAGS;

extern(Windows) export BOOL GetUserObjectInformationA(
  HANDLE hObj,
  int nIndex,
  PVOID pvInfo,
  DWORD nLength,
  LPDWORD lpnLengthNeeded);
extern(Windows) export BOOL GetUserObjectInformationW(
  HANDLE hObj,
  int nIndex,
  PVOID pvInfo,
  DWORD nLength,
  LPDWORD lpnLengthNeeded);
// #ifdef UNICODE
alias GetUserObjectInformationW GetUserObjectInformation;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL SetUserObjectInformationA(
  HANDLE hObj,
  int nIndex,
  PVOID pvInfo,
  DWORD nLength);
extern(Windows) export BOOL SetUserObjectInformationW(
  HANDLE hObj,
  int nIndex,
  PVOID pvInfo,
  DWORD nLength);
// #ifdef UNICODE
alias SetUserObjectInformationW SetUserObjectInformation;
// #else
// #...
// #endif // !UNICODE

// #endif  /* !NOSECURITY */

// #if(WINVER >= 0x0400)
struct tagWNDCLASSEXA {
  UINT cbSize;
  UINT style;
  WNDPROC lpfnWndProc;
  int cbClsExtra;
  int cbWndExtra;
  HINSTANCE hInstance;
  HICON hIcon;
  HCURSOR hCursor;
  HBRUSH hbrBackground;
  LPCSTR lpszMenuName;
  LPCSTR lpszClassName;
  HICON hIconSm;
}
alias tagWNDCLASSEXA WNDCLASSEXA;
alias tagWNDCLASSEXA* PWNDCLASSEXA;
alias tagWNDCLASSEXA* NPWNDCLASSEXA;
alias tagWNDCLASSEXA* LPWNDCLASSEXA;

struct tagWNDCLASSEXW {
  UINT cbSize;
  UINT style;
  WNDPROC lpfnWndProc;
  int cbClsExtra;
  int cbWndExtra;
  HINSTANCE hInstance;
  HICON hIcon;
  HCURSOR hCursor;
  HBRUSH hbrBackground;
  LPCWSTR lpszMenuName;
  LPCWSTR lpszClassName;
  HICON hIconSm;
}
alias tagWNDCLASSEXW WNDCLASSEXW;
alias tagWNDCLASSEXW* PWNDCLASSEXW;
alias tagWNDCLASSEXW* NPWNDCLASSEXW;
alias tagWNDCLASSEXW* LPWNDCLASSEXW;

// #ifdef UNICODE
alias WNDCLASSEXW WNDCLASSEX;
alias PWNDCLASSEXW PWNDCLASSEX;
alias NPWNDCLASSEXW NPWNDCLASSEX;
alias LPWNDCLASSEXW LPWNDCLASSEX;
// #else
// ...
// #endif // UNICODE
// #endif /* WINVER >= 0x0400 */

struct tagWNDCLASSA {
  UINT style;
  WNDPROC lpfnWndProc;
  int cbClsExtra;
  int cbWndExtra;
  HINSTANCE hInstance;
  HICON hIcon;
  HCURSOR hCursor;
  HBRUSH hbrBackground;
  LPCSTR lpszMenuName;
  LPCSTR lpszClassName;
}
alias tagWNDCLASSA WNDCLASSA;
alias tagWNDCLASSA* PWNDCLASSA;
alias tagWNDCLASSA* NPWNDCLASSA;
alias tagWNDCLASSA* LPWNDCLASSA;

struct tagWNDCLASSW {
  UINT style;
  WNDPROC lpfnWndProc;
  int cbClsExtra;
  int cbWndExtra;
  HINSTANCE hInstance;
  HICON hIcon;
  HCURSOR hCursor;
  HBRUSH hbrBackground;
  LPCWSTR lpszMenuName;
  LPCWSTR lpszClassName;
}
alias tagWNDCLASSW WNDCLASSW;
alias tagWNDCLASSW* PWNDCLASSW;
alias tagWNDCLASSW* NPWNDCLASSW;
alias tagWNDCLASSW* LPWNDCLASSW;

// #ifdef UNICODE
alias WNDCLASSW WNDCLASS;
alias PWNDCLASSW PWNDCLASS;
alias NPWNDCLASSW NPWNDCLASS;
alias LPWNDCLASSW LPWNDCLASS;
// #else
// ...
// #endif // UNICODE

// #ifndef NOMSG

struct tagMSG {
  HWND hwnd;
  UINT message;
  WPARAM wParam;
  LPARAM lParam;
  DWORD time;
  POINT pt;
// #ifdef _MAC
// ...
// #endif
}
alias tagMSG MSG;
alias tagMSG* PMSG;
alias tagMSG* NPMSG;
alias tagMSG* LPMSG;

// #define POINTSTOPOINT(pt, pts) { (pt).x = (LONG)(SHORT)LOWORD(*(LONG*)&pts); (pt).y = (LONG)(SHORT)HIWORD(*(LONG*)&pts); }

// #define POINTTOPOINTS(pt) (MAKELONG((short)((pt).x), (short)((pt).y)))
alias MAKELONG MAKEWPARAM;
alias MAKELONG MAKELPARAM;
alias MAKELONG MAKELRESULT;

// #endif /* !NOMSG */

// #ifndef NOWINOFFSETS

enum { GWL_WNDPROC = -4 }
enum { GWL_HINSTANCE = -6 }
enum { GWL_HWNDPARENT = -8 }
enum { GWL_STYLE = -16 }
enum { GWL_EXSTYLE = -20 }
enum { GWL_USERDATA = -21 }
enum { GWL_ID = -12 }

// #ifdef _WIN64

// #...
// #...
// #...
// #...

// #endif /* _WIN64 */

enum { GWLP_WNDPROC = -4 }
enum { GWLP_HINSTANCE = -6 }
enum { GWLP_HWNDPARENT = -8 }
enum { GWLP_USERDATA = -21 }
enum { GWLP_ID = -12 }

enum { GCL_MENUNAME = -8 }
enum { GCL_HBRBACKGROUND = -10 }
enum { GCL_HCURSOR = -12 }
enum { GCL_HICON = -14 }
enum { GCL_HMODULE = -16 }
enum { GCL_CBWNDEXTRA = -18 }
enum { GCL_CBCLSEXTRA = -20 }
enum { GCL_WNDPROC = -24 }
enum { GCL_STYLE = -26 }
enum { GCW_ATOM = -32 }

// #if(WINVER >= 0x0400)
enum { GCL_HICONSM = -34 }
// #endif /* WINVER >= 0x0400 */

// #ifdef _WIN64

// #...
// #...
// #...
// #...
// #...
// #...
// #...

// #endif /* _WIN64 */

enum { GCLP_MENUNAME = -8 }
enum { GCLP_HBRBACKGROUND = -10 }
enum { GCLP_HCURSOR = -12 }
enum { GCLP_HICON = -14 }
enum { GCLP_HMODULE = -16 }
enum { GCLP_WNDPROC = -24 }
enum { GCLP_HICONSM = -34 }

// #endif /* !NOWINOFFSETS */

// #ifndef NOWINMESSAGES

enum : uint { WM_NULL = 0x0000 }
enum : uint { WM_CREATE = 0x0001 }
enum : uint { WM_DESTROY = 0x0002 }
enum : uint { WM_MOVE = 0x0003 }
enum : uint { WM_SIZE = 0x0005 }

enum : uint { WM_ACTIVATE = 0x0006 }

enum : uint { WA_INACTIVE = 0 }
enum : uint { WA_ACTIVE = 1 }
enum : uint { WA_CLICKACTIVE = 2 }

enum : uint { WM_SETFOCUS = 0x0007 }
enum : uint { WM_KILLFOCUS = 0x0008 }
enum : uint { WM_ENABLE = 0x000A }
enum : uint { WM_SETREDRAW = 0x000B }
enum : uint { WM_SETTEXT = 0x000C }
enum : uint { WM_GETTEXT = 0x000D }
enum : uint { WM_GETTEXTLENGTH = 0x000E }
enum : uint { WM_PAINT = 0x000F }
enum : uint { WM_CLOSE = 0x0010 }
// #ifndef _WIN32_WCE
enum : uint { WM_QUERYENDSESSION = 0x0011 }
enum : uint { WM_QUERYOPEN = 0x0013 }
enum : uint { WM_ENDSESSION = 0x0016 }
// #endif
enum : uint { WM_QUIT = 0x0012 }
enum : uint { WM_ERASEBKGND = 0x0014 }
enum : uint { WM_SYSCOLORCHANGE = 0x0015 }
enum : uint { WM_SHOWWINDOW = 0x0018 }
enum : uint { WM_WININICHANGE = 0x001A }
// #if(WINVER >= 0x0400)
alias WM_WININICHANGE WM_SETTINGCHANGE;
// #endif /* WINVER >= 0x0400 */

enum : uint { WM_DEVMODECHANGE = 0x001B }
enum : uint { WM_ACTIVATEAPP = 0x001C }
enum : uint { WM_FONTCHANGE = 0x001D }
enum : uint { WM_TIMECHANGE = 0x001E }
enum : uint { WM_CANCELMODE = 0x001F }
enum : uint { WM_SETCURSOR = 0x0020 }
enum : uint { WM_MOUSEACTIVATE = 0x0021 }
enum : uint { WM_CHILDACTIVATE = 0x0022 }
enum : uint { WM_QUEUESYNC = 0x0023 }

enum : uint { WM_GETMINMAXINFO = 0x0024 }

struct tagMINMAXINFO {
  POINT ptReserved;
  POINT ptMaxSize;
  POINT ptMaxPosition;
  POINT ptMinTrackSize;
  POINT ptMaxTrackSize;
}
alias tagMINMAXINFO MINMAXINFO;
alias tagMINMAXINFO* PMINMAXINFO;
alias tagMINMAXINFO* LPMINMAXINFO;

enum : uint { WM_PAINTICON = 0x0026 }
enum : uint { WM_ICONERASEBKGND = 0x0027 }
enum : uint { WM_NEXTDLGCTL = 0x0028 }
enum : uint { WM_SPOOLERSTATUS = 0x002A }
enum : uint { WM_DRAWITEM = 0x002B }
enum : uint { WM_MEASUREITEM = 0x002C }
enum : uint { WM_DELETEITEM = 0x002D }
enum : uint { WM_VKEYTOITEM = 0x002E }
enum : uint { WM_CHARTOITEM = 0x002F }
enum : uint { WM_SETFONT = 0x0030 }
enum : uint { WM_GETFONT = 0x0031 }
enum : uint { WM_SETHOTKEY = 0x0032 }
enum : uint { WM_GETHOTKEY = 0x0033 }
enum : uint { WM_QUERYDRAGICON = 0x0037 }
enum : uint { WM_COMPAREITEM = 0x0039 }
// #if(WINVER >= 0x0500)
// #ifndef _WIN32_WCE
enum : uint { WM_GETOBJECT = 0x003D }
// #endif
// #endif /* WINVER >= 0x0500 */
enum : uint { WM_COMPACTING = 0x0041 }
enum : uint { WM_COMMNOTIFY = 0x0044 }
enum : uint { WM_WINDOWPOSCHANGING = 0x0046 }
enum : uint { WM_WINDOWPOSCHANGED = 0x0047 }

enum : uint { WM_POWER = 0x0048 }

enum : uint { PWR_OK = 1 }
enum { PWR_FAIL = -1 }
enum : uint { PWR_SUSPENDREQUEST = 1 }
enum : uint { PWR_SUSPENDRESUME = 2 }
enum : uint { PWR_CRITICALRESUME = 3 }

enum : uint { WM_COPYDATA = 0x004A }
enum : uint { WM_CANCELJOURNAL = 0x004B }

struct tagCOPYDATASTRUCT {
  ULONG_PTR dwData;
  DWORD cbData;
  PVOID lpData;
}
alias tagCOPYDATASTRUCT COPYDATASTRUCT;
alias tagCOPYDATASTRUCT* PCOPYDATASTRUCT;

// #if(WINVER >= 0x0400)
struct tagMDINEXTMENU {
  HMENU hmenuIn;
  HMENU hmenuNext;
  HWND hwndNext;
}
alias tagMDINEXTMENU MDINEXTMENU;
alias tagMDINEXTMENU* PMDINEXTMENU;
alias tagMDINEXTMENU* LPMDINEXTMENU;

// #endif /* WINVER >= 0x0400 */

// #if(WINVER >= 0x0400)
enum : uint { WM_NOTIFY = 0x004E }
enum : uint { WM_INPUTLANGCHANGEREQUEST = 0x0050 }
enum : uint { WM_INPUTLANGCHANGE = 0x0051 }
enum : uint { WM_TCARD = 0x0052 }
enum : uint { WM_HELP = 0x0053 }
enum : uint { WM_USERCHANGED = 0x0054 }
enum : uint { WM_NOTIFYFORMAT = 0x0055 }

enum : uint { NFR_ANSI = 1 }
enum : uint { NFR_UNICODE = 2 }
enum : uint { NF_QUERY = 3 }
enum : uint { NF_REQUERY = 4 }

enum : uint { WM_CONTEXTMENU = 0x007B }
enum : uint { WM_STYLECHANGING = 0x007C }
enum : uint { WM_STYLECHANGED = 0x007D }
enum : uint { WM_DISPLAYCHANGE = 0x007E }
enum : uint { WM_GETICON = 0x007F }
enum : uint { WM_SETICON = 0x0080 }
// #endif /* WINVER >= 0x0400 */

enum : uint { WM_NCCREATE = 0x0081 }
enum : uint { WM_NCDESTROY = 0x0082 }
enum : uint { WM_NCCALCSIZE = 0x0083 }
enum : uint { WM_NCHITTEST = 0x0084 }
enum : uint { WM_NCPAINT = 0x0085 }
enum : uint { WM_NCACTIVATE = 0x0086 }
enum : uint { WM_GETDLGCODE = 0x0087 }
// #ifndef _WIN32_WCE
enum : uint { WM_SYNCPAINT = 0x0088 }
// #endif
enum : uint { WM_NCMOUSEMOVE = 0x00A0 }
enum : uint { WM_NCLBUTTONDOWN = 0x00A1 }
enum : uint { WM_NCLBUTTONUP = 0x00A2 }
enum : uint { WM_NCLBUTTONDBLCLK = 0x00A3 }
enum : uint { WM_NCRBUTTONDOWN = 0x00A4 }
enum : uint { WM_NCRBUTTONUP = 0x00A5 }
enum : uint { WM_NCRBUTTONDBLCLK = 0x00A6 }
enum : uint { WM_NCMBUTTONDOWN = 0x00A7 }
enum : uint { WM_NCMBUTTONUP = 0x00A8 }
enum : uint { WM_NCMBUTTONDBLCLK = 0x00A9 }

// #if(_WIN32_WINNT >= 0x0500)
enum : uint { WM_NCXBUTTONDOWN = 0x00AB }
enum : uint { WM_NCXBUTTONUP = 0x00AC }
enum : uint { WM_NCXBUTTONDBLCLK = 0x00AD }
// #endif /* _WIN32_WINNT >= 0x0500 */

// #if(_WIN32_WINNT >= 0x0501)
enum : uint { WM_INPUT = 0x00FF }
// #endif /* _WIN32_WINNT >= 0x0501 */

enum : uint { WM_KEYFIRST = 0x0100 }
enum : uint { WM_KEYDOWN = 0x0100 }
enum : uint { WM_KEYUP = 0x0101 }
enum : uint { WM_CHAR = 0x0102 }
enum : uint { WM_DEADCHAR = 0x0103 }
enum : uint { WM_SYSKEYDOWN = 0x0104 }
enum : uint { WM_SYSKEYUP = 0x0105 }
enum : uint { WM_SYSCHAR = 0x0106 }
enum : uint { WM_SYSDEADCHAR = 0x0107 }
// #if(_WIN32_WINNT >= 0x0501)
enum : uint { WM_UNICHAR = 0x0109 }
enum : uint { WM_KEYLAST = 0x0109 }
enum : uint { UNICODE_NOCHAR = 0xFFFF }
// #else
// #...
// #endif /* _WIN32_WINNT >= 0x0501 */

// #if(WINVER >= 0x0400)
enum : uint { WM_IME_STARTCOMPOSITION = 0x010D }
enum : uint { WM_IME_ENDCOMPOSITION = 0x010E }
enum : uint { WM_IME_COMPOSITION = 0x010F }
enum : uint { WM_IME_KEYLAST = 0x010F }
// #endif /* WINVER >= 0x0400 */

enum : uint { WM_INITDIALOG = 0x0110 }
enum : uint { WM_COMMAND = 0x0111 }
enum : uint { WM_SYSCOMMAND = 0x0112 }
enum : uint { WM_TIMER = 0x0113 }
enum : uint { WM_HSCROLL = 0x0114 }
enum : uint { WM_VSCROLL = 0x0115 }
enum : uint { WM_INITMENU = 0x0116 }
enum : uint { WM_INITMENUPOPUP = 0x0117 }
enum : uint { WM_MENUSELECT = 0x011F }
enum : uint { WM_MENUCHAR = 0x0120 }
enum : uint { WM_ENTERIDLE = 0x0121 }
// #if(WINVER >= 0x0500)
// #ifndef _WIN32_WCE
enum : uint { WM_MENURBUTTONUP = 0x0122 }
enum : uint { WM_MENUDRAG = 0x0123 }
enum : uint { WM_MENUGETOBJECT = 0x0124 }
enum : uint { WM_UNINITMENUPOPUP = 0x0125 }
enum : uint { WM_MENUCOMMAND = 0x0126 }

// #ifndef _WIN32_WCE
// #if(_WIN32_WINNT >= 0x0500)
enum : uint { WM_CHANGEUISTATE = 0x0127 }
enum : uint { WM_UPDATEUISTATE = 0x0128 }
enum : uint { WM_QUERYUISTATE = 0x0129 }

enum : uint { UIS_SET = 1 }
enum : uint { UIS_CLEAR = 2 }
enum : uint { UIS_INITIALIZE = 3 }

enum : uint { UISF_HIDEFOCUS = 0x1 }
enum : uint { UISF_HIDEACCEL = 0x2 }
// #if(_WIN32_WINNT >= 0x0501)
enum : uint { UISF_ACTIVE = 0x4 }
// #endif /* _WIN32_WINNT >= 0x0501 */
// #endif /* _WIN32_WINNT >= 0x0500 */
// #endif

// #endif
// #endif /* WINVER >= 0x0500 */

enum : uint { WM_CTLCOLORMSGBOX = 0x0132 }
enum : uint { WM_CTLCOLOREDIT = 0x0133 }
enum : uint { WM_CTLCOLORLISTBOX = 0x0134 }
enum : uint { WM_CTLCOLORBTN = 0x0135 }
enum : uint { WM_CTLCOLORDLG = 0x0136 }
enum : uint { WM_CTLCOLORSCROLLBAR = 0x0137 }
enum : uint { WM_CTLCOLORSTATIC = 0x0138 }

enum : uint { WM_MOUSEFIRST = 0x0200 }
enum : uint { WM_MOUSEMOVE = 0x0200 }
enum : uint { WM_LBUTTONDOWN = 0x0201 }
enum : uint { WM_LBUTTONUP = 0x0202 }
enum : uint { WM_LBUTTONDBLCLK = 0x0203 }
enum : uint { WM_RBUTTONDOWN = 0x0204 }
enum : uint { WM_RBUTTONUP = 0x0205 }
enum : uint { WM_RBUTTONDBLCLK = 0x0206 }
enum : uint { WM_MBUTTONDOWN = 0x0207 }
enum : uint { WM_MBUTTONUP = 0x0208 }
enum : uint { WM_MBUTTONDBLCLK = 0x0209 }
// #if (_WIN32_WINNT >= 0x0400) || (_WIN32_WINDOWS > 0x0400)
enum : uint { WM_MOUSEWHEEL = 0x020A }
// #endif
// #if (_WIN32_WINNT >= 0x0500)
enum : uint { WM_XBUTTONDOWN = 0x020B }
enum : uint { WM_XBUTTONUP = 0x020C }
enum : uint { WM_XBUTTONDBLCLK = 0x020D }
// #endif
// #if (_WIN32_WINNT >= 0x0500)
enum : uint { WM_MOUSELAST = 0x020D }
// #elif (_WIN32_WINNT >= 0x0400) || (_WIN32_WINDOWS > 0x0400)
// #...
// #else
// #...
// #endif /* (_WIN32_WINNT >= 0x0500) */

// #if(_WIN32_WINNT >= 0x0400)

enum : uint { WHEEL_DELTA = 120 }
// #define GET_WHEEL_DELTA_WPARAM(wParam) ((short)HIWORD(wParam))

enum : uint { WHEEL_PAGESCROLL = uint.max }
// #endif /* _WIN32_WINNT >= 0x0400 */

// #if(_WIN32_WINNT >= 0x0500)
// #define GET_KEYSTATE_WPARAM(wParam) (LOWORD(wParam))
// #define GET_NCHITTEST_WPARAM(wParam) ((short)LOWORD(wParam))
// #define GET_XBUTTON_WPARAM(wParam) (HIWORD(wParam))

enum : uint { XBUTTON1 = 0x0001 }
enum : uint { XBUTTON2 = 0x0002 }

// #endif /* _WIN32_WINNT >= 0x0500 */

enum : uint { WM_PARENTNOTIFY = 0x0210 }
enum : uint { WM_ENTERMENULOOP = 0x0211 }
enum : uint { WM_EXITMENULOOP = 0x0212 }

// #if(WINVER >= 0x0400)
enum : uint { WM_NEXTMENU = 0x0213 }
enum : uint { WM_SIZING = 0x0214 }
enum : uint { WM_CAPTURECHANGED = 0x0215 }
enum : uint { WM_MOVING = 0x0216 }
// #endif /* WINVER >= 0x0400 */

// #if(WINVER >= 0x0400)

enum : uint { WM_POWERBROADCAST = 0x0218 }

// #ifndef _WIN32_WCE
enum : uint { PBT_APMQUERYSUSPEND = 0x0000 }
enum : uint { PBT_APMQUERYSTANDBY = 0x0001 }

enum : uint { PBT_APMQUERYSUSPENDFAILED = 0x0002 }
enum : uint { PBT_APMQUERYSTANDBYFAILED = 0x0003 }

enum : uint { PBT_APMSUSPEND = 0x0004 }
enum : uint { PBT_APMSTANDBY = 0x0005 }

enum : uint { PBT_APMRESUMECRITICAL = 0x0006 }
enum : uint { PBT_APMRESUMESUSPEND = 0x0007 }
enum : uint { PBT_APMRESUMESTANDBY = 0x0008 }

enum : uint { PBTF_APMRESUMEFROMFAILURE = 0x00000001 }

enum : uint { PBT_APMBATTERYLOW = 0x0009 }
enum : uint { PBT_APMPOWERSTATUSCHANGE = 0x000A }

enum : uint { PBT_APMOEMEVENT = 0x000B }
enum : uint { PBT_APMRESUMEAUTOMATIC = 0x0012 }
// #endif

// #endif /* WINVER >= 0x0400 */

// #if(WINVER >= 0x0400)
enum : uint { WM_DEVICECHANGE = 0x0219 }
// #endif /* WINVER >= 0x0400 */

enum : uint { WM_MDICREATE = 0x0220 }
enum : uint { WM_MDIDESTROY = 0x0221 }
enum : uint { WM_MDIACTIVATE = 0x0222 }
enum : uint { WM_MDIRESTORE = 0x0223 }
enum : uint { WM_MDINEXT = 0x0224 }
enum : uint { WM_MDIMAXIMIZE = 0x0225 }
enum : uint { WM_MDITILE = 0x0226 }
enum : uint { WM_MDICASCADE = 0x0227 }
enum : uint { WM_MDIICONARRANGE = 0x0228 }
enum : uint { WM_MDIGETACTIVE = 0x0229 }

enum : uint { WM_MDISETMENU = 0x0230 }
enum : uint { WM_ENTERSIZEMOVE = 0x0231 }
enum : uint { WM_EXITSIZEMOVE = 0x0232 }
enum : uint { WM_DROPFILES = 0x0233 }
enum : uint { WM_MDIREFRESHMENU = 0x0234 }

// #if(WINVER >= 0x0400)
enum : uint { WM_IME_SETCONTEXT = 0x0281 }
enum : uint { WM_IME_NOTIFY = 0x0282 }
enum : uint { WM_IME_CONTROL = 0x0283 }
enum : uint { WM_IME_COMPOSITIONFULL = 0x0284 }
enum : uint { WM_IME_SELECT = 0x0285 }
enum : uint { WM_IME_CHAR = 0x0286 }
// #endif /* WINVER >= 0x0400 */
// #if(WINVER >= 0x0500)
enum : uint { WM_IME_REQUEST = 0x0288 }
// #endif /* WINVER >= 0x0500 */
// #if(WINVER >= 0x0400)
enum : uint { WM_IME_KEYDOWN = 0x0290 }
enum : uint { WM_IME_KEYUP = 0x0291 }
// #endif /* WINVER >= 0x0400 */

// #if((_WIN32_WINNT >= 0x0400) || (WINVER >= 0x0500))
enum : uint { WM_MOUSEHOVER = 0x02A1 }
enum : uint { WM_MOUSELEAVE = 0x02A3 }
// #endif
// #if(WINVER >= 0x0500)
enum : uint { WM_NCMOUSEHOVER = 0x02A0 }
enum : uint { WM_NCMOUSELEAVE = 0x02A2 }
// #endif /* WINVER >= 0x0500 */

// #if(_WIN32_WINNT >= 0x0501)
enum : uint { WM_WTSSESSION_CHANGE = 0x02B1 }

enum : uint { WM_TABLET_FIRST = 0x02c0 }
enum : uint { WM_TABLET_LAST = 0x02df }
// #endif /* _WIN32_WINNT >= 0x0501 */

enum : uint { WM_CUT = 0x0300 }
enum : uint { WM_COPY = 0x0301 }
enum : uint { WM_PASTE = 0x0302 }
enum : uint { WM_CLEAR = 0x0303 }
enum : uint { WM_UNDO = 0x0304 }
enum : uint { WM_RENDERFORMAT = 0x0305 }
enum : uint { WM_RENDERALLFORMATS = 0x0306 }
enum : uint { WM_DESTROYCLIPBOARD = 0x0307 }
enum : uint { WM_DRAWCLIPBOARD = 0x0308 }
enum : uint { WM_PAINTCLIPBOARD = 0x0309 }
enum : uint { WM_VSCROLLCLIPBOARD = 0x030A }
enum : uint { WM_SIZECLIPBOARD = 0x030B }
enum : uint { WM_ASKCBFORMATNAME = 0x030C }
enum : uint { WM_CHANGECBCHAIN = 0x030D }
enum : uint { WM_HSCROLLCLIPBOARD = 0x030E }
enum : uint { WM_QUERYNEWPALETTE = 0x030F }
enum : uint { WM_PALETTEISCHANGING = 0x0310 }
enum : uint { WM_PALETTECHANGED = 0x0311 }
enum : uint { WM_HOTKEY = 0x0312 }

// #if(WINVER >= 0x0400)
enum : uint { WM_PRINT = 0x0317 }
enum : uint { WM_PRINTCLIENT = 0x0318 }
// #endif /* WINVER >= 0x0400 */

// #if(_WIN32_WINNT >= 0x0500)
enum : uint { WM_APPCOMMAND = 0x0319 }
// #endif /* _WIN32_WINNT >= 0x0500 */

// #if(_WIN32_WINNT >= 0x0501)
enum : uint { WM_THEMECHANGED = 0x031A }
// #endif /* _WIN32_WINNT >= 0x0501 */

// #if(WINVER >= 0x0400)

enum : uint { WM_HANDHELDFIRST = 0x0358 }
enum : uint { WM_HANDHELDLAST = 0x035F }

enum : uint { WM_AFXFIRST = 0x0360 }
enum : uint { WM_AFXLAST = 0x037F }
// #endif /* WINVER >= 0x0400 */

enum : uint { WM_PENWINFIRST = 0x0380 }
enum : uint { WM_PENWINLAST = 0x038F }

// #if(WINVER >= 0x0400)
enum : uint { WM_APP = 0x8000 }
// #endif /* WINVER >= 0x0400 */

enum : uint { WM_USER = 0x0400 }

// #if(WINVER >= 0x0400)

enum : uint { WMSZ_LEFT = 1 }
enum : uint { WMSZ_RIGHT = 2 }
enum : uint { WMSZ_TOP = 3 }
enum : uint { WMSZ_TOPLEFT = 4 }
enum : uint { WMSZ_TOPRIGHT = 5 }
enum : uint { WMSZ_BOTTOM = 6 }
enum : uint { WMSZ_BOTTOMLEFT = 7 }
enum : uint { WMSZ_BOTTOMRIGHT = 8 }
// #endif /* WINVER >= 0x0400 */

// #ifndef NONCMESSAGES

enum { HTERROR = -2 }
enum { HTTRANSPARENT = -1 }
enum : uint { HTNOWHERE = 0 }
enum : uint { HTCLIENT = 1 }
enum : uint { HTCAPTION = 2 }
enum : uint { HTSYSMENU = 3 }
enum : uint { HTGROWBOX = 4 }
alias HTGROWBOX HTSIZE;
enum : uint { HTMENU = 5 }
enum : uint { HTHSCROLL = 6 }
enum : uint { HTVSCROLL = 7 }
enum : uint { HTMINBUTTON = 8 }
enum : uint { HTMAXBUTTON = 9 }
enum : uint { HTLEFT = 10 }
enum : uint { HTRIGHT = 11 }
enum : uint { HTTOP = 12 }
enum : uint { HTTOPLEFT = 13 }
enum : uint { HTTOPRIGHT = 14 }
enum : uint { HTBOTTOM = 15 }
enum : uint { HTBOTTOMLEFT = 16 }
enum : uint { HTBOTTOMRIGHT = 17 }
enum : uint { HTBORDER = 18 }
alias HTMINBUTTON HTREDUCE;
alias HTMAXBUTTON HTZOOM;
alias HTLEFT HTSIZEFIRST;
alias HTBOTTOMRIGHT HTSIZELAST;
// #if(WINVER >= 0x0400)
enum : uint { HTOBJECT = 19 }
enum : uint { HTCLOSE = 20 }
enum : uint { HTHELP = 21 }
// #endif /* WINVER >= 0x0400 */

enum : uint { SMTO_NORMAL = 0x0000 }
enum : uint { SMTO_BLOCK = 0x0001 }
enum : uint { SMTO_ABORTIFHUNG = 0x0002 }
// #if(WINVER >= 0x0500)
enum : uint { SMTO_NOTIMEOUTIFNOTHUNG = 0x0008 }
// #endif /* WINVER >= 0x0500 */
// #endif /* !NONCMESSAGES */

enum : uint { MA_ACTIVATE = 1 }
enum : uint { MA_ACTIVATEANDEAT = 2 }
enum : uint { MA_NOACTIVATE = 3 }
enum : uint { MA_NOACTIVATEANDEAT = 4 }

enum : uint { ICON_SMALL = 0 }
enum : uint { ICON_BIG = 1 }
// #if(_WIN32_WINNT >= 0x0501)
enum : uint { ICON_SMALL2 = 2 }
// #endif /* _WIN32_WINNT >= 0x0501 */

extern(Windows) export UINT RegisterWindowMessageA(
  LPCSTR lpString);
extern(Windows) export UINT RegisterWindowMessageW(
  LPCWSTR lpString);
// #ifdef UNICODE
alias RegisterWindowMessageW RegisterWindowMessage;
// #else
// #...
// #endif // !UNICODE

enum : uint { SIZE_RESTORED = 0 }
enum : uint { SIZE_MINIMIZED = 1 }
enum : uint { SIZE_MAXIMIZED = 2 }
enum : uint { SIZE_MAXSHOW = 3 }
enum : uint { SIZE_MAXHIDE = 4 }

alias SIZE_RESTORED SIZENORMAL;
alias SIZE_MINIMIZED SIZEICONIC;
alias SIZE_MAXIMIZED SIZEFULLSCREEN;
alias SIZE_MAXSHOW SIZEZOOMSHOW;
alias SIZE_MAXHIDE SIZEZOOMHIDE;

struct tagWINDOWPOS {
  HWND hwnd;
  HWND hwndInsertAfter;
  int x;
  int y;
  int cx;
  int cy;
  UINT flags;
}
alias tagWINDOWPOS WINDOWPOS;
alias tagWINDOWPOS* LPWINDOWPOS;
alias tagWINDOWPOS* PWINDOWPOS;

struct tagNCCALCSIZE_PARAMS {
  RECT rgrc[3];
  PWINDOWPOS lppos;
}
alias tagNCCALCSIZE_PARAMS NCCALCSIZE_PARAMS;
alias tagNCCALCSIZE_PARAMS* LPNCCALCSIZE_PARAMS;

enum : uint { WVR_ALIGNTOP = 0x0010 }
enum : uint { WVR_ALIGNLEFT = 0x0020 }
enum : uint { WVR_ALIGNBOTTOM = 0x0040 }
enum : uint { WVR_ALIGNRIGHT = 0x0080 }
enum : uint { WVR_HREDRAW = 0x0100 }
enum : uint { WVR_VREDRAW = 0x0200 }
enum : uint { WVR_REDRAW = WVR_HREDRAW | WVR_VREDRAW }
enum : uint { WVR_VALIDRECTS = 0x0400 }

// #ifndef NOKEYSTATES

enum : uint { MK_LBUTTON = 0x0001 }
enum : uint { MK_RBUTTON = 0x0002 }
enum : uint { MK_SHIFT = 0x0004 }
enum : uint { MK_CONTROL = 0x0008 }
enum : uint { MK_MBUTTON = 0x0010 }
// #if(_WIN32_WINNT >= 0x0500)
enum : uint { MK_XBUTTON1 = 0x0020 }
enum : uint { MK_XBUTTON2 = 0x0040 }
// #endif /* _WIN32_WINNT >= 0x0500 */

// #endif /* !NOKEYSTATES */

// #if(_WIN32_WINNT >= 0x0400)
// #ifndef NOTRACKMOUSEEVENT

enum : uint { TME_HOVER = 0x00000001 }
enum : uint { TME_LEAVE = 0x00000002 }
// #if(WINVER >= 0x0500)
enum : uint { TME_NONCLIENT = 0x00000010 }
// #endif /* WINVER >= 0x0500 */
enum : uint { TME_QUERY = 0x40000000 }
enum : uint { TME_CANCEL = 0x80000000 }

enum : uint { HOVER_DEFAULT = 0xFFFFFFFF }
// #endif /* _WIN32_WINNT >= 0x0400 */

// #if(_WIN32_WINNT >= 0x0400)
struct tagTRACKMOUSEEVENT {
  DWORD cbSize;
  DWORD dwFlags;
  HWND hwndTrack;
  DWORD dwHoverTime;
}
alias tagTRACKMOUSEEVENT TRACKMOUSEEVENT;
alias tagTRACKMOUSEEVENT* LPTRACKMOUSEEVENT;

extern(Windows) export BOOL TrackMouseEvent(
  LPTRACKMOUSEEVENT lpEventTrack);
// #endif /* _WIN32_WINNT >= 0x0400 */

// #if(_WIN32_WINNT >= 0x0400)

// #endif /* !NOTRACKMOUSEEVENT */
// #endif /* _WIN32_WINNT >= 0x0400 */

// #endif /* !NOWINMESSAGES */

// #ifndef NOWINSTYLES

enum : uint { WS_OVERLAPPED = 0x00000000 }
enum : uint { WS_POPUP = 0x80000000 }
enum : uint { WS_CHILD = 0x40000000 }
enum : uint { WS_MINIMIZE = 0x20000000 }
enum : uint { WS_VISIBLE = 0x10000000 }
enum : uint { WS_DISABLED = 0x08000000 }
enum : uint { WS_CLIPSIBLINGS = 0x04000000 }
enum : uint { WS_CLIPCHILDREN = 0x02000000 }
enum : uint { WS_MAXIMIZE = 0x01000000 }
enum : uint { WS_CAPTION = 0x00C00000 }
enum : uint { WS_BORDER = 0x00800000 }
enum : uint { WS_DLGFRAME = 0x00400000 }
enum : uint { WS_VSCROLL = 0x00200000 }
enum : uint { WS_HSCROLL = 0x00100000 }
enum : uint { WS_SYSMENU = 0x00080000 }
enum : uint { WS_THICKFRAME = 0x00040000 }
enum : uint { WS_GROUP = 0x00020000 }
enum : uint { WS_TABSTOP = 0x00010000 }

enum : uint { WS_MINIMIZEBOX = 0x00020000 }
enum : uint { WS_MAXIMIZEBOX = 0x00010000 }

alias WS_OVERLAPPED WS_TILED;
alias WS_MINIMIZE WS_ICONIC;
alias WS_THICKFRAME WS_SIZEBOX;
// #define WS_TILEDWINDOW WS_OVERLAPPEDWINDOW

enum : uint { WS_OVERLAPPEDWINDOW = WS_OVERLAPPED | WS_CAPTION | WS_SYSMENU | WS_THICKFRAME | WS_MINIMIZEBOX | WS_MAXIMIZEBOX }

enum : uint { WS_POPUPWINDOW = WS_POPUP | WS_BORDER | WS_SYSMENU }

enum : uint { WS_CHILDWINDOW = WS_CHILD }

enum : uint { WS_EX_DLGMODALFRAME = 0x00000001 }
enum : uint { WS_EX_NOPARENTNOTIFY = 0x00000004 }
enum : uint { WS_EX_TOPMOST = 0x00000008 }
enum : uint { WS_EX_ACCEPTFILES = 0x00000010 }
enum : uint { WS_EX_TRANSPARENT = 0x00000020 }
// #if(WINVER >= 0x0400)
enum : uint { WS_EX_MDICHILD = 0x00000040 }
enum : uint { WS_EX_TOOLWINDOW = 0x00000080 }
enum : uint { WS_EX_WINDOWEDGE = 0x00000100 }
enum : uint { WS_EX_CLIENTEDGE = 0x00000200 }
enum : uint { WS_EX_CONTEXTHELP = 0x00000400 }

// #endif /* WINVER >= 0x0400 */
// #if(WINVER >= 0x0400)

enum : uint { WS_EX_RIGHT = 0x00001000 }
enum : uint { WS_EX_LEFT = 0x00000000 }
enum : uint { WS_EX_RTLREADING = 0x00002000 }
enum : uint { WS_EX_LTRREADING = 0x00000000 }
enum : uint { WS_EX_LEFTSCROLLBAR = 0x00004000 }
enum : uint { WS_EX_RIGHTSCROLLBAR = 0x00000000 }

enum : uint { WS_EX_CONTROLPARENT = 0x00010000 }
enum : uint { WS_EX_STATICEDGE = 0x00020000 }
enum : uint { WS_EX_APPWINDOW = 0x00040000 }

enum : uint { WS_EX_OVERLAPPEDWINDOW = WS_EX_WINDOWEDGE | WS_EX_CLIENTEDGE }
enum : uint { WS_EX_PALETTEWINDOW = WS_EX_WINDOWEDGE | WS_EX_TOOLWINDOW | WS_EX_TOPMOST }

// #endif /* WINVER >= 0x0400 */

// #if(_WIN32_WINNT >= 0x0500)
enum : uint { WS_EX_LAYERED = 0x00080000 }

// #endif /* _WIN32_WINNT >= 0x0500 */

// #if(WINVER >= 0x0500)
enum : uint { WS_EX_NOINHERITLAYOUT = 0x00100000 }
enum : uint { WS_EX_LAYOUTRTL = 0x00400000 }
// #endif /* WINVER >= 0x0500 */

// #if(_WIN32_WINNT >= 0x0501)
enum : uint { WS_EX_COMPOSITED = 0x02000000 }
// #endif /* _WIN32_WINNT >= 0x0501 */
// #if(_WIN32_WINNT >= 0x0500)
enum : uint { WS_EX_NOACTIVATE = 0x08000000 }
// #endif /* _WIN32_WINNT >= 0x0500 */

enum : uint { CS_VREDRAW = 0x0001 }
enum : uint { CS_HREDRAW = 0x0002 }
enum : uint { CS_DBLCLKS = 0x0008 }
enum : uint { CS_OWNDC = 0x0020 }
enum : uint { CS_CLASSDC = 0x0040 }
enum : uint { CS_PARENTDC = 0x0080 }
enum : uint { CS_NOCLOSE = 0x0200 }
enum : uint { CS_SAVEBITS = 0x0800 }
enum : uint { CS_BYTEALIGNCLIENT = 0x1000 }
enum : uint { CS_BYTEALIGNWINDOW = 0x2000 }
enum : uint { CS_GLOBALCLASS = 0x4000 }

enum : uint { CS_IME = 0x00010000 }
// #if(_WIN32_WINNT >= 0x0501)
enum : uint { CS_DROPSHADOW = 0x00020000 }
// #endif /* _WIN32_WINNT >= 0x0501 */

// #endif /* !NOWINSTYLES */
// #if(WINVER >= 0x0400)

enum : uint { PRF_CHECKVISIBLE = 0x00000001 }
enum : uint { PRF_NONCLIENT = 0x00000002 }
enum : uint { PRF_CLIENT = 0x00000004 }
enum : uint { PRF_ERASEBKGND = 0x00000008 }
enum : uint { PRF_CHILDREN = 0x00000010 }
enum : uint { PRF_OWNED = 0x00000020 }

enum : uint { BDR_RAISEDOUTER = 0x0001 }
enum : uint { BDR_SUNKENOUTER = 0x0002 }
enum : uint { BDR_RAISEDINNER = 0x0004 }
enum : uint { BDR_SUNKENINNER = 0x0008 }

enum : uint { BDR_OUTER = BDR_RAISEDOUTER | BDR_SUNKENOUTER }
enum : uint { BDR_INNER = BDR_RAISEDINNER | BDR_SUNKENINNER }
enum : uint { BDR_RAISED = BDR_RAISEDOUTER | BDR_RAISEDINNER }
enum : uint { BDR_SUNKEN = BDR_SUNKENOUTER | BDR_SUNKENINNER }

enum : uint { EDGE_RAISED = BDR_RAISEDOUTER | BDR_RAISEDINNER }
enum : uint { EDGE_SUNKEN = BDR_SUNKENOUTER | BDR_SUNKENINNER }
enum : uint { EDGE_ETCHED = BDR_SUNKENOUTER | BDR_RAISEDINNER }
enum : uint { EDGE_BUMP = BDR_RAISEDOUTER | BDR_SUNKENINNER }

enum : uint { BF_LEFT = 0x0001 }
enum : uint { BF_TOP = 0x0002 }
enum : uint { BF_RIGHT = 0x0004 }
enum : uint { BF_BOTTOM = 0x0008 }

enum : uint { BF_TOPLEFT = BF_TOP | BF_LEFT }
enum : uint { BF_TOPRIGHT = BF_TOP | BF_RIGHT }
enum : uint { BF_BOTTOMLEFT = BF_BOTTOM | BF_LEFT }
enum : uint { BF_BOTTOMRIGHT = BF_BOTTOM | BF_RIGHT }
enum : uint { BF_RECT = BF_LEFT | BF_TOP | BF_RIGHT | BF_BOTTOM }

enum : uint { BF_DIAGONAL = 0x0010 }

enum : uint { BF_DIAGONAL_ENDTOPRIGHT = BF_DIAGONAL | BF_TOP | BF_RIGHT }
enum : uint { BF_DIAGONAL_ENDTOPLEFT = BF_DIAGONAL | BF_TOP | BF_LEFT }
enum : uint { BF_DIAGONAL_ENDBOTTOMLEFT = BF_DIAGONAL | BF_BOTTOM | BF_LEFT }
enum : uint { BF_DIAGONAL_ENDBOTTOMRIGHT = BF_DIAGONAL | BF_BOTTOM | BF_RIGHT }

enum : uint { BF_MIDDLE = 0x0800 }
enum : uint { BF_SOFT = 0x1000 }
enum : uint { BF_ADJUST = 0x2000 }
enum : uint { BF_FLAT = 0x4000 }
enum : uint { BF_MONO = 0x8000 }

extern(Windows) export BOOL DrawEdge(
  HDC hdc,
  LPRECT qrc,
  UINT edge,
  UINT grfFlags);

enum : uint { DFC_CAPTION = 1 }
enum : uint { DFC_MENU = 2 }
enum : uint { DFC_SCROLL = 3 }
enum : uint { DFC_BUTTON = 4 }
// #if(WINVER >= 0x0500)
enum : uint { DFC_POPUPMENU = 5 }
// #endif /* WINVER >= 0x0500 */

enum : uint { DFCS_CAPTIONCLOSE = 0x0000 }
enum : uint { DFCS_CAPTIONMIN = 0x0001 }
enum : uint { DFCS_CAPTIONMAX = 0x0002 }
enum : uint { DFCS_CAPTIONRESTORE = 0x0003 }
enum : uint { DFCS_CAPTIONHELP = 0x0004 }

enum : uint { DFCS_MENUARROW = 0x0000 }
enum : uint { DFCS_MENUCHECK = 0x0001 }
enum : uint { DFCS_MENUBULLET = 0x0002 }
enum : uint { DFCS_MENUARROWRIGHT = 0x0004 }
enum : uint { DFCS_SCROLLUP = 0x0000 }
enum : uint { DFCS_SCROLLDOWN = 0x0001 }
enum : uint { DFCS_SCROLLLEFT = 0x0002 }
enum : uint { DFCS_SCROLLRIGHT = 0x0003 }
enum : uint { DFCS_SCROLLCOMBOBOX = 0x0005 }
enum : uint { DFCS_SCROLLSIZEGRIP = 0x0008 }
enum : uint { DFCS_SCROLLSIZEGRIPRIGHT = 0x0010 }

enum : uint { DFCS_BUTTONCHECK = 0x0000 }
enum : uint { DFCS_BUTTONRADIOIMAGE = 0x0001 }
enum : uint { DFCS_BUTTONRADIOMASK = 0x0002 }
enum : uint { DFCS_BUTTONRADIO = 0x0004 }
enum : uint { DFCS_BUTTON3STATE = 0x0008 }
enum : uint { DFCS_BUTTONPUSH = 0x0010 }

enum : uint { DFCS_INACTIVE = 0x0100 }
enum : uint { DFCS_PUSHED = 0x0200 }
enum : uint { DFCS_CHECKED = 0x0400 }

// #if(WINVER >= 0x0500)
enum : uint { DFCS_TRANSPARENT = 0x0800 }
enum : uint { DFCS_HOT = 0x1000 }
// #endif /* WINVER >= 0x0500 */

enum : uint { DFCS_ADJUSTRECT = 0x2000 }
enum : uint { DFCS_FLAT = 0x4000 }
enum : uint { DFCS_MONO = 0x8000 }

extern(Windows) export BOOL DrawFrameControl(
  HDC,
  LPRECT,
  UINT,
  UINT);

enum : uint { DC_ACTIVE = 0x0001 }
enum : uint { DC_SMALLCAP = 0x0002 }
enum : uint { DC_ICON = 0x0004 }
enum : uint { DC_TEXT = 0x0008 }
enum : uint { DC_INBUTTON = 0x0010 }
// #if(WINVER >= 0x0500)
enum : uint { DC_GRADIENT = 0x0020 }
// #endif /* WINVER >= 0x0500 */
// #if(_WIN32_WINNT >= 0x0501)
enum : uint { DC_BUTTONS = 0x1000 }
// #endif /* _WIN32_WINNT >= 0x0501 */

extern(Windows) export BOOL DrawCaption(HWND, HDC, RECT *, UINT);

enum : uint { IDANI_OPEN = 1 }
enum : uint { IDANI_CAPTION = 3 }

extern(Windows) export BOOL DrawAnimatedRects(
  HWND hwnd,
  int idAni,
  RECT * lprcFrom,
  RECT * lprcTo);

// #endif /* WINVER >= 0x0400 */

// #ifndef NOCLIPBOARD

enum : uint { CF_TEXT = 1 }
enum : uint { CF_BITMAP = 2 }
enum : uint { CF_METAFILEPICT = 3 }
enum : uint { CF_SYLK = 4 }
enum : uint { CF_DIF = 5 }
enum : uint { CF_TIFF = 6 }
enum : uint { CF_OEMTEXT = 7 }
enum : uint { CF_DIB = 8 }
enum : uint { CF_PALETTE = 9 }
enum : uint { CF_PENDATA = 10 }
enum : uint { CF_RIFF = 11 }
enum : uint { CF_WAVE = 12 }
enum : uint { CF_UNICODETEXT = 13 }
enum : uint { CF_ENHMETAFILE = 14 }
// #if(WINVER >= 0x0400)
enum : uint { CF_HDROP = 15 }
enum : uint { CF_LOCALE = 16 }
// #endif /* WINVER >= 0x0400 */
// #if(WINVER >= 0x0500)
enum : uint { CF_DIBV5 = 17 }
// #endif /* WINVER >= 0x0500 */

// #if(WINVER >= 0x0500)
enum : uint { CF_MAX = 18 }
// #elif(WINVER >= 0x0400)
// #...
// #else
// #...
// #endif

enum : uint { CF_OWNERDISPLAY = 0x0080 }
enum : uint { CF_DSPTEXT = 0x0081 }
enum : uint { CF_DSPBITMAP = 0x0082 }
enum : uint { CF_DSPMETAFILEPICT = 0x0083 }
enum : uint { CF_DSPENHMETAFILE = 0x008E }

enum : uint { CF_PRIVATEFIRST = 0x0200 }
enum : uint { CF_PRIVATELAST = 0x02FF }

enum : uint { CF_GDIOBJFIRST = 0x0300 }
enum : uint { CF_GDIOBJLAST = 0x03FF }

// #endif /* !NOCLIPBOARD */

//alias true FVIRTKEY;
enum : uint { FNOINVERT = 0x02 }
enum : uint { FSHIFT = 0x04 }
enum : uint { FCONTROL = 0x08 }
enum : uint { FALT = 0x10 }

alias HANDLE HHOOK, HMONITOR, HWINEVENTHOOK;

struct tagACCEL {
// #ifndef _MAC
  BYTE fVirt;
  WORD key;
  WORD cmd;
// #else
// ...
// #endif
}
alias tagACCEL ACCEL;
alias tagACCEL* LPACCEL;

struct tagPAINTSTRUCT {
  HDC hdc;
  BOOL fErase;
  RECT rcPaint;
  BOOL fRestore;
  BOOL fIncUpdate;
  BYTE rgbReserved[32];
}
alias tagPAINTSTRUCT PAINTSTRUCT;
alias tagPAINTSTRUCT* PPAINTSTRUCT;
alias tagPAINTSTRUCT* NPPAINTSTRUCT;
alias tagPAINTSTRUCT* LPPAINTSTRUCT;

struct tagCREATESTRUCTA {
  LPVOID lpCreateParams;
  HINSTANCE hInstance;
  HMENU hMenu;
  HWND hwndParent;
  int cy;
  int cx;
  int y;
  int x;
  LONG style;
  LPCSTR lpszName;
  LPCSTR lpszClass;
  DWORD dwExStyle;
}
alias tagCREATESTRUCTA CREATESTRUCTA;
alias tagCREATESTRUCTA* LPCREATESTRUCTA;

struct tagCREATESTRUCTW {
  LPVOID lpCreateParams;
  HINSTANCE hInstance;
  HMENU hMenu;
  HWND hwndParent;
  int cy;
  int cx;
  int y;
  int x;
  LONG style;
  LPCWSTR lpszName;
  LPCWSTR lpszClass;
  DWORD dwExStyle;
}
alias tagCREATESTRUCTW CREATESTRUCTW;
alias tagCREATESTRUCTW* LPCREATESTRUCTW;

// #ifdef UNICODE
alias CREATESTRUCTW CREATESTRUCT;
alias LPCREATESTRUCTW LPCREATESTRUCT;
// #else
// ...
// #endif // UNICODE

struct tagWINDOWPLACEMENT {
  UINT length;
  UINT flags;
  UINT showCmd;
  POINT ptMinPosition;
  POINT ptMaxPosition;
  RECT rcNormalPosition;
// #ifdef _MAC
// ...
// #endif
}
alias tagWINDOWPLACEMENT WINDOWPLACEMENT;

alias WINDOWPLACEMENT* PWINDOWPLACEMENT;
alias WINDOWPLACEMENT* LPWINDOWPLACEMENT;

enum : uint { WPF_SETMINPOSITION = 0x0001 }
enum : uint { WPF_RESTORETOMAXIMIZED = 0x0002 }
// #if(_WIN32_WINNT >= 0x0500)
enum : uint { WPF_ASYNCWINDOWPLACEMENT = 0x0004 }
// #endif /* _WIN32_WINNT >= 0x0500 */

// #if(WINVER >= 0x0400)
struct tagNMHDR {
  HWND hwndFrom;
  UINT_PTR idFrom;
  UINT code;
}
alias tagNMHDR NMHDR;

alias NMHDR* LPNMHDR;

struct tagSTYLESTRUCT {
  DWORD styleOld;
  DWORD styleNew;
}
alias tagSTYLESTRUCT STYLESTRUCT;
alias tagSTYLESTRUCT* LPSTYLESTRUCT;

// #endif /* WINVER >= 0x0400 */

enum : uint { ODT_MENU = 1 }
enum : uint { ODT_LISTBOX = 2 }
enum : uint { ODT_COMBOBOX = 3 }
enum : uint { ODT_BUTTON = 4 }
// #if(WINVER >= 0x0400)
enum : uint { ODT_STATIC = 5 }
// #endif /* WINVER >= 0x0400 */

enum : uint { ODA_DRAWENTIRE = 0x0001 }
enum : uint { ODA_SELECT = 0x0002 }
enum : uint { ODA_FOCUS = 0x0004 }

enum : uint { ODS_SELECTED = 0x0001 }
enum : uint { ODS_GRAYED = 0x0002 }
enum : uint { ODS_DISABLED = 0x0004 }
enum : uint { ODS_CHECKED = 0x0008 }
enum : uint { ODS_FOCUS = 0x0010 }
// #if(WINVER >= 0x0400)
enum : uint { ODS_DEFAULT = 0x0020 }
enum : uint { ODS_COMBOBOXEDIT = 0x1000 }
// #endif /* WINVER >= 0x0400 */
// #if(WINVER >= 0x0500)
enum : uint { ODS_HOTLIGHT = 0x0040 }
enum : uint { ODS_INACTIVE = 0x0080 }
// #if(_WIN32_WINNT >= 0x0500)
enum : uint { ODS_NOACCEL = 0x0100 }
enum : uint { ODS_NOFOCUSRECT = 0x0200 }
// #endif /* _WIN32_WINNT >= 0x0500 */
// #endif /* WINVER >= 0x0500 */

struct tagMEASUREITEMSTRUCT {
  UINT CtlType;
  UINT CtlID;
  UINT itemID;
  UINT itemWidth;
  UINT itemHeight;
  ULONG_PTR itemData;
}
alias tagMEASUREITEMSTRUCT MEASUREITEMSTRUCT;
alias tagMEASUREITEMSTRUCT* PMEASUREITEMSTRUCT;
alias tagMEASUREITEMSTRUCT* LPMEASUREITEMSTRUCT;

struct tagDRAWITEMSTRUCT {
  UINT CtlType;
  UINT CtlID;
  UINT itemID;
  UINT itemAction;
  UINT itemState;
  HWND hwndItem;
  HDC hDC;
  RECT rcItem;
  ULONG_PTR itemData;
}
alias tagDRAWITEMSTRUCT DRAWITEMSTRUCT;
alias tagDRAWITEMSTRUCT* PDRAWITEMSTRUCT;
alias tagDRAWITEMSTRUCT* LPDRAWITEMSTRUCT;

struct tagDELETEITEMSTRUCT {
  UINT CtlType;
  UINT CtlID;
  UINT itemID;
  HWND hwndItem;
  ULONG_PTR itemData;
}
alias tagDELETEITEMSTRUCT DELETEITEMSTRUCT;
alias tagDELETEITEMSTRUCT* PDELETEITEMSTRUCT;
alias tagDELETEITEMSTRUCT* LPDELETEITEMSTRUCT;

struct tagCOMPAREITEMSTRUCT {
  UINT CtlType;
  UINT CtlID;
  HWND hwndItem;
  UINT itemID1;
  ULONG_PTR itemData1;
  UINT itemID2;
  ULONG_PTR itemData2;
  DWORD dwLocaleId;
}
alias tagCOMPAREITEMSTRUCT COMPAREITEMSTRUCT;
alias tagCOMPAREITEMSTRUCT* PCOMPAREITEMSTRUCT;
alias tagCOMPAREITEMSTRUCT* LPCOMPAREITEMSTRUCT;

// #ifndef NOMSG

extern(Windows) export BOOL GetMessageA(
  LPMSG lpMsg,
  HWND hWnd,
  UINT wMsgFilterMin,
  UINT wMsgFilterMax);
extern(Windows) export BOOL GetMessageW(
  LPMSG lpMsg,
  HWND hWnd,
  UINT wMsgFilterMin,
  UINT wMsgFilterMax);
// #ifdef UNICODE
alias GetMessageW GetMessage;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL TranslateMessage(
  MSG *lpMsg);

extern(Windows) export LRESULT DispatchMessageA(
  MSG *lpMsg);
extern(Windows) export LRESULT DispatchMessageW(
  MSG *lpMsg);
// #ifdef UNICODE
alias DispatchMessageW DispatchMessage;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL SetMessageQueue(
  int cMessagesMax);

extern(Windows) export BOOL PeekMessageA(
  LPMSG lpMsg,
  HWND hWnd,
  UINT wMsgFilterMin,
  UINT wMsgFilterMax,
  UINT wRemoveMsg);
extern(Windows) export BOOL PeekMessageW(
  LPMSG lpMsg,
  HWND hWnd,
  UINT wMsgFilterMin,
  UINT wMsgFilterMax,
  UINT wRemoveMsg);
// #ifdef UNICODE
alias PeekMessageW PeekMessage;
// #else
// #...
// #endif // !UNICODE

enum : uint { PM_NOREMOVE = 0x0000 }
enum : uint { PM_REMOVE = 0x0001 }
enum : uint { PM_NOYIELD = 0x0002 }
// #if(WINVER >= 0x0500)
enum : uint { PM_QS_INPUT = QS_INPUT << 16 }
enum : uint { PM_QS_POSTMESSAGE = (QS_POSTMESSAGE | QS_HOTKEY | QS_TIMER) << 16 }
enum : uint { PM_QS_PAINT = QS_PAINT << 16 }
enum : uint { PM_QS_SENDMESSAGE = QS_SENDMESSAGE << 16 }
// #endif /* WINVER >= 0x0500 */

// #endif /* !NOMSG */

extern(Windows) export BOOL RegisterHotKey(
  HWND hWnd,
  int id,
  UINT fsModifiers,
  UINT vk);

extern(Windows) export BOOL UnregisterHotKey(
  HWND hWnd,
  int id);

enum : uint { MOD_ALT = 0x0001 }
enum : uint { MOD_CONTROL = 0x0002 }
enum : uint { MOD_SHIFT = 0x0004 }
enum : uint { MOD_WIN = 0x0008 }

enum { IDHOT_SNAPWINDOW = -1 }
enum { IDHOT_SNAPDESKTOP = -2 }

// #ifdef WIN_INTERNAL
//     #ifndef LSTRING
// #...
//     #endif /* LSTRING */
//     #ifndef LFILEIO
// #...
//     #endif /* LFILEIO */
// #endif /* WIN_INTERNAL */

// #if(WINVER >= 0x0400)

enum : uint { ENDSESSION_LOGOFF = 0x80000000 }
// #endif /* WINVER >= 0x0400 */

enum : uint { EWX_LOGOFF = 0 }
enum : uint { EWX_SHUTDOWN = 0x00000001 }
enum : uint { EWX_REBOOT = 0x00000002 }
enum : uint { EWX_FORCE = 0x00000004 }
enum : uint { EWX_POWEROFF = 0x00000008 }
// #if(_WIN32_WINNT >= 0x0500)
enum : uint { EWX_FORCEIFHUNG = 0x00000010 }
// #endif /* _WIN32_WINNT >= 0x0500 */

BOOL ExitWindows(DWORD dwReserved, UINT Code){ return ExitWindowsEx(EWX_LOGOFF, 0xFFFFFFFF); }

extern(Windows) export BOOL ExitWindowsEx(
  UINT uFlags,
  DWORD dwReserved);

extern(Windows) export BOOL SwapMouseButton(
  BOOL fSwap);

extern(Windows) export DWORD GetMessagePos();

extern(Windows) export LONG GetMessageTime();

extern(Windows) export LPARAM GetMessageExtraInfo();

// #if(WINVER >= 0x0400)
extern(Windows) export LPARAM SetMessageExtraInfo(
  LPARAM lParam);
// #endif /* WINVER >= 0x0400 */

extern(Windows) export LRESULT SendMessageA(
  HWND hWnd,
  UINT Msg,
  WPARAM wParam,
  LPARAM lParam);
extern(Windows) export LRESULT SendMessageW(
  HWND hWnd,
  UINT Msg,
  WPARAM wParam,
  LPARAM lParam);
version (Unicode) {
	alias SendMessageW SendMessage;
} else {
	alias SendMessageA SendMessage;
}

extern(Windows) export LRESULT SendMessageTimeoutA(
  HWND hWnd,
  UINT Msg,
  WPARAM wParam,
  LPARAM lParam,
  UINT fuFlags,
  UINT uTimeout,
  PDWORD_PTR lpdwResult);
extern(Windows) export LRESULT SendMessageTimeoutW(
  HWND hWnd,
  UINT Msg,
  WPARAM wParam,
  LPARAM lParam,
  UINT fuFlags,
  UINT uTimeout,
  PDWORD_PTR lpdwResult);
// #ifdef UNICODE
alias SendMessageTimeoutW SendMessageTimeout;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL SendNotifyMessageA(
  HWND hWnd,
  UINT Msg,
  WPARAM wParam,
  LPARAM lParam);
extern(Windows) export BOOL SendNotifyMessageW(
  HWND hWnd,
  UINT Msg,
  WPARAM wParam,
  LPARAM lParam);
// #ifdef UNICODE
alias SendNotifyMessageW SendNotifyMessage;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL SendMessageCallbackA(
  HWND hWnd,
  UINT Msg,
  WPARAM wParam,
  LPARAM lParam,
  SENDASYNCPROC lpResultCallBack,
  ULONG_PTR dwData);
extern(Windows) export BOOL SendMessageCallbackW(
  HWND hWnd,
  UINT Msg,
  WPARAM wParam,
  LPARAM lParam,
  SENDASYNCPROC lpResultCallBack,
  ULONG_PTR dwData);
// #ifdef UNICODE
alias SendMessageCallbackW SendMessageCallback;
// #else
// #...
// #endif // !UNICODE

// #if(_WIN32_WINNT >= 0x0501)
struct _0 {
  UINT cbSize;
  HDESK hdesk;
  HWND hwnd;
  LUID luid;
}
alias _0 BSMINFO;
alias _0* PBSMINFO;

extern(Windows) export int BroadcastSystemMessageExA(
  DWORD,
  LPDWORD,
  UINT,
  WPARAM,
  LPARAM,
  PBSMINFO);
extern(Windows) export int BroadcastSystemMessageExW(
  DWORD,
  LPDWORD,
  UINT,
  WPARAM,
  LPARAM,
  PBSMINFO);
// #ifdef UNICODE
alias BroadcastSystemMessageExW BroadcastSystemMessageEx;
// #else
// #...
// #endif // !UNICODE
// #endif /* _WIN32_WINNT >= 0x0501 */

// #if(WINVER >= 0x0400)

// #if defined(_WIN32_WINNT)
extern(Windows) export int BroadcastSystemMessageA(
  DWORD,
  LPDWORD,
  UINT,
  WPARAM,
  LPARAM);
extern(Windows) export int BroadcastSystemMessageW(
  DWORD,
  LPDWORD,
  UINT,
  WPARAM,
  LPARAM);
// #ifdef UNICODE
alias BroadcastSystemMessageW BroadcastSystemMessage;
// #else
// #...
// #endif // !UNICODE
// #elif defined(_WIN32_WINDOWS)

// ...

// #endif

enum : uint { BSM_ALLCOMPONENTS = 0x00000000 }
enum : uint { BSM_VXDS = 0x00000001 }
enum : uint { BSM_NETDRIVER = 0x00000002 }
enum : uint { BSM_INSTALLABLEDRIVERS = 0x00000004 }
enum : uint { BSM_APPLICATIONS = 0x00000008 }
enum : uint { BSM_ALLDESKTOPS = 0x00000010 }

enum : uint { BSF_QUERY = 0x00000001 }
enum : uint { BSF_IGNORECURRENTTASK = 0x00000002 }
enum : uint { BSF_FLUSHDISK = 0x00000004 }
enum : uint { BSF_NOHANG = 0x00000008 }
enum : uint { BSF_POSTMESSAGE = 0x00000010 }
enum : uint { BSF_FORCEIFHUNG = 0x00000020 }
enum : uint { BSF_NOTIMEOUTIFNOTHUNG = 0x00000040 }
// #if(_WIN32_WINNT >= 0x0500)
enum : uint { BSF_ALLOWSFW = 0x00000080 }
enum : uint { BSF_SENDNOTIFYMESSAGE = 0x00000100 }
// #endif /* _WIN32_WINNT >= 0x0500 */
// #if(_WIN32_WINNT >= 0x0501)
enum : uint { BSF_RETURNHDESK = 0x00000200 }
enum : uint { BSF_LUID = 0x00000400 }
// #endif /* _WIN32_WINNT >= 0x0501 */

enum : uint { BROADCAST_QUERY_DENY = 0x424D5144 }
// #endif /* WINVER >= 0x0400 */

// #if(WINVER >= 0x0500)
alias PVOID HDEVNOTIFY;
alias HDEVNOTIFY* PHDEVNOTIFY;

enum : uint { DEVICE_NOTIFY_WINDOW_HANDLE = 0x00000000 }
enum : uint { DEVICE_NOTIFY_SERVICE_HANDLE = 0x00000001 }
// #if(_WIN32_WINNT >= 0x0501)
enum : uint { DEVICE_NOTIFY_ALL_INTERFACE_CLASSES = 0x00000004 }
// #endif /* _WIN32_WINNT >= 0x0501 */

extern(Windows) export HDEVNOTIFY RegisterDeviceNotificationA(
  HANDLE hRecipient,
  LPVOID NotificationFilter,
  DWORD Flags);
extern(Windows) export HDEVNOTIFY RegisterDeviceNotificationW(
  HANDLE hRecipient,
  LPVOID NotificationFilter,
  DWORD Flags);
// #ifdef UNICODE
alias RegisterDeviceNotificationW RegisterDeviceNotification;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL UnregisterDeviceNotification(
  HDEVNOTIFY Handle);
// #endif /* WINVER >= 0x0500 */

extern(Windows) export BOOL PostMessageA(
  HWND hWnd,
  UINT Msg,
  WPARAM wParam,
  LPARAM lParam);
extern(Windows) export BOOL PostMessageW(
  HWND hWnd,
  UINT Msg,
  WPARAM wParam,
  LPARAM lParam);
version (Unicode) {
	alias PostMessageW PostMessage;
} else {
	alias PostMessageA PostMessage;
}

extern(Windows) export BOOL PostThreadMessageA(
  DWORD idThread,
  UINT Msg,
  WPARAM wParam,
  LPARAM lParam);
extern(Windows) export BOOL PostThreadMessageW(
  DWORD idThread,
  UINT Msg,
  WPARAM wParam,
  LPARAM lParam);
// #ifdef UNICODE
alias PostThreadMessageW PostThreadMessage;
// #else
// #...
// #endif // !UNICODE

alias PostThreadMessageA PostAppMessageA;
alias PostThreadMessageW PostAppMessageW;
// #ifdef UNICODE
alias PostAppMessageW PostAppMessage;
// #else
// #...
// #endif // !UNICODE

const HWND HWND_BROADCAST = cast(HWND)0xffff;

// #if(WINVER >= 0x0500)
const HWND HWND_MESSAGE = cast(HWND)-3;
// #endif /* WINVER >= 0x0500 */

extern(Windows) export BOOL AttachThreadInput(
  DWORD idAttach,
  DWORD idAttachTo,
  BOOL fAttach);

extern(Windows) export BOOL ReplyMessage(
  LRESULT lResult);

extern(Windows) export BOOL WaitMessage();

extern(Windows) export DWORD WaitForInputIdle(
  HANDLE hProcess,
  DWORD dwMilliseconds);

extern(Windows) export LRESULT DefWindowProcA(HWND hWnd, UINT Msg, WPARAM wParam, LPARAM lParam);
extern(Windows) export LRESULT DefWindowProcW(HWND hWnd, UINT Msg, WPARAM wParam, LPARAM lParam);
// #ifdef UNICODE
alias DefWindowProcW DefWindowProc;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export VOID PostQuitMessage(
  int nExitCode);

// #ifdef STRICT

extern(Windows) export LRESULT CallWindowProcA(
  WNDPROC lpPrevWndFunc,
  HWND hWnd,
  UINT Msg,
  WPARAM wParam,
  LPARAM lParam);
extern(Windows) export LRESULT CallWindowProcW(
  WNDPROC lpPrevWndFunc,
  HWND hWnd,
  UINT Msg,
  WPARAM wParam,
  LPARAM lParam);
// #ifdef UNICODE
alias CallWindowProcW CallWindowProc;
// #else
// #...
// #endif // !UNICODE

// #else /* !STRICT */

// ...
// #ifdef UNICODE
// #...
// #else
// #...
// #endif // !UNICODE

// #endif /* !STRICT */

extern(Windows) export BOOL InSendMessage();

// #if(WINVER >= 0x0500)
extern(Windows) export DWORD InSendMessageEx(
  LPVOID lpReserved);

enum : uint { ISMEX_NOSEND = 0x00000000 }
enum : uint { ISMEX_SEND = 0x00000001 }
enum : uint { ISMEX_NOTIFY = 0x00000002 }
enum : uint { ISMEX_CALLBACK = 0x00000004 }
enum : uint { ISMEX_REPLIED = 0x00000008 }
// #endif /* WINVER >= 0x0500 */

extern(Windows) export UINT GetDoubleClickTime();

extern(Windows) export BOOL SetDoubleClickTime(
  UINT);

extern(Windows) export ATOM RegisterClassA(
  WNDCLASSA *lpWndClass);
extern(Windows) export ATOM RegisterClassW(
  WNDCLASSW *lpWndClass);
// #ifdef UNICODE
alias RegisterClassW RegisterClass;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL UnregisterClassA(
  LPCSTR lpClassName,
  HINSTANCE hInstance);
extern(Windows) export BOOL UnregisterClassW(
  LPCWSTR lpClassName,
  HINSTANCE hInstance);
// #ifdef UNICODE
alias UnregisterClassW UnregisterClass;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL GetClassInfoA(
  HINSTANCE hInstance,
  LPCSTR lpClassName,
  LPWNDCLASSA lpWndClass);
extern(Windows) export BOOL GetClassInfoW(
  HINSTANCE hInstance,
  LPCWSTR lpClassName,
  LPWNDCLASSW lpWndClass);
// #ifdef UNICODE
alias GetClassInfoW GetClassInfo;
// #else
// #...
// #endif // !UNICODE

// #if(WINVER >= 0x0400)
extern(Windows) export ATOM RegisterClassExA(
  WNDCLASSEXA *);
extern(Windows) export ATOM RegisterClassExW(
  WNDCLASSEXW *);
// #ifdef UNICODE
alias RegisterClassExW RegisterClassEx;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL GetClassInfoExA(
  HINSTANCE,
  LPCSTR,
  LPWNDCLASSEXA);
extern(Windows) export BOOL GetClassInfoExW(
  HINSTANCE,
  LPCWSTR,
  LPWNDCLASSEXW);
// #ifdef UNICODE
alias GetClassInfoExW GetClassInfoEx;
// #else
// #...
// #endif // !UNICODE

// #endif /* WINVER >= 0x0400 */

enum { CW_USEDEFAULT = int.min }

const HWND HWND_DESKTOP = cast(HWND)0;

// #if(_WIN32_WINNT >= 0x0501)
extern(Windows) alias BOOLEAN function(LPCWSTR) PREGISTERCLASSNAMEW;
// #endif /* _WIN32_WINNT >= 0x0501 */

extern(Windows) export HWND CreateWindowExA(
  DWORD dwExStyle,
  LPCSTR lpClassName,
  LPCSTR lpWindowName,
  DWORD dwStyle,
  int X,
  int Y,
  int nWidth,
  int nHeight,
  HWND hWndParent,
  HMENU hMenu,
  HINSTANCE hInstance,
  LPVOID lpParam);
extern(Windows) export HWND CreateWindowExW(
  DWORD dwExStyle,
  LPCWSTR lpClassName,
  LPCWSTR lpWindowName,
  DWORD dwStyle,
  int X,
  int Y,
  int nWidth,
  int nHeight,
  HWND hWndParent,
  HMENU hMenu,
  HINSTANCE hInstance,
  LPVOID lpParam);
// #ifdef UNICODE
alias CreateWindowExW CreateWindowEx;
// #else
// #...
// #endif // !UNICODE

HWND CreateWindowA(LPCSTR lpClassName, LPCSTR lpWindowName, DWORD dwStyle, int x, int y, int nWidth, int nHeight, HWND hWndParent, HMENU hMenu, HINSTANCE hInstance, LPVOID lpParam){ return CreateWindowExA(0L, lpClassName, lpWindowName, dwStyle, x, y, nWidth, nHeight, hWndParent, hMenu, hInstance, lpParam); }
HWND CreateWindowW(LPCWSTR lpClassName, LPCWSTR lpWindowName, DWORD dwStyle, int x, int y, int nWidth, int nHeight, HWND hWndParent, HMENU hMenu, HINSTANCE hInstance, LPVOID lpParam){ return CreateWindowExW(0L, lpClassName, lpWindowName, dwStyle, x, y, nWidth, nHeight, hWndParent, hMenu, hInstance, lpParam); }
version (Unicode) {
	alias CreateWindowW CreateWindow;
} else {
	alias CreateWindowA CreateWindow;
}

extern(Windows) export BOOL IsWindow(
  HWND hWnd);

extern(Windows) export BOOL IsMenu(
  HMENU hMenu);

extern(Windows) export BOOL IsChild(
  HWND hWndParent,
  HWND hWnd);

extern(Windows) export BOOL DestroyWindow(
  HWND hWnd);

extern(Windows) export BOOL ShowWindow(
  HWND hWnd,
  int nCmdShow);

// #if(WINVER >= 0x0500)
extern(Windows) export BOOL AnimateWindow(
  HWND hWnd,
  DWORD dwTime,
  DWORD dwFlags);
// #endif /* WINVER >= 0x0500 */

// #if(_WIN32_WINNT >= 0x0500)
// #if defined(_WINGDI_) && !defined (NOGDI)

// ...
// #endif

// #if(_WIN32_WINNT >= 0x0501)
extern(Windows) export BOOL GetLayeredWindowAttributes(
  HWND hwnd,
  COLORREF *pcrKey,
  BYTE *pbAlpha,
  DWORD *pdwFlags);

enum : uint { PW_CLIENTONLY = 0x00000001 }

extern(Windows) export BOOL PrintWindow(
  HWND hwnd,
  HDC hdcBlt,
  UINT nFlags);

// #endif /* _WIN32_WINNT >= 0x0501 */

extern(Windows) export BOOL SetLayeredWindowAttributes(
  HWND hwnd,
  COLORREF crKey,
  BYTE bAlpha,
  DWORD dwFlags);

enum : uint { LWA_COLORKEY = 0x00000001 }
enum : uint { LWA_ALPHA = 0x00000002 }

enum : uint { ULW_COLORKEY = 0x00000001 }
enum : uint { ULW_ALPHA = 0x00000002 }
enum : uint { ULW_OPAQUE = 0x00000004 }

// #endif /* _WIN32_WINNT >= 0x0500 */

// #if(WINVER >= 0x0400)
extern(Windows) export BOOL ShowWindowAsync(
  HWND hWnd,
  int nCmdShow);
// #endif /* WINVER >= 0x0400 */

extern(Windows) export BOOL FlashWindow(
  HWND hWnd,
  BOOL bInvert);

// #if(WINVER >= 0x0500)
struct _1 {
  UINT cbSize;
  HWND hwnd;
  DWORD dwFlags;
  UINT uCount;
  DWORD dwTimeout;
}
alias _1 FLASHWINFO;
alias _1* PFLASHWINFO;

extern(Windows) export BOOL FlashWindowEx(
  PFLASHWINFO pfwi);

enum : uint { FLASHW_STOP = 0 }
enum : uint { FLASHW_CAPTION = 0x00000001 }
enum : uint { FLASHW_TRAY = 0x00000002 }
enum : uint { FLASHW_ALL = FLASHW_CAPTION | FLASHW_TRAY }
enum : uint { FLASHW_TIMER = 0x00000004 }
enum : uint { FLASHW_TIMERNOFG = 0x0000000C }

// #endif /* WINVER >= 0x0500 */

extern(Windows) export BOOL ShowOwnedPopups(
  HWND hWnd,
  BOOL fShow);

extern(Windows) export BOOL OpenIcon(
  HWND hWnd);

extern(Windows) export BOOL CloseWindow(
  HWND hWnd);

extern(Windows) export BOOL MoveWindow(
  HWND hWnd,
  int X,
  int Y,
  int nWidth,
  int nHeight,
  BOOL bRepaint);

extern(Windows) export BOOL SetWindowPos(
  HWND hWnd,
  HWND hWndInsertAfter,
  int X,
  int Y,
  int cx,
  int cy,
  UINT uFlags);

extern(Windows) export BOOL GetWindowPlacement(
  HWND hWnd,
  WINDOWPLACEMENT *lpwndpl);

extern(Windows) export BOOL SetWindowPlacement(
  HWND hWnd,
  WINDOWPLACEMENT *lpwndpl);

// #ifndef NODEFERWINDOWPOS

extern(Windows) export HDWP BeginDeferWindowPos(
  int nNumWindows);

extern(Windows) export HDWP DeferWindowPos(
  HDWP hWinPosInfo,
  HWND hWnd,
  HWND hWndInsertAfter,
  int x,
  int y,
  int cx,
  int cy,
  UINT uFlags);

extern(Windows) export BOOL EndDeferWindowPos(
  HDWP hWinPosInfo);

// #endif /* !NODEFERWINDOWPOS */

extern(Windows) export BOOL IsWindowVisible(
  HWND hWnd);

extern(Windows) export BOOL IsIconic(
  HWND hWnd);

extern(Windows) export BOOL AnyPopup();

extern(Windows) export BOOL BringWindowToTop(
  HWND hWnd);

extern(Windows) export BOOL IsZoomed(
  HWND hWnd);

enum : uint { SWP_NOSIZE = 0x0001 }
enum : uint { SWP_NOMOVE = 0x0002 }
enum : uint { SWP_NOZORDER = 0x0004 }
enum : uint { SWP_NOREDRAW = 0x0008 }
enum : uint { SWP_NOACTIVATE = 0x0010 }
enum : uint { SWP_FRAMECHANGED = 0x0020 }
enum : uint { SWP_SHOWWINDOW = 0x0040 }
enum : uint { SWP_HIDEWINDOW = 0x0080 }
enum : uint { SWP_NOCOPYBITS = 0x0100 }
enum : uint { SWP_NOOWNERZORDER = 0x0200 }
enum : uint { SWP_NOSENDCHANGING = 0x0400 }

alias SWP_FRAMECHANGED SWP_DRAWFRAME;
alias SWP_NOOWNERZORDER SWP_NOREPOSITION;

// #if(WINVER >= 0x0400)
enum : uint { SWP_DEFERERASE = 0x2000 }
enum : uint { SWP_ASYNCWINDOWPOS = 0x4000 }
// #endif /* WINVER >= 0x0400 */

const HWND HWND_TOP = cast(HWND)0;
const HWND HWND_BOTTOM = cast(HWND)1;
const HWND HWND_TOPMOST = cast(HWND)-1;
const HWND HWND_NOTOPMOST = cast(HWND)-2;

// #ifndef NOCTLMGR

align(2):

struct _2 {
  DWORD style;
  DWORD dwExtendedStyle;
  WORD cdit;
  short x;
  short y;
  short cx;
  short cy;
}
alias _2 DLGTEMPLATE;

alias DLGTEMPLATE* LPDLGTEMPLATEA;
alias DLGTEMPLATE* LPDLGTEMPLATEW;
// #ifdef UNICODE
alias LPDLGTEMPLATEW LPDLGTEMPLATE;
// #else
// ...
// #endif // UNICODE
alias DLGTEMPLATE* LPCDLGTEMPLATEA;
alias DLGTEMPLATE* LPCDLGTEMPLATEW;
// #ifdef UNICODE
alias LPCDLGTEMPLATEW LPCDLGTEMPLATE;
// #else
// ...
// #endif // UNICODE

struct _3 {
  DWORD style;
  DWORD dwExtendedStyle;
  short x;
  short y;
  short cx;
  short cy;
  WORD id;
}
alias _3 DLGITEMTEMPLATE;

alias DLGITEMTEMPLATE* PDLGITEMTEMPLATEA;
alias DLGITEMTEMPLATE* PDLGITEMTEMPLATEW;
// #ifdef UNICODE
alias PDLGITEMTEMPLATEW PDLGITEMTEMPLATE;
// #else
// ...
// #endif // UNICODE
alias DLGITEMTEMPLATE* LPDLGITEMTEMPLATEA;
alias DLGITEMTEMPLATE* LPDLGITEMTEMPLATEW;
// #ifdef UNICODE
alias LPDLGITEMTEMPLATEW LPDLGITEMTEMPLATE;
// #else
// ...
// #endif // UNICODE

align:

extern(Windows) export HWND CreateDialogParamA(
  HINSTANCE hInstance,
  LPCSTR lpTemplateName,
  HWND hWndParent,
  DLGPROC lpDialogFunc,
  LPARAM dwInitParam);
extern(Windows) export HWND CreateDialogParamW(
  HINSTANCE hInstance,
  LPCWSTR lpTemplateName,
  HWND hWndParent,
  DLGPROC lpDialogFunc,
  LPARAM dwInitParam);
// #ifdef UNICODE
alias CreateDialogParamW CreateDialogParam;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export HWND CreateDialogIndirectParamA(
  HINSTANCE hInstance,
  LPCDLGTEMPLATEA lpTemplate,
  HWND hWndParent,
  DLGPROC lpDialogFunc,
  LPARAM dwInitParam);
extern(Windows) export HWND CreateDialogIndirectParamW(
  HINSTANCE hInstance,
  LPCDLGTEMPLATEW lpTemplate,
  HWND hWndParent,
  DLGPROC lpDialogFunc,
  LPARAM dwInitParam);
// #ifdef UNICODE
alias CreateDialogIndirectParamW CreateDialogIndirectParam;
// #else
// #...
// #endif // !UNICODE

HWND CreateDialogA(HINSTANCE hInstance, LPCSTR lpName, HWND hWndParent, DLGPROC lpDialogFunc){ return CreateDialogParamA(hInstance, lpName, hWndParent, lpDialogFunc, 0L); }
HWND CreateDialogW(HINSTANCE hInstance, LPCWSTR lpName, HWND hWndParent, DLGPROC lpDialogFunc){ return CreateDialogParamW(hInstance, lpName, hWndParent, lpDialogFunc, 0L); }
// #ifdef UNICODE
alias CreateDialogW CreateDialog;
// #else
// #...
// #endif // !UNICODE

HWND CreateDialogIndirectA(HINSTANCE hInstance, LPCDLGTEMPLATE lpTemplate, HWND hWndParent, DLGPROC lpDialogFunc){ return CreateDialogIndirectParamA(hInstance, lpTemplate, hWndParent, lpDialogFunc, 0L); }
HWND CreateDialogIndirectW(HINSTANCE hInstance, LPCDLGTEMPLATE lpTemplate, HWND hWndParent, DLGPROC lpDialogFunc){ return CreateDialogIndirectParamW(hInstance, lpTemplate, hWndParent, lpDialogFunc, 0L); }
// #ifdef UNICODE
alias CreateDialogIndirectW CreateDialogIndirect;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export INT_PTR DialogBoxParamA(
  HINSTANCE hInstance,
  LPCSTR lpTemplateName,
  HWND hWndParent,
  DLGPROC lpDialogFunc,
  LPARAM dwInitParam);
extern(Windows) export INT_PTR DialogBoxParamW(
  HINSTANCE hInstance,
  LPCWSTR lpTemplateName,
  HWND hWndParent,
  DLGPROC lpDialogFunc,
  LPARAM dwInitParam);
// #ifdef UNICODE
alias DialogBoxParamW DialogBoxParam;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export INT_PTR DialogBoxIndirectParamA(
  HINSTANCE hInstance,
  LPCDLGTEMPLATEA hDialogTemplate,
  HWND hWndParent,
  DLGPROC lpDialogFunc,
  LPARAM dwInitParam);
extern(Windows) export INT_PTR DialogBoxIndirectParamW(
  HINSTANCE hInstance,
  LPCDLGTEMPLATEW hDialogTemplate,
  HWND hWndParent,
  DLGPROC lpDialogFunc,
  LPARAM dwInitParam);
// #ifdef UNICODE
alias DialogBoxIndirectParamW DialogBoxIndirectParam;
// #else
// #...
// #endif // !UNICODE

// #define DialogBoxA(hInstance, lpTemplate, hWndParent, lpDialogFunc) DialogBoxParamA(hInstance, lpTemplate, hWndParent, lpDialogFunc, 0L)
// #define DialogBoxW(hInstance, lpTemplate, hWndParent, lpDialogFunc) DialogBoxParamW(hInstance, lpTemplate, hWndParent, lpDialogFunc, 0L)
// #ifdef UNICODE
// #define DialogBox DialogBoxW
// #else
// #...
// #endif // !UNICODE

// #define DialogBoxIndirectA(hInstance, lpTemplate, hWndParent, lpDialogFunc) DialogBoxIndirectParamA(hInstance, lpTemplate, hWndParent, lpDialogFunc, 0L)
// #define DialogBoxIndirectW(hInstance, lpTemplate, hWndParent, lpDialogFunc) DialogBoxIndirectParamW(hInstance, lpTemplate, hWndParent, lpDialogFunc, 0L)
// #ifdef UNICODE
// #define DialogBoxIndirect DialogBoxIndirectW
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL EndDialog(
  HWND hDlg,
  INT_PTR nResult);

extern(Windows) export HWND GetDlgItem(
  HWND hDlg,
  int nIDDlgItem);

extern(Windows) export BOOL SetDlgItemInt(
  HWND hDlg,
  int nIDDlgItem,
  UINT uValue,
  BOOL bSigned);

extern(Windows) export UINT GetDlgItemInt(
  HWND hDlg,
  int nIDDlgItem,
  BOOL *lpTranslated,
  BOOL bSigned);

extern(Windows) export BOOL SetDlgItemTextA(
  HWND hDlg,
  int nIDDlgItem,
  LPCSTR lpString);
extern(Windows) export BOOL SetDlgItemTextW(
  HWND hDlg,
  int nIDDlgItem,
  LPCWSTR lpString);
// #ifdef UNICODE
alias SetDlgItemTextW SetDlgItemText;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export UINT GetDlgItemTextA(
  HWND hDlg,
  int nIDDlgItem,
  LPSTR lpString,
  int nMaxCount);
extern(Windows) export UINT GetDlgItemTextW(
  HWND hDlg,
  int nIDDlgItem,
  LPWSTR lpString,
  int nMaxCount);
// #ifdef UNICODE
alias GetDlgItemTextW GetDlgItemText;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL CheckDlgButton(
  HWND hDlg,
  int nIDButton,
  UINT uCheck);

extern(Windows) export BOOL CheckRadioButton(
  HWND hDlg,
  int nIDFirstButton,
  int nIDLastButton,
  int nIDCheckButton);

extern(Windows) export UINT IsDlgButtonChecked(
  HWND hDlg,
  int nIDButton);

extern(Windows) export LRESULT SendDlgItemMessageA(
  HWND hDlg,
  int nIDDlgItem,
  UINT Msg,
  WPARAM wParam,
  LPARAM lParam);
extern(Windows) export LRESULT SendDlgItemMessageW(
  HWND hDlg,
  int nIDDlgItem,
  UINT Msg,
  WPARAM wParam,
  LPARAM lParam);
// #ifdef UNICODE
alias SendDlgItemMessageW SendDlgItemMessage;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export HWND GetNextDlgGroupItem(
  HWND hDlg,
  HWND hCtl,
  BOOL bPrevious);

extern(Windows) export HWND GetNextDlgTabItem(
  HWND hDlg,
  HWND hCtl,
  BOOL bPrevious);

extern(Windows) export int GetDlgCtrlID(
  HWND hWnd);

extern(Windows) export int GetDialogBaseUnits();

extern(Windows) export LRESULT DefDlgProcA(HWND hDlg, UINT Msg, WPARAM wParam, LPARAM lParam);
extern(Windows) export LRESULT DefDlgProcW(HWND hDlg, UINT Msg, WPARAM wParam, LPARAM lParam);
// #ifdef UNICODE
alias DefDlgProcW DefDlgProc;
// #else
// #...
// #endif // !UNICODE

// #ifndef _MAC
enum : uint { DLGWINDOWEXTRA = 30 }
// #else
// #...
// #endif

// #endif /* !NOCTLMGR */

// #ifndef NOMSG

extern(Windows) export BOOL CallMsgFilterA(
  LPMSG lpMsg,
  int nCode);
extern(Windows) export BOOL CallMsgFilterW(
  LPMSG lpMsg,
  int nCode);
// #ifdef UNICODE
alias CallMsgFilterW CallMsgFilter;
// #else
// #...
// #endif // !UNICODE

// #endif /* !NOMSG */

// #ifndef NOCLIPBOARD

extern(Windows) export BOOL OpenClipboard(
  HWND hWndNewOwner);

extern(Windows) export BOOL CloseClipboard();

// #if(WINVER >= 0x0500)

extern(Windows) export DWORD GetClipboardSequenceNumber();

// #endif /* WINVER >= 0x0500 */

extern(Windows) export HWND GetClipboardOwner();

extern(Windows) export HWND SetClipboardViewer(
  HWND hWndNewViewer);

extern(Windows) export HWND GetClipboardViewer();

extern(Windows) export BOOL ChangeClipboardChain(
  HWND hWndRemove,
  HWND hWndNewNext);

extern(Windows) export HANDLE SetClipboardData(
  UINT uFormat,
  HANDLE hMem);

extern(Windows) export HANDLE GetClipboardData(
  UINT uFormat);

extern(Windows) export UINT RegisterClipboardFormatA(
  LPCSTR lpszFormat);
extern(Windows) export UINT RegisterClipboardFormatW(
  LPCWSTR lpszFormat);
// #ifdef UNICODE
alias RegisterClipboardFormatW RegisterClipboardFormat;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export int CountClipboardFormats();

extern(Windows) export UINT EnumClipboardFormats(
  UINT format);

extern(Windows) export int GetClipboardFormatNameA(
  UINT format,
  LPSTR lpszFormatName,
  int cchMaxCount);
extern(Windows) export int GetClipboardFormatNameW(
  UINT format,
  LPWSTR lpszFormatName,
  int cchMaxCount);
// #ifdef UNICODE
alias GetClipboardFormatNameW GetClipboardFormatName;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL EmptyClipboard();

extern(Windows) export BOOL IsClipboardFormatAvailable(
  UINT format);

extern(Windows) export int GetPriorityClipboardFormat(
  UINT *paFormatPriorityList,
  int cFormats);

extern(Windows) export HWND GetOpenClipboardWindow();

// #endif /* !NOCLIPBOARD */

extern(Windows) export BOOL CharToOemA(
  LPCSTR lpszSrc,
  LPSTR lpszDst);
extern(Windows) export BOOL CharToOemW(
  LPCWSTR lpszSrc,
  LPSTR lpszDst);
// #ifdef UNICODE
alias CharToOemW CharToOem;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL OemToCharA(
  LPCSTR lpszSrc,
  LPSTR lpszDst);
extern(Windows) export BOOL OemToCharW(
  LPCSTR lpszSrc,
  LPWSTR lpszDst);
// #ifdef UNICODE
alias OemToCharW OemToChar;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL CharToOemBuffA(
  LPCSTR lpszSrc,
  LPSTR lpszDst,
  DWORD cchDstLength);
extern(Windows) export BOOL CharToOemBuffW(
  LPCWSTR lpszSrc,
  LPSTR lpszDst,
  DWORD cchDstLength);
// #ifdef UNICODE
alias CharToOemBuffW CharToOemBuff;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL OemToCharBuffA(
  LPCSTR lpszSrc,
  LPSTR lpszDst,
  DWORD cchDstLength);
extern(Windows) export BOOL OemToCharBuffW(
  LPCSTR lpszSrc,
  LPWSTR lpszDst,
  DWORD cchDstLength);
// #ifdef UNICODE
alias OemToCharBuffW OemToCharBuff;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export LPSTR CharUpperA(
  LPSTR lpsz);
extern(Windows) export LPWSTR CharUpperW(
  LPWSTR lpsz);
// #ifdef UNICODE
alias CharUpperW CharUpper;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export DWORD CharUpperBuffA(
  LPSTR lpsz,
  DWORD cchLength);
extern(Windows) export DWORD CharUpperBuffW(
  LPWSTR lpsz,
  DWORD cchLength);
// #ifdef UNICODE
alias CharUpperBuffW CharUpperBuff;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export LPSTR CharLowerA(
  LPSTR lpsz);
extern(Windows) export LPWSTR CharLowerW(
  LPWSTR lpsz);
// #ifdef UNICODE
alias CharLowerW CharLower;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export DWORD CharLowerBuffA(
  LPSTR lpsz,
  DWORD cchLength);
extern(Windows) export DWORD CharLowerBuffW(
  LPWSTR lpsz,
  DWORD cchLength);
// #ifdef UNICODE
alias CharLowerBuffW CharLowerBuff;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export LPSTR CharNextA(
  LPCSTR lpsz);
extern(Windows) export LPWSTR CharNextW(
  LPCWSTR lpsz);
// #ifdef UNICODE
alias CharNextW CharNext;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export LPSTR CharPrevA(
  LPCSTR lpszStart,
  LPCSTR lpszCurrent);
extern(Windows) export LPWSTR CharPrevW(
  LPCWSTR lpszStart,
  LPCWSTR lpszCurrent);
// #ifdef UNICODE
alias CharPrevW CharPrev;
// #else
// #...
// #endif // !UNICODE

// #if(WINVER >= 0x0400)
extern(Windows) export LPSTR CharNextExA(
  WORD CodePage,
  LPCSTR lpCurrentChar,
  DWORD dwFlags);

extern(Windows) export LPSTR CharPrevExA(
  WORD CodePage,
  LPCSTR lpStart,
  LPCSTR lpCurrentChar,
  DWORD dwFlags);
// #endif /* WINVER >= 0x0400 */

alias CharToOemA AnsiToOem;
alias OemToCharA OemToAnsi;
alias CharToOemBuffA AnsiToOemBuff;
alias OemToCharBuffA OemToAnsiBuff;
alias CharUpperA AnsiUpper;
alias CharUpperBuffA AnsiUpperBuff;
alias CharLowerA AnsiLower;
alias CharLowerBuffA AnsiLowerBuff;
alias CharNextA AnsiNext;
alias CharPrevA AnsiPrev;

// #ifndef  NOLANGUAGE

extern(Windows) export BOOL IsCharAlphaA(
  CHAR ch);
extern(Windows) export BOOL IsCharAlphaW(
  WCHAR ch);
// #ifdef UNICODE
alias IsCharAlphaW IsCharAlpha;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL IsCharAlphaNumericA(
  CHAR ch);
extern(Windows) export BOOL IsCharAlphaNumericW(
  WCHAR ch);
// #ifdef UNICODE
alias IsCharAlphaNumericW IsCharAlphaNumeric;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL IsCharUpperA(
  CHAR ch);
extern(Windows) export BOOL IsCharUpperW(
  WCHAR ch);
// #ifdef UNICODE
alias IsCharUpperW IsCharUpper;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL IsCharLowerA(
  CHAR ch);
extern(Windows) export BOOL IsCharLowerW(
  WCHAR ch);
// #ifdef UNICODE
alias IsCharLowerW IsCharLower;
// #else
// #...
// #endif // !UNICODE

// #endif  /* !NOLANGUAGE */

extern(Windows) export HWND SetFocus(
  HWND hWnd);

extern(Windows) export HWND GetActiveWindow();

extern(Windows) export HWND GetFocus();

extern(Windows) export UINT GetKBCodePage();

extern(Windows) export SHORT GetKeyState(
  int nVirtKey);

extern(Windows) export SHORT GetAsyncKeyState(
  int vKey);

extern(Windows) export BOOL GetKeyboardState(
  PBYTE lpKeyState);

extern(Windows) export BOOL SetKeyboardState(
  LPBYTE lpKeyState);

extern(Windows) export int GetKeyNameTextA(
  LONG lParam,
  LPSTR lpString,
  int nSize);
extern(Windows) export int GetKeyNameTextW(
  LONG lParam,
  LPWSTR lpString,
  int nSize);
// #ifdef UNICODE
alias GetKeyNameTextW GetKeyNameText;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export int GetKeyboardType(
  int nTypeFlag);

extern(Windows) export int ToAscii(
  UINT uVirtKey,
  UINT uScanCode,
  BYTE *lpKeyState,
  LPWORD lpChar,
  UINT uFlags);

// #if(WINVER >= 0x0400)
extern(Windows) export int ToAsciiEx(
  UINT uVirtKey,
  UINT uScanCode,
  BYTE *lpKeyState,
  LPWORD lpChar,
  UINT uFlags,
  HKL dwhkl);
// #endif /* WINVER >= 0x0400 */

extern(Windows) export int ToUnicode(
  UINT wVirtKey,
  UINT wScanCode,
  BYTE *lpKeyState,
  LPWSTR pwszBuff,
  int cchBuff,
  UINT wFlags);

extern(Windows) export DWORD OemKeyScan(
  WORD wOemChar);

extern(Windows) export SHORT VkKeyScanA(
  CHAR ch);
extern(Windows) export SHORT VkKeyScanW(
  WCHAR ch);
// #ifdef UNICODE
alias VkKeyScanW VkKeyScan;
// #else
// #...
// #endif // !UNICODE

// #if(WINVER >= 0x0400)
extern(Windows) export SHORT VkKeyScanExA(
  CHAR ch,
  HKL dwhkl);
extern(Windows) export SHORT VkKeyScanExW(
  WCHAR ch,
  HKL dwhkl);
// #ifdef UNICODE
alias VkKeyScanExW VkKeyScanEx;
// #else
// #...
// #endif // !UNICODE
// #endif /* WINVER >= 0x0400 */
enum : uint { KEYEVENTF_EXTENDEDKEY = 0x0001 }
enum : uint { KEYEVENTF_KEYUP = 0x0002 }
// #if(_WIN32_WINNT >= 0x0500)
enum : uint { KEYEVENTF_UNICODE = 0x0004 }
enum : uint { KEYEVENTF_SCANCODE = 0x0008 }
// #endif /* _WIN32_WINNT >= 0x0500 */

extern(Windows) export VOID keybd_event(
  BYTE bVk,
  BYTE bScan,
  DWORD dwFlags,
  ULONG_PTR dwExtraInfo);

enum : uint { MOUSEEVENTF_MOVE = 0x0001 }
enum : uint { MOUSEEVENTF_LEFTDOWN = 0x0002 }
enum : uint { MOUSEEVENTF_LEFTUP = 0x0004 }
enum : uint { MOUSEEVENTF_RIGHTDOWN = 0x0008 }
enum : uint { MOUSEEVENTF_RIGHTUP = 0x0010 }
enum : uint { MOUSEEVENTF_MIDDLEDOWN = 0x0020 }
enum : uint { MOUSEEVENTF_MIDDLEUP = 0x0040 }
enum : uint { MOUSEEVENTF_XDOWN = 0x0080 }
enum : uint { MOUSEEVENTF_XUP = 0x0100 }
enum : uint { MOUSEEVENTF_WHEEL = 0x0800 }
enum : uint { MOUSEEVENTF_VIRTUALDESK = 0x4000 }
enum : uint { MOUSEEVENTF_ABSOLUTE = 0x8000 }

extern(Windows) export VOID mouse_event(
  DWORD dwFlags,
  DWORD dx,
  DWORD dy,
  DWORD dwData,
  ULONG_PTR dwExtraInfo);

// #if (_WIN32_WINNT > 0x0400)

struct tagMOUSEINPUT {
  LONG dx;
  LONG dy;
  DWORD mouseData;
  DWORD dwFlags;
  DWORD time;
  ULONG_PTR dwExtraInfo;
}
alias tagMOUSEINPUT MOUSEINPUT;
alias tagMOUSEINPUT* PMOUSEINPUT;
alias tagMOUSEINPUT* LPMOUSEINPUT;

struct tagKEYBDINPUT {
  WORD wVk;
  WORD wScan;
  DWORD dwFlags;
  DWORD time;
  ULONG_PTR dwExtraInfo;
}
alias tagKEYBDINPUT KEYBDINPUT;
alias tagKEYBDINPUT* PKEYBDINPUT;
alias tagKEYBDINPUT* LPKEYBDINPUT;

struct tagHARDWAREINPUT {
  DWORD uMsg;
  WORD wParamL;
  WORD wParamH;
}
alias tagHARDWAREINPUT HARDWAREINPUT;
alias tagHARDWAREINPUT* PHARDWAREINPUT;
alias tagHARDWAREINPUT* LPHARDWAREINPUT;

enum : uint { INPUT_MOUSE = 0 }
enum : uint { INPUT_KEYBOARD = 1 }
enum : uint { INPUT_HARDWARE = 2 }

struct tagINPUT {
  DWORD type;
union {
  MOUSEINPUT mi;
  KEYBDINPUT ki;
  HARDWAREINPUT hi;
}

}
alias tagINPUT INPUT;
alias tagINPUT* PINPUT;
alias tagINPUT* LPINPUT;

extern(Windows) export UINT SendInput(
  UINT cInputs, // number of input in the array
  LPINPUT pInputs, // array of inputs
  int cbSize);

// #endif // (_WIN32_WINNT > 0x0400)

// #if(_WIN32_WINNT >= 0x0500)
struct tagLASTINPUTINFO {
  UINT cbSize;
  DWORD dwTime;
}
alias tagLASTINPUTINFO LASTINPUTINFO;
alias tagLASTINPUTINFO* PLASTINPUTINFO;

extern(Windows) export BOOL GetLastInputInfo(
  PLASTINPUTINFO plii);
// #endif /* _WIN32_WINNT >= 0x0500 */

extern(Windows) export UINT MapVirtualKeyA(
  UINT uCode,
  UINT uMapType);
extern(Windows) export UINT MapVirtualKeyW(
  UINT uCode,
  UINT uMapType);
// #ifdef UNICODE
alias MapVirtualKeyW MapVirtualKey;
// #else
// #...
// #endif // !UNICODE

// #if(WINVER >= 0x0400)
extern(Windows) export UINT MapVirtualKeyExA(
  UINT uCode,
  UINT uMapType,
  HKL dwhkl);
extern(Windows) export UINT MapVirtualKeyExW(
  UINT uCode,
  UINT uMapType,
  HKL dwhkl);
// #ifdef UNICODE
alias MapVirtualKeyExW MapVirtualKeyEx;
// #else
// #...
// #endif // !UNICODE
// #endif /* WINVER >= 0x0400 */

extern(Windows) export BOOL GetInputState();

extern(Windows) export DWORD GetQueueStatus(
  UINT flags);

extern(Windows) export HWND GetCapture();

extern(Windows) export HWND SetCapture(
  HWND hWnd);

extern(Windows) export BOOL ReleaseCapture();

extern(Windows) export DWORD MsgWaitForMultipleObjects(
  DWORD nCount,
  HANDLE *pHandles,
  BOOL fWaitAll,
  DWORD dwMilliseconds,
  DWORD dwWakeMask);

extern(Windows) export DWORD MsgWaitForMultipleObjectsEx(
  DWORD nCount,
  HANDLE *pHandles,
  DWORD dwMilliseconds,
  DWORD dwWakeMask,
  DWORD dwFlags);

enum : uint { MWMO_WAITALL = 0x0001 }
enum : uint { MWMO_ALERTABLE = 0x0002 }
enum : uint { MWMO_INPUTAVAILABLE = 0x0004 }

enum : uint { QS_KEY = 0x0001 }
enum : uint { QS_MOUSEMOVE = 0x0002 }
enum : uint { QS_MOUSEBUTTON = 0x0004 }
// #define QS_POSTMESSAGE 0x0008
// #define QS_TIMER 0x0010
// #define QS_PAINT 0x0020
// #define QS_SENDMESSAGE 0x0040
// #define QS_HOTKEY 0x0080
enum : uint { QS_ALLPOSTMESSAGE = 0x0100 }
// #if(_WIN32_WINNT >= 0x0501)
enum : uint { QS_RAWINPUT = 0x0400 }
// #endif /* _WIN32_WINNT >= 0x0501 */

enum : uint { QS_MOUSE = QS_MOUSEMOVE | QS_MOUSEBUTTON }

// #if (_WIN32_WINNT >= 0x0501)
// #define QS_INPUT (QS_MOUSE | QS_KEY | QS_RAWINPUT)
// #else
// #...
// ...
// #endif // (_WIN32_WINNT >= 0x0501)

enum : uint { QS_ALLEVENTS = QS_INPUT | QS_POSTMESSAGE | QS_TIMER | QS_PAINT | QS_HOTKEY }

enum : uint { QS_ALLINPUT = QS_INPUT | QS_POSTMESSAGE | QS_TIMER | QS_PAINT | QS_HOTKEY | QS_SENDMESSAGE }

extern(Windows) export UINT_PTR SetTimer(
  HWND hWnd,
  UINT_PTR nIDEvent,
  UINT uElapse,
  TIMERPROC lpTimerFunc);

extern(Windows) export BOOL KillTimer(
  HWND hWnd,
  UINT_PTR uIDEvent);

extern(Windows) export BOOL IsWindowUnicode(
  HWND hWnd);

extern(Windows) export BOOL EnableWindow(
  HWND hWnd,
  BOOL bEnable);

extern(Windows) export BOOL IsWindowEnabled(
  HWND hWnd);

extern(Windows) export HACCEL LoadAcceleratorsA(
  HINSTANCE hInstance,
  LPCSTR lpTableName);
extern(Windows) export HACCEL LoadAcceleratorsW(
  HINSTANCE hInstance,
  LPCWSTR lpTableName);
// #ifdef UNICODE
alias LoadAcceleratorsW LoadAccelerators;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export HACCEL CreateAcceleratorTableA(
  LPACCEL, int);
extern(Windows) export HACCEL CreateAcceleratorTableW(
  LPACCEL, int);
// #ifdef UNICODE
alias CreateAcceleratorTableW CreateAcceleratorTable;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL DestroyAcceleratorTable(
  HACCEL hAccel);

extern(Windows) export int CopyAcceleratorTableA(
  HACCEL hAccelSrc,
  LPACCEL lpAccelDst,
  int cAccelEntries);
extern(Windows) export int CopyAcceleratorTableW(
  HACCEL hAccelSrc,
  LPACCEL lpAccelDst,
  int cAccelEntries);
// #ifdef UNICODE
alias CopyAcceleratorTableW CopyAcceleratorTable;
// #else
// #...
// #endif // !UNICODE

// #ifndef NOMSG

extern(Windows) export int TranslateAcceleratorA(
  HWND hWnd,
  HACCEL hAccTable,
  LPMSG lpMsg);
extern(Windows) export int TranslateAcceleratorW(
  HWND hWnd,
  HACCEL hAccTable,
  LPMSG lpMsg);
// #ifdef UNICODE
alias TranslateAcceleratorW TranslateAccelerator;
// #else
// #...
// #endif // !UNICODE

// #endif /* !NOMSG */

// #ifndef NOSYSMETRICS

enum : uint { SM_CXSCREEN = 0 }
enum : uint { SM_CYSCREEN = 1 }
enum : uint { SM_CXVSCROLL = 2 }
enum : uint { SM_CYHSCROLL = 3 }
enum : uint { SM_CYCAPTION = 4 }
enum : uint { SM_CXBORDER = 5 }
enum : uint { SM_CYBORDER = 6 }
enum : uint { SM_CXDLGFRAME = 7 }
enum : uint { SM_CYDLGFRAME = 8 }
enum : uint { SM_CYVTHUMB = 9 }
enum : uint { SM_CXHTHUMB = 10 }
enum : uint { SM_CXICON = 11 }
enum : uint { SM_CYICON = 12 }
enum : uint { SM_CXCURSOR = 13 }
enum : uint { SM_CYCURSOR = 14 }
enum : uint { SM_CYMENU = 15 }
enum : uint { SM_CXFULLSCREEN = 16 }
enum : uint { SM_CYFULLSCREEN = 17 }
enum : uint { SM_CYKANJIWINDOW = 18 }
enum : uint { SM_MOUSEPRESENT = 19 }
enum : uint { SM_CYVSCROLL = 20 }
enum : uint { SM_CXHSCROLL = 21 }
enum : uint { SM_DEBUG = 22 }
enum : uint { SM_SWAPBUTTON = 23 }
enum : uint { SM_RESERVED1 = 24 }
enum : uint { SM_RESERVED2 = 25 }
enum : uint { SM_RESERVED3 = 26 }
enum : uint { SM_RESERVED4 = 27 }
enum : uint { SM_CXMIN = 28 }
enum : uint { SM_CYMIN = 29 }
enum : uint { SM_CXSIZE = 30 }
enum : uint { SM_CYSIZE = 31 }
enum : uint { SM_CXFRAME = 32 }
enum : uint { SM_CYFRAME = 33 }
enum : uint { SM_CXMINTRACK = 34 }
enum : uint { SM_CYMINTRACK = 35 }
enum : uint { SM_CXDOUBLECLK = 36 }
enum : uint { SM_CYDOUBLECLK = 37 }
enum : uint { SM_CXICONSPACING = 38 }
enum : uint { SM_CYICONSPACING = 39 }
enum : uint { SM_MENUDROPALIGNMENT = 40 }
enum : uint { SM_PENWINDOWS = 41 }
enum : uint { SM_DBCSENABLED = 42 }
enum : uint { SM_CMOUSEBUTTONS = 43 }

// #if(WINVER >= 0x0400)
alias SM_CXDLGFRAME SM_CXFIXEDFRAME;
alias SM_CYDLGFRAME SM_CYFIXEDFRAME;
alias SM_CXFRAME SM_CXSIZEFRAME;
alias SM_CYFRAME SM_CYSIZEFRAME;

enum : uint { SM_SECURE = 44 }
enum : uint { SM_CXEDGE = 45 }
enum : uint { SM_CYEDGE = 46 }
enum : uint { SM_CXMINSPACING = 47 }
enum : uint { SM_CYMINSPACING = 48 }
enum : uint { SM_CXSMICON = 49 }
enum : uint { SM_CYSMICON = 50 }
enum : uint { SM_CYSMCAPTION = 51 }
enum : uint { SM_CXSMSIZE = 52 }
enum : uint { SM_CYSMSIZE = 53 }
enum : uint { SM_CXMENUSIZE = 54 }
enum : uint { SM_CYMENUSIZE = 55 }
enum : uint { SM_ARRANGE = 56 }
enum : uint { SM_CXMINIMIZED = 57 }
enum : uint { SM_CYMINIMIZED = 58 }
enum : uint { SM_CXMAXTRACK = 59 }
enum : uint { SM_CYMAXTRACK = 60 }
enum : uint { SM_CXMAXIMIZED = 61 }
enum : uint { SM_CYMAXIMIZED = 62 }
enum : uint { SM_NETWORK = 63 }
enum : uint { SM_CLEANBOOT = 67 }
enum : uint { SM_CXDRAG = 68 }
enum : uint { SM_CYDRAG = 69 }
// #endif /* WINVER >= 0x0400 */
enum : uint { SM_SHOWSOUNDS = 70 }
// #if(WINVER >= 0x0400)
enum : uint { SM_CXMENUCHECK = 71 }
enum : uint { SM_CYMENUCHECK = 72 }
enum : uint { SM_SLOWMACHINE = 73 }
enum : uint { SM_MIDEASTENABLED = 74 }
// #endif /* WINVER >= 0x0400 */

// #if (WINVER >= 0x0500) || (_WIN32_WINNT >= 0x0400)
enum : uint { SM_MOUSEWHEELPRESENT = 75 }
// #endif
// #if(WINVER >= 0x0500)
enum : uint { SM_XVIRTUALSCREEN = 76 }
enum : uint { SM_YVIRTUALSCREEN = 77 }
enum : uint { SM_CXVIRTUALSCREEN = 78 }
enum : uint { SM_CYVIRTUALSCREEN = 79 }
enum : uint { SM_CMONITORS = 80 }
enum : uint { SM_SAMEDISPLAYFORMAT = 81 }
// #endif /* WINVER >= 0x0500 */
// #if(_WIN32_WINNT >= 0x0500)
enum : uint { SM_IMMENABLED = 82 }
// #endif /* _WIN32_WINNT >= 0x0500 */
// #if(_WIN32_WINNT >= 0x0501)
enum : uint { SM_CXFOCUSBORDER = 83 }
enum : uint { SM_CYFOCUSBORDER = 84 }
// #endif /* _WIN32_WINNT >= 0x0501 */

// #if (WINVER < 0x0500) && (!defined(_WIN32_WINNT) || (_WIN32_WINNT < 0x0400))
// #...
// #else
enum : uint { SM_CMETRICS = 86 }
// #endif

// #if(WINVER >= 0x0500)
enum : uint { SM_REMOTESESSION = 0x1000 }

// #if(_WIN32_WINNT >= 0x0501)
enum : uint { SM_SHUTTINGDOWN = 0x2000 }
// #endif /* _WIN32_WINNT >= 0x0501 */

// #endif /* WINVER >= 0x0500 */

extern(Windows) export int GetSystemMetrics(
  int nIndex);

// #endif /* !NOSYSMETRICS */

// #ifndef NOMENUS

extern(Windows) export HMENU LoadMenuA(
  HINSTANCE hInstance,
  LPCSTR lpMenuName);
extern(Windows) export HMENU LoadMenuW(
  HINSTANCE hInstance,
  LPCWSTR lpMenuName);
// #ifdef UNICODE
alias LoadMenuW LoadMenu;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export HMENU LoadMenuIndirectA(
  MENUTEMPLATEA *lpMenuTemplate);
extern(Windows) export HMENU LoadMenuIndirectW(
  MENUTEMPLATEW *lpMenuTemplate);
// #ifdef UNICODE
alias LoadMenuIndirectW LoadMenuIndirect;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export HMENU GetMenu(
  HWND hWnd);

extern(Windows) export BOOL SetMenu(
  HWND hWnd,
  HMENU hMenu);

extern(Windows) export BOOL ChangeMenuA(
  HMENU hMenu,
  UINT cmd,
  LPCSTR lpszNewItem,
  UINT cmdInsert,
  UINT flags);
extern(Windows) export BOOL ChangeMenuW(
  HMENU hMenu,
  UINT cmd,
  LPCWSTR lpszNewItem,
  UINT cmdInsert,
  UINT flags);
// #ifdef UNICODE
alias ChangeMenuW ChangeMenu;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL HiliteMenuItem(
  HWND hWnd,
  HMENU hMenu,
  UINT uIDHiliteItem,
  UINT uHilite);

extern(Windows) export int GetMenuStringA(
  HMENU hMenu,
  UINT uIDItem,
  LPSTR lpString,
  int nMaxCount,
  UINT uFlag);
extern(Windows) export int GetMenuStringW(
  HMENU hMenu,
  UINT uIDItem,
  LPWSTR lpString,
  int nMaxCount,
  UINT uFlag);
// #ifdef UNICODE
alias GetMenuStringW GetMenuString;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export UINT GetMenuState(
  HMENU hMenu,
  UINT uId,
  UINT uFlags);

extern(Windows) export BOOL DrawMenuBar(
  HWND hWnd);

// #if(_WIN32_WINNT >= 0x0501)
enum : uint { PMB_ACTIVE = 0x00000001 }

// #endif /* _WIN32_WINNT >= 0x0501 */

extern(Windows) export HMENU GetSystemMenu(
  HWND hWnd,
  BOOL bRevert);

extern(Windows) export HMENU CreateMenu();

extern(Windows) export HMENU CreatePopupMenu();

extern(Windows) export BOOL DestroyMenu(
  HMENU hMenu);

extern(Windows) export DWORD CheckMenuItem(
  HMENU hMenu,
  UINT uIDCheckItem,
  UINT uCheck);

extern(Windows) export BOOL EnableMenuItem(
  HMENU hMenu,
  UINT uIDEnableItem,
  UINT uEnable);

extern(Windows) export HMENU GetSubMenu(
  HMENU hMenu,
  int nPos);

extern(Windows) export UINT GetMenuItemID(
  HMENU hMenu,
  int nPos);

extern(Windows) export int GetMenuItemCount(
  HMENU hMenu);

extern(Windows) export BOOL InsertMenuA(
  HMENU hMenu,
  UINT uPosition,
  UINT uFlags,
  UINT_PTR uIDNewItem,
  LPCSTR lpNewItem);
extern(Windows) export BOOL InsertMenuW(
  HMENU hMenu,
  UINT uPosition,
  UINT uFlags,
  UINT_PTR uIDNewItem,
  LPCWSTR lpNewItem);
// #ifdef UNICODE
alias InsertMenuW InsertMenu;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL AppendMenuA(
  HMENU hMenu,
  UINT uFlags,
  UINT_PTR uIDNewItem,
  LPCSTR lpNewItem);
extern(Windows) export BOOL AppendMenuW(
  HMENU hMenu,
  UINT uFlags,
  UINT_PTR uIDNewItem,
  LPCWSTR lpNewItem);
// #ifdef UNICODE
alias AppendMenuW AppendMenu;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL ModifyMenuA(
  HMENU hMnu,
  UINT uPosition,
  UINT uFlags,
  UINT_PTR uIDNewItem,
  LPCSTR lpNewItem);
extern(Windows) export BOOL ModifyMenuW(
  HMENU hMnu,
  UINT uPosition,
  UINT uFlags,
  UINT_PTR uIDNewItem,
  LPCWSTR lpNewItem);
// #ifdef UNICODE
alias ModifyMenuW ModifyMenu;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL RemoveMenu(
  HMENU hMenu,
  UINT uPosition,
  UINT uFlags);

extern(Windows) export BOOL DeleteMenu(
  HMENU hMenu,
  UINT uPosition,
  UINT uFlags);

extern(Windows) export BOOL SetMenuItemBitmaps(
  HMENU hMenu,
  UINT uPosition,
  UINT uFlags,
  HBITMAP hBitmapUnchecked,
  HBITMAP hBitmapChecked);

extern(Windows) export LONG GetMenuCheckMarkDimensions();

extern(Windows) export BOOL TrackPopupMenu(
  HMENU hMenu,
  UINT uFlags,
  int x,
  int y,
  int nReserved,
  HWND hWnd,
  RECT *prcRect);

// #if(WINVER >= 0x0400)

enum : uint { MNC_IGNORE = 0 }
enum : uint { MNC_CLOSE = 1 }
enum : uint { MNC_EXECUTE = 2 }
enum : uint { MNC_SELECT = 3 }

struct tagTPMPARAMS {
  UINT cbSize;
  RECT rcExclude;
}
alias tagTPMPARAMS TPMPARAMS;

alias TPMPARAMS* LPTPMPARAMS;

extern(Windows) export BOOL TrackPopupMenuEx(
  HMENU,
  UINT,
  int,
  int,
  HWND,
  LPTPMPARAMS);
// #endif /* WINVER >= 0x0400 */

// #if(WINVER >= 0x0500)

enum : uint { MNS_NOCHECK = 0x80000000 }
enum : uint { MNS_MODELESS = 0x40000000 }
enum : uint { MNS_DRAGDROP = 0x20000000 }
enum : uint { MNS_AUTODISMISS = 0x10000000 }
enum : uint { MNS_NOTIFYBYPOS = 0x08000000 }
enum : uint { MNS_CHECKORBMP = 0x04000000 }

enum : uint { MIM_MAXHEIGHT = 0x00000001 }
enum : uint { MIM_BACKGROUND = 0x00000002 }
enum : uint { MIM_HELPID = 0x00000004 }
enum : uint { MIM_MENUDATA = 0x00000008 }
enum : uint { MIM_STYLE = 0x00000010 }
enum : uint { MIM_APPLYTOSUBMENUS = 0x80000000 }

struct tagMENUINFO {
  DWORD cbSize;
  DWORD fMask;
  DWORD dwStyle;
  UINT cyMax;
  HBRUSH hbrBack;
  DWORD dwContextHelpID;
  ULONG_PTR dwMenuData;
}
alias tagMENUINFO MENUINFO;
alias tagMENUINFO* LPMENUINFO;

alias MENUINFO* LPCMENUINFO;

extern(Windows) export BOOL GetMenuInfo(
  HMENU,
  LPMENUINFO);

extern(Windows) export BOOL SetMenuInfo(
  HMENU,
  LPCMENUINFO);

extern(Windows) export BOOL EndMenu();

enum : uint { MND_CONTINUE = 0 }
enum : uint { MND_ENDMENU = 1 }

struct tagMENUGETOBJECTINFO {
  DWORD dwFlags;
  UINT uPos;
  HMENU hmenu;
  PVOID riid;
  PVOID pvObj;
}
alias tagMENUGETOBJECTINFO MENUGETOBJECTINFO;
alias tagMENUGETOBJECTINFO* PMENUGETOBJECTINFO;

enum : uint { MNGOF_TOPGAP = 0x00000001 }
enum : uint { MNGOF_BOTTOMGAP = 0x00000002 }

enum : uint { MNGO_NOINTERFACE = 0x00000000 }
enum : uint { MNGO_NOERROR = 0x00000001 }
// #endif /* WINVER >= 0x0500 */

// #if(WINVER >= 0x0400)
enum : uint { MIIM_STATE = 0x00000001 }
enum : uint { MIIM_ID = 0x00000002 }
enum : uint { MIIM_SUBMENU = 0x00000004 }
enum : uint { MIIM_CHECKMARKS = 0x00000008 }
enum : uint { MIIM_TYPE = 0x00000010 }
enum : uint { MIIM_DATA = 0x00000020 }
// #endif /* WINVER >= 0x0400 */

// #if(WINVER >= 0x0500)
enum : uint { MIIM_STRING = 0x00000040 }
enum : uint { MIIM_BITMAP = 0x00000080 }
enum : uint { MIIM_FTYPE = 0x00000100 }

const HBITMAP HBMMENU_CALLBACK = cast(HBITMAP)-1;
const HBITMAP HBMMENU_SYSTEM = cast(HBITMAP)1;
const HBITMAP HBMMENU_MBAR_RESTORE = cast(HBITMAP)2;
const HBITMAP HBMMENU_MBAR_MINIMIZE = cast(HBITMAP)3;
const HBITMAP HBMMENU_MBAR_CLOSE = cast(HBITMAP)5;
const HBITMAP HBMMENU_MBAR_CLOSE_D = cast(HBITMAP)6;
const HBITMAP HBMMENU_MBAR_MINIMIZE_D = cast(HBITMAP)7;
const HBITMAP HBMMENU_POPUP_CLOSE = cast(HBITMAP)8;
const HBITMAP HBMMENU_POPUP_RESTORE = cast(HBITMAP)9;
const HBITMAP HBMMENU_POPUP_MAXIMIZE = cast(HBITMAP)10;
const HBITMAP HBMMENU_POPUP_MINIMIZE = cast(HBITMAP)11;
// #endif /* WINVER >= 0x0500 */

// #if(WINVER >= 0x0400)
struct tagMENUITEMINFOA {
  UINT cbSize;
  UINT fMask;
  UINT fType;
  UINT fState;
  UINT wID;
  HMENU hSubMenu;
  HBITMAP hbmpChecked;
  HBITMAP hbmpUnchecked;
  ULONG_PTR dwItemData;
  LPSTR dwTypeData;
  UINT cch;
// #if(WINVER >= 0x0500)
  HBITMAP hbmpItem;
// #endif /* WINVER >= 0x0500 */
}
alias tagMENUITEMINFOA MENUITEMINFOA;
alias tagMENUITEMINFOA* LPMENUITEMINFOA;

struct tagMENUITEMINFOW {
  UINT cbSize;
  UINT fMask;
  UINT fType;
  UINT fState;
  UINT wID;
  HMENU hSubMenu;
  HBITMAP hbmpChecked;
  HBITMAP hbmpUnchecked;
  ULONG_PTR dwItemData;
  LPWSTR dwTypeData;
  UINT cch;
// #if(WINVER >= 0x0500)
  HBITMAP hbmpItem;
// #endif /* WINVER >= 0x0500 */
}
alias tagMENUITEMINFOW MENUITEMINFOW;
alias tagMENUITEMINFOW* LPMENUITEMINFOW;

// #ifdef UNICODE
alias MENUITEMINFOW MENUITEMINFO;
alias LPMENUITEMINFOW LPMENUITEMINFO;
// #else
// ...
// #endif // UNICODE
alias MENUITEMINFOA* LPCMENUITEMINFOA;
alias MENUITEMINFOW* LPCMENUITEMINFOW;
// #ifdef UNICODE
alias LPCMENUITEMINFOW LPCMENUITEMINFO;
// #else
// ...
// #endif // UNICODE

extern(Windows) export BOOL InsertMenuItemA(
  HMENU,
  UINT,
  BOOL,
  LPCMENUITEMINFOA);
extern(Windows) export BOOL InsertMenuItemW(
  HMENU,
  UINT,
  BOOL,
  LPCMENUITEMINFOW);
// #ifdef UNICODE
alias InsertMenuItemW InsertMenuItem;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL GetMenuItemInfoA(
  HMENU,
  UINT,
  BOOL,
  LPMENUITEMINFOA);
extern(Windows) export BOOL GetMenuItemInfoW(
  HMENU,
  UINT,
  BOOL,
  LPMENUITEMINFOW);
// #ifdef UNICODE
alias GetMenuItemInfoW GetMenuItemInfo;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL SetMenuItemInfoA(
  HMENU,
  UINT,
  BOOL,
  LPCMENUITEMINFOA);
extern(Windows) export BOOL SetMenuItemInfoW(
  HMENU,
  UINT,
  BOOL,
  LPCMENUITEMINFOW);
// #ifdef UNICODE
alias SetMenuItemInfoW SetMenuItemInfo;
// #else
// #...
// #endif // !UNICODE

enum : uint { GMDI_USEDISABLED = 0x0001 }
enum : uint { GMDI_GOINTOPOPUPS = 0x0002 }

extern(Windows) export UINT GetMenuDefaultItem(HMENU hMenu, UINT fByPos, UINT gmdiFlags);
extern(Windows) export BOOL SetMenuDefaultItem(HMENU hMenu, UINT uItem, UINT fByPos);

extern(Windows) export BOOL GetMenuItemRect(HWND hWnd, HMENU hMenu, UINT uItem, LPRECT lprcItem);
extern(Windows) export int MenuItemFromPoint(HWND hWnd, HMENU hMenu, POINT ptScreen);
// #endif /* WINVER >= 0x0400 */

enum : uint { TPM_LEFTBUTTON = 0x0000 }
enum : uint { TPM_RIGHTBUTTON = 0x0002 }
enum : uint { TPM_LEFTALIGN = 0x0000 }
enum : uint { TPM_CENTERALIGN = 0x0004 }
enum : uint { TPM_RIGHTALIGN = 0x0008 }
// #if(WINVER >= 0x0400)
enum : uint { TPM_TOPALIGN = 0x0000 }
enum : uint { TPM_VCENTERALIGN = 0x0010 }
enum : uint { TPM_BOTTOMALIGN = 0x0020 }

enum : uint { TPM_HORIZONTAL = 0x0000 }
enum : uint { TPM_VERTICAL = 0x0040 }
enum : uint { TPM_NONOTIFY = 0x0080 }
enum : uint { TPM_RETURNCMD = 0x0100 }
// #endif /* WINVER >= 0x0400 */
// #if(WINVER >= 0x0500)
enum : uint { TPM_RECURSE = 0x0001 }
enum : uint { TPM_HORPOSANIMATION = 0x0400 }
enum : uint { TPM_HORNEGANIMATION = 0x0800 }
enum : uint { TPM_VERPOSANIMATION = 0x1000 }
enum : uint { TPM_VERNEGANIMATION = 0x2000 }
// #if(_WIN32_WINNT >= 0x0500)
enum : uint { TPM_NOANIMATION = 0x4000 }
// #endif /* _WIN32_WINNT >= 0x0500 */
// #if(_WIN32_WINNT >= 0x0501)
enum : uint { TPM_LAYOUTRTL = 0x8000 }
// #endif /* _WIN32_WINNT >= 0x0501 */
// #endif /* WINVER >= 0x0500 */

// #endif /* !NOMENUS */

// #if(WINVER >= 0x0400)

struct tagDROPSTRUCT {
  HWND hwndSource;
  HWND hwndSink;
  DWORD wFmt;
  ULONG_PTR dwData;
  POINT ptDrop;
  DWORD dwControlData;
}
alias tagDROPSTRUCT DROPSTRUCT;
alias tagDROPSTRUCT* PDROPSTRUCT;
alias tagDROPSTRUCT* LPDROPSTRUCT;

enum : uint { DOF_EXECUTABLE = 0x8001 }
enum : uint { DOF_DOCUMENT = 0x8002 }
enum : uint { DOF_DIRECTORY = 0x8003 }
enum : uint { DOF_MULTIPLE = 0x8004 }
enum : uint { DOF_PROGMAN = 0x0001 }
enum : uint { DOF_SHELLDATA = 0x0002 }

enum : uint { DO_DROPFILE = 0x454C4946 }
enum : uint { DO_PRINTFILE = 0x544E5250 }

extern(Windows) export DWORD DragObject(
  HWND,
  HWND,
  UINT,
  ULONG_PTR,
  HCURSOR);

extern(Windows) export BOOL DragDetect(
  HWND,
  POINT);
// #endif /* WINVER >= 0x0400 */

extern(Windows) export BOOL DrawIcon(
  HDC hDC,
  int X,
  int Y,
  HICON hIcon);

// #ifndef NODRAWTEXT

enum : uint { DT_TOP = 0x00000000 }
enum : uint { DT_LEFT = 0x00000000 }
enum : uint { DT_CENTER = 0x00000001 }
enum : uint { DT_RIGHT = 0x00000002 }
enum : uint { DT_VCENTER = 0x00000004 }
enum : uint { DT_BOTTOM = 0x00000008 }
enum : uint { DT_WORDBREAK = 0x00000010 }
enum : uint { DT_SINGLELINE = 0x00000020 }
enum : uint { DT_EXPANDTABS = 0x00000040 }
enum : uint { DT_TABSTOP = 0x00000080 }
enum : uint { DT_NOCLIP = 0x00000100 }
enum : uint { DT_EXTERNALLEADING = 0x00000200 }
enum : uint { DT_CALCRECT = 0x00000400 }
enum : uint { DT_NOPREFIX = 0x00000800 }
enum : uint { DT_INTERNAL = 0x00001000 }

// #if(WINVER >= 0x0400)
enum : uint { DT_EDITCONTROL = 0x00002000 }
enum : uint { DT_PATH_ELLIPSIS = 0x00004000 }
enum : uint { DT_END_ELLIPSIS = 0x00008000 }
enum : uint { DT_MODIFYSTRING = 0x00010000 }
enum : uint { DT_RTLREADING = 0x00020000 }
enum : uint { DT_WORD_ELLIPSIS = 0x00040000 }
// #if(WINVER >= 0x0500)
enum : uint { DT_NOFULLWIDTHCHARBREAK = 0x00080000 }
// #if(_WIN32_WINNT >= 0x0500)
enum : uint { DT_HIDEPREFIX = 0x00100000 }
enum : uint { DT_PREFIXONLY = 0x00200000 }
// #endif /* _WIN32_WINNT >= 0x0500 */
// #endif /* WINVER >= 0x0500 */

struct tagDRAWTEXTPARAMS {
  UINT cbSize;
  int iTabLength;
  int iLeftMargin;
  int iRightMargin;
  UINT uiLengthDrawn;
}
alias tagDRAWTEXTPARAMS DRAWTEXTPARAMS;
alias tagDRAWTEXTPARAMS* LPDRAWTEXTPARAMS;

// #endif /* WINVER >= 0x0400 */

extern(Windows) export int DrawTextA(
  HDC hDC,
  LPCSTR lpString,
  int nCount,
  LPRECT lpRect,
  UINT uFormat);
extern(Windows) export int DrawTextW(
  HDC hDC,
  LPCWSTR lpString,
  int nCount,
  LPRECT lpRect,
  UINT uFormat);
// #ifdef UNICODE
alias DrawTextW DrawText;
// #else
// #...
// #endif // !UNICODE

// #if(WINVER >= 0x0400)
extern(Windows) export int DrawTextExA(
  HDC,
  LPSTR,
  int,
  LPRECT,
  UINT,
  LPDRAWTEXTPARAMS);
extern(Windows) export int DrawTextExW(
  HDC,
  LPWSTR,
  int,
  LPRECT,
  UINT,
  LPDRAWTEXTPARAMS);
// #ifdef UNICODE
alias DrawTextExW DrawTextEx;
// #else
// #...
// #endif // !UNICODE
// #endif /* WINVER >= 0x0400 */

// #endif /* !NODRAWTEXT */

extern(Windows) export BOOL GrayStringA(
  HDC hDC,
  HBRUSH hBrush,
  GRAYSTRINGPROC lpOutputFunc,
  LPARAM lpData,
  int nCount,
  int X,
  int Y,
  int nWidth,
  int nHeight);
extern(Windows) export BOOL GrayStringW(
  HDC hDC,
  HBRUSH hBrush,
  GRAYSTRINGPROC lpOutputFunc,
  LPARAM lpData,
  int nCount,
  int X,
  int Y,
  int nWidth,
  int nHeight);
// #ifdef UNICODE
alias GrayStringW GrayString;
// #else
// #...
// #endif // !UNICODE

// #if(WINVER >= 0x0400)

enum : uint { DST_COMPLEX = 0x0000 }
enum : uint { DST_TEXT = 0x0001 }
enum : uint { DST_PREFIXTEXT = 0x0002 }
enum : uint { DST_ICON = 0x0003 }
enum : uint { DST_BITMAP = 0x0004 }

enum : uint { DSS_NORMAL = 0x0000 }
enum : uint { DSS_UNION = 0x0010 }
enum : uint { DSS_DISABLED = 0x0020 }
enum : uint { DSS_MONO = 0x0080 }
// #if(_WIN32_WINNT >= 0x0500)
enum : uint { DSS_HIDEPREFIX = 0x0200 }
enum : uint { DSS_PREFIXONLY = 0x0400 }
// #endif /* _WIN32_WINNT >= 0x0500 */
enum : uint { DSS_RIGHT = 0x8000 }

extern(Windows) export BOOL DrawStateA(
  HDC,
  HBRUSH,
  DRAWSTATEPROC,
  LPARAM,
  WPARAM,
  int,
  int,
  int,
  int,
  UINT);
extern(Windows) export BOOL DrawStateW(
  HDC,
  HBRUSH,
  DRAWSTATEPROC,
  LPARAM,
  WPARAM,
  int,
  int,
  int,
  int,
  UINT);
// #ifdef UNICODE
alias DrawStateW DrawState;
// #else
// #...
// #endif // !UNICODE
// #endif /* WINVER >= 0x0400 */

extern(Windows) export LONG TabbedTextOutA(
  HDC hDC,
  int X,
  int Y,
  LPCSTR lpString,
  int nCount,
  int nTabPositions,
  INT *lpnTabStopPositions,
  int nTabOrigin);
extern(Windows) export LONG TabbedTextOutW(
  HDC hDC,
  int X,
  int Y,
  LPCWSTR lpString,
  int nCount,
  int nTabPositions,
  INT *lpnTabStopPositions,
  int nTabOrigin);
// #ifdef UNICODE
alias TabbedTextOutW TabbedTextOut;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export DWORD GetTabbedTextExtentA(
  HDC hDC,
  LPCSTR lpString,
  int nCount,
  int nTabPositions,
  INT *lpnTabStopPositions);
extern(Windows) export DWORD GetTabbedTextExtentW(
  HDC hDC,
  LPCWSTR lpString,
  int nCount,
  int nTabPositions,
  INT *lpnTabStopPositions);
// #ifdef UNICODE
alias GetTabbedTextExtentW GetTabbedTextExtent;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL UpdateWindow(
  HWND hWnd);

extern(Windows) export HWND SetActiveWindow(
  HWND hWnd);

extern(Windows) export HWND GetForegroundWindow();

// #if(WINVER >= 0x0400)
extern(Windows) export BOOL PaintDesktop(
  HDC hdc);

// #endif /* WINVER >= 0x0400 */

extern(Windows) export BOOL SetForegroundWindow(
  HWND hWnd);

// #if(_WIN32_WINNT >= 0x0500)
extern(Windows) export BOOL AllowSetForegroundWindow(
  DWORD dwProcessId);

enum : DWORD { ASFW_ANY = cast(DWORD)-1 }

extern(Windows) export BOOL LockSetForegroundWindow(
  UINT uLockCode);

enum : uint { LSFW_LOCK = 1 }
enum : uint { LSFW_UNLOCK = 2 }

// #endif /* _WIN32_WINNT >= 0x0500 */

extern(Windows) export HWND WindowFromDC(
  HDC hDC);

extern(Windows) export HDC GetDC(
  HWND hWnd);

extern(Windows) export HDC GetDCEx(
  HWND hWnd,
  HRGN hrgnClip,
  DWORD flags);

enum : uint { DCX_WINDOW = 0x00000001 }
enum : uint { DCX_CACHE = 0x00000002 }
enum : uint { DCX_NORESETATTRS = 0x00000004 }
enum : uint { DCX_CLIPCHILDREN = 0x00000008 }
enum : uint { DCX_CLIPSIBLINGS = 0x00000010 }
enum : uint { DCX_PARENTCLIP = 0x00000020 }
enum : uint { DCX_EXCLUDERGN = 0x00000040 }
enum : uint { DCX_INTERSECTRGN = 0x00000080 }
enum : uint { DCX_EXCLUDEUPDATE = 0x00000100 }
enum : uint { DCX_INTERSECTUPDATE = 0x00000200 }
enum : uint { DCX_LOCKWINDOWUPDATE = 0x00000400 }

enum : uint { DCX_VALIDATE = 0x00200000 }

extern(Windows) export HDC GetWindowDC(
  HWND hWnd);

extern(Windows) export int ReleaseDC(
  HWND hWnd,
  HDC hDC);

extern(Windows) export HDC BeginPaint(
  HWND hWnd,
  LPPAINTSTRUCT lpPaint);

extern(Windows) export BOOL EndPaint(
  HWND hWnd,
  PAINTSTRUCT *lpPaint);

extern(Windows) export BOOL GetUpdateRect(
  HWND hWnd,
  LPRECT lpRect,
  BOOL bErase);

extern(Windows) export int GetUpdateRgn(
  HWND hWnd,
  HRGN hRgn,
  BOOL bErase);

extern(Windows) export int SetWindowRgn(
  HWND hWnd,
  HRGN hRgn,
  BOOL bRedraw);

extern(Windows) export int GetWindowRgn(
  HWND hWnd,
  HRGN hRgn);

// #if(_WIN32_WINNT >= 0x0501)

extern(Windows) export int GetWindowRgnBox(
  HWND hWnd,
  LPRECT lprc);

// #endif /* _WIN32_WINNT >= 0x0501 */

extern(Windows) export int ExcludeUpdateRgn(
  HDC hDC,
  HWND hWnd);

extern(Windows) export BOOL InvalidateRect(
  HWND hWnd,
  RECT *lpRect,
  BOOL bErase);

extern(Windows) export BOOL ValidateRect(
  HWND hWnd,
  RECT *lpRect);

extern(Windows) export BOOL InvalidateRgn(
  HWND hWnd,
  HRGN hRgn,
  BOOL bErase);

extern(Windows) export BOOL ValidateRgn(
  HWND hWnd,
  HRGN hRgn);

extern(Windows) export BOOL RedrawWindow(
  HWND hWnd,
  RECT *lprcUpdate,
  HRGN hrgnUpdate,
  UINT flags);

enum : uint { RDW_INVALIDATE = 0x0001 }
enum : uint { RDW_INTERNALPAINT = 0x0002 }
enum : uint { RDW_ERASE = 0x0004 }

enum : uint { RDW_VALIDATE = 0x0008 }
enum : uint { RDW_NOINTERNALPAINT = 0x0010 }
enum : uint { RDW_NOERASE = 0x0020 }

enum : uint { RDW_NOCHILDREN = 0x0040 }
enum : uint { RDW_ALLCHILDREN = 0x0080 }

enum : uint { RDW_UPDATENOW = 0x0100 }
enum : uint { RDW_ERASENOW = 0x0200 }

enum : uint { RDW_FRAME = 0x0400 }
enum : uint { RDW_NOFRAME = 0x0800 }

extern(Windows) export BOOL LockWindowUpdate(
  HWND hWndLock);

extern(Windows) export BOOL ScrollWindow(
  HWND hWnd,
  int XAmount,
  int YAmount,
  RECT *lpRect,
  RECT *lpClipRect);

extern(Windows) export BOOL ScrollDC(
  HDC hDC,
  int dx,
  int dy,
  RECT *lprcScroll,
  RECT *lprcClip,
  HRGN hrgnUpdate,
  LPRECT lprcUpdate);

extern(Windows) export int ScrollWindowEx(
  HWND hWnd,
  int dx,
  int dy,
  RECT *prcScroll,
  RECT *prcClip,
  HRGN hrgnUpdate,
  LPRECT prcUpdate,
  UINT flags);

enum : uint { SW_SCROLLCHILDREN = 0x0001 }
enum : uint { SW_INVALIDATE = 0x0002 }
enum : uint { SW_ERASE = 0x0004 }
// #if(WINVER >= 0x0500)
enum : uint { SW_SMOOTHSCROLL = 0x0010 }
// #endif /* WINVER >= 0x0500 */

// #ifndef NOSCROLL

extern(Windows) export int SetScrollPos(
  HWND hWnd,
  int nBar,
  int nPos,
  BOOL bRedraw);

extern(Windows) export int GetScrollPos(
  HWND hWnd,
  int nBar);

extern(Windows) export BOOL SetScrollRange(
  HWND hWnd,
  int nBar,
  int nMinPos,
  int nMaxPos,
  BOOL bRedraw);

extern(Windows) export BOOL GetScrollRange(
  HWND hWnd,
  int nBar,
  LPINT lpMinPos,
  LPINT lpMaxPos);

extern(Windows) export BOOL ShowScrollBar(
  HWND hWnd,
  int wBar,
  BOOL bShow);

extern(Windows) export BOOL EnableScrollBar(
  HWND hWnd,
  UINT wSBflags,
  UINT wArrows);

enum : uint { ESB_ENABLE_BOTH = 0x0000 }
enum : uint { ESB_DISABLE_BOTH = 0x0003 }

enum : uint { ESB_DISABLE_LEFT = 0x0001 }
enum : uint { ESB_DISABLE_RIGHT = 0x0002 }

enum : uint { ESB_DISABLE_UP = 0x0001 }
enum : uint { ESB_DISABLE_DOWN = 0x0002 }

alias ESB_DISABLE_LEFT ESB_DISABLE_LTUP;
alias ESB_DISABLE_RIGHT ESB_DISABLE_RTDN;

// #endif  /* !NOSCROLL */

extern(Windows) export BOOL SetPropA(
  HWND hWnd,
  LPCSTR lpString,
  HANDLE hData);
extern(Windows) export BOOL SetPropW(
  HWND hWnd,
  LPCWSTR lpString,
  HANDLE hData);
// #ifdef UNICODE
alias SetPropW SetProp;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export HANDLE GetPropA(
  HWND hWnd,
  LPCSTR lpString);
extern(Windows) export HANDLE GetPropW(
  HWND hWnd,
  LPCWSTR lpString);
// #ifdef UNICODE
alias GetPropW GetProp;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export HANDLE RemovePropA(
  HWND hWnd,
  LPCSTR lpString);
extern(Windows) export HANDLE RemovePropW(
  HWND hWnd,
  LPCWSTR lpString);
// #ifdef UNICODE
alias RemovePropW RemoveProp;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export int EnumPropsExA(
  HWND hWnd,
  PROPENUMPROCEXA lpEnumFunc,
  LPARAM lParam);
extern(Windows) export int EnumPropsExW(
  HWND hWnd,
  PROPENUMPROCEXW lpEnumFunc,
  LPARAM lParam);
// #ifdef UNICODE
alias EnumPropsExW EnumPropsEx;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export int EnumPropsA(
  HWND hWnd,
  PROPENUMPROCA lpEnumFunc);
extern(Windows) export int EnumPropsW(
  HWND hWnd,
  PROPENUMPROCW lpEnumFunc);
// #ifdef UNICODE
alias EnumPropsW EnumProps;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL SetWindowTextA(
  HWND hWnd,
  LPCSTR lpString);
extern(Windows) export BOOL SetWindowTextW(
  HWND hWnd,
  LPCWSTR lpString);
// #ifdef UNICODE
alias SetWindowTextW SetWindowText;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export int GetWindowTextA(
  HWND hWnd,
  LPSTR lpString,
  int nMaxCount);
extern(Windows) export int GetWindowTextW(
  HWND hWnd,
  LPWSTR lpString,
  int nMaxCount);
// #ifdef UNICODE
alias GetWindowTextW GetWindowText;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export int GetWindowTextLengthA(
  HWND hWnd);
extern(Windows) export int GetWindowTextLengthW(
  HWND hWnd);
// #ifdef UNICODE
alias GetWindowTextLengthW GetWindowTextLength;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL GetClientRect(
  HWND hWnd,
  LPRECT lpRect);

extern(Windows) export BOOL GetWindowRect(
  HWND hWnd,
  LPRECT lpRect);

extern(Windows) export BOOL AdjustWindowRect(
  LPRECT lpRect,
  DWORD dwStyle,
  BOOL bMenu);

extern(Windows) export BOOL AdjustWindowRectEx(
  LPRECT lpRect,
  DWORD dwStyle,
  BOOL bMenu,
  DWORD dwExStyle);

// #if(WINVER >= 0x0400)
enum : uint { HELPINFO_WINDOW = 0x0001 }
enum : uint { HELPINFO_MENUITEM = 0x0002 }
struct tagHELPINFO {
  UINT cbSize;
  int iContextType;
  int iCtrlId;
  HANDLE hItemHandle;
  DWORD_PTR dwContextId;
  POINT MousePos;
}
alias tagHELPINFO HELPINFO;
alias tagHELPINFO* LPHELPINFO;

extern(Windows) export BOOL SetWindowContextHelpId(
  HWND,
  DWORD);

extern(Windows) export DWORD GetWindowContextHelpId(
  HWND);

extern(Windows) export BOOL SetMenuContextHelpId(
  HMENU,
  DWORD);

extern(Windows) export DWORD GetMenuContextHelpId(
  HMENU);

// #endif /* WINVER >= 0x0400 */

// #ifndef NOMB

enum : uint { MB_OK = 0x00000000 }
enum : uint { MB_OKCANCEL = 0x00000001 }
enum : uint { MB_ABORTRETRYIGNORE = 0x00000002 }
enum : uint { MB_YESNOCANCEL = 0x00000003 }
enum : uint { MB_YESNO = 0x00000004 }
enum : uint { MB_RETRYCANCEL = 0x00000005 }
// #if(WINVER >= 0x0500)
enum : uint { MB_CANCELTRYCONTINUE = 0x00000006 }
// #endif /* WINVER >= 0x0500 */

enum : uint { MB_ICONHAND = 0x00000010 }
enum : uint { MB_ICONQUESTION = 0x00000020 }
enum : uint { MB_ICONEXCLAMATION = 0x00000030 }
enum : uint { MB_ICONASTERISK = 0x00000040 }

// #if(WINVER >= 0x0400)
enum : uint { MB_USERICON = 0x00000080 }
alias MB_ICONEXCLAMATION MB_ICONWARNING;
alias MB_ICONHAND MB_ICONERROR;
// #endif /* WINVER >= 0x0400 */

alias MB_ICONASTERISK MB_ICONINFORMATION;
alias MB_ICONHAND MB_ICONSTOP;

enum : uint { MB_DEFBUTTON1 = 0x00000000 }
enum : uint { MB_DEFBUTTON2 = 0x00000100 }
enum : uint { MB_DEFBUTTON3 = 0x00000200 }
// #if(WINVER >= 0x0400)
enum : uint { MB_DEFBUTTON4 = 0x00000300 }
// #endif /* WINVER >= 0x0400 */

enum : uint { MB_APPLMODAL = 0x00000000 }
enum : uint { MB_SYSTEMMODAL = 0x00001000 }
enum : uint { MB_TASKMODAL = 0x00002000 }
// #if(WINVER >= 0x0400)
enum : uint { MB_HELP = 0x00004000 }
// #endif /* WINVER >= 0x0400 */

enum : uint { MB_NOFOCUS = 0x00008000 }
enum : uint { MB_SETFOREGROUND = 0x00010000 }
enum : uint { MB_DEFAULT_DESKTOP_ONLY = 0x00020000 }

// #if(WINVER >= 0x0400)
enum : uint { MB_TOPMOST = 0x00040000 }
enum : uint { MB_RIGHT = 0x00080000 }
enum : uint { MB_RTLREADING = 0x00100000 }

// #endif /* WINVER >= 0x0400 */

// #ifdef _WIN32_WINNT
// #if (_WIN32_WINNT >= 0x0400)
enum : uint { MB_SERVICE_NOTIFICATION = 0x00200000 }
// #else
// #...
// #endif
enum : uint { MB_SERVICE_NOTIFICATION_NT3X = 0x00040000 }
// #endif

enum : uint { MB_TYPEMASK = 0x0000000F }
enum : uint { MB_ICONMASK = 0x000000F0 }
enum : uint { MB_DEFMASK = 0x00000F00 }
enum : uint { MB_MODEMASK = 0x00003000 }
enum : uint { MB_MISCMASK = 0x0000C000 }

extern(Windows) export int MessageBoxA(
  HWND hWnd,
  LPCSTR lpText,
  LPCSTR lpCaption,
  UINT uType);
extern(Windows) export int MessageBoxW(
  HWND hWnd,
  LPCWSTR lpText,
  LPCWSTR lpCaption,
  UINT uType);
// #ifdef UNICODE
alias MessageBoxW MessageBox;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export int MessageBoxExA(
  HWND hWnd,
  LPCSTR lpText,
  LPCSTR lpCaption,
  UINT uType,
  WORD wLanguageId);
extern(Windows) export int MessageBoxExW(
  HWND hWnd,
  LPCWSTR lpText,
  LPCWSTR lpCaption,
  UINT uType,
  WORD wLanguageId);
// #ifdef UNICODE
alias MessageBoxExW MessageBoxEx;
// #else
// #...
// #endif // !UNICODE

// #if(WINVER >= 0x0400)

extern(Windows) alias void function(LPHELPINFO lpHelpInfo) MSGBOXCALLBACK;

struct tagMSGBOXPARAMSA {
  UINT cbSize;
  HWND hwndOwner;
  HINSTANCE hInstance;
  LPCSTR lpszText;
  LPCSTR lpszCaption;
  DWORD dwStyle;
  LPCSTR lpszIcon;
  DWORD_PTR dwContextHelpId;
  MSGBOXCALLBACK lpfnMsgBoxCallback;
  DWORD dwLanguageId;
}
alias tagMSGBOXPARAMSA MSGBOXPARAMSA;
alias tagMSGBOXPARAMSA* PMSGBOXPARAMSA;
alias tagMSGBOXPARAMSA* LPMSGBOXPARAMSA;

struct tagMSGBOXPARAMSW {
  UINT cbSize;
  HWND hwndOwner;
  HINSTANCE hInstance;
  LPCWSTR lpszText;
  LPCWSTR lpszCaption;
  DWORD dwStyle;
  LPCWSTR lpszIcon;
  DWORD_PTR dwContextHelpId;
  MSGBOXCALLBACK lpfnMsgBoxCallback;
  DWORD dwLanguageId;
}
alias tagMSGBOXPARAMSW MSGBOXPARAMSW;
alias tagMSGBOXPARAMSW* PMSGBOXPARAMSW;
alias tagMSGBOXPARAMSW* LPMSGBOXPARAMSW;

// #ifdef UNICODE
alias MSGBOXPARAMSW MSGBOXPARAMS;
alias PMSGBOXPARAMSW PMSGBOXPARAMS;
alias LPMSGBOXPARAMSW LPMSGBOXPARAMS;
// #else
// ...
// #endif // UNICODE

extern(Windows) export int MessageBoxIndirectA(
  MSGBOXPARAMSA *);
extern(Windows) export int MessageBoxIndirectW(
  MSGBOXPARAMSW *);
// #ifdef UNICODE
alias MessageBoxIndirectW MessageBoxIndirect;
// #else
// #...
// #endif // !UNICODE
// #endif /* WINVER >= 0x0400 */

extern(Windows) export BOOL MessageBeep(
  UINT uType);

// #endif /* !NOMB */

extern(Windows) export int ShowCursor(
  BOOL bShow);

extern(Windows) export BOOL SetCursorPos(
  int X,
  int Y);

extern(Windows) export HCURSOR SetCursor(
  HCURSOR hCursor);

extern(Windows) export BOOL GetCursorPos(
  LPPOINT lpPoint);

extern(Windows) export BOOL ClipCursor(
  RECT *lpRect);

extern(Windows) export BOOL GetClipCursor(
  LPRECT lpRect);

extern(Windows) export HCURSOR GetCursor();

extern(Windows) export BOOL CreateCaret(
  HWND hWnd,
  HBITMAP hBitmap,
  int nWidth,
  int nHeight);

extern(Windows) export UINT GetCaretBlinkTime();

extern(Windows) export BOOL SetCaretBlinkTime(
  UINT uMSeconds);

extern(Windows) export BOOL DestroyCaret();

extern(Windows) export BOOL HideCaret(
  HWND hWnd);

extern(Windows) export BOOL ShowCaret(
  HWND hWnd);

extern(Windows) export BOOL SetCaretPos(
  int X,
  int Y);

extern(Windows) export BOOL GetCaretPos(
  LPPOINT lpPoint);

extern(Windows) export BOOL ClientToScreen(
  HWND hWnd,
  LPPOINT lpPoint);

extern(Windows) export BOOL ScreenToClient(
  HWND hWnd,
  LPPOINT lpPoint);

extern(Windows) export int MapWindowPoints(
  HWND hWndFrom,
  HWND hWndTo,
  LPPOINT lpPoints,
  UINT cPoints);

extern(Windows) export HWND WindowFromPoint(
  POINT Point);

extern(Windows) export HWND ChildWindowFromPoint(
  HWND hWndParent,
  POINT Point);

// #if(WINVER >= 0x0400)
enum : uint { CWP_ALL = 0x0000 }
enum : uint { CWP_SKIPINVISIBLE = 0x0001 }
enum : uint { CWP_SKIPDISABLED = 0x0002 }
enum : uint { CWP_SKIPTRANSPARENT = 0x0004 }

extern(Windows) export HWND ChildWindowFromPointEx(HWND, POINT, UINT);
// #endif /* WINVER >= 0x0400 */

// #ifndef NOCOLOR

enum : uint { CTLCOLOR_MSGBOX = 0 }
enum : uint { CTLCOLOR_EDIT = 1 }
enum : uint { CTLCOLOR_LISTBOX = 2 }
enum : uint { CTLCOLOR_BTN = 3 }
enum : uint { CTLCOLOR_DLG = 4 }
enum : uint { CTLCOLOR_SCROLLBAR = 5 }
enum : uint { CTLCOLOR_STATIC = 6 }
enum : uint { CTLCOLOR_MAX = 7 }

enum : uint { COLOR_SCROLLBAR = 0 }
enum : uint { COLOR_BACKGROUND = 1 }
enum : uint { COLOR_ACTIVECAPTION = 2 }
enum : uint { COLOR_INACTIVECAPTION = 3 }
enum : uint { COLOR_MENU = 4 }
enum : uint { COLOR_WINDOW = 5 }
enum : uint { COLOR_WINDOWFRAME = 6 }
enum : uint { COLOR_MENUTEXT = 7 }
enum : uint { COLOR_WINDOWTEXT = 8 }
enum : uint { COLOR_CAPTIONTEXT = 9 }
enum : uint { COLOR_ACTIVEBORDER = 10 }
enum : uint { COLOR_INACTIVEBORDER = 11 }
enum : uint { COLOR_APPWORKSPACE = 12 }
enum : uint { COLOR_HIGHLIGHT = 13 }
enum : uint { COLOR_HIGHLIGHTTEXT = 14 }
enum : uint { COLOR_BTNFACE = 15 }
enum : uint { COLOR_BTNSHADOW = 16 }
enum : uint { COLOR_GRAYTEXT = 17 }
enum : uint { COLOR_BTNTEXT = 18 }
enum : uint { COLOR_INACTIVECAPTIONTEXT = 19 }
enum : uint { COLOR_BTNHIGHLIGHT = 20 }

// #if(WINVER >= 0x0400)
enum : uint { COLOR_3DDKSHADOW = 21 }
enum : uint { COLOR_3DLIGHT = 22 }
enum : uint { COLOR_INFOTEXT = 23 }
enum : uint { COLOR_INFOBK = 24 }
// #endif /* WINVER >= 0x0400 */

// #if(WINVER >= 0x0500)
enum : uint { COLOR_HOTLIGHT = 26 }
enum : uint { COLOR_GRADIENTACTIVECAPTION = 27 }
enum : uint { COLOR_GRADIENTINACTIVECAPTION = 28 }
// #if(WINVER >= 0x0501)
enum : uint { COLOR_MENUHILIGHT = 29 }
enum : uint { COLOR_MENUBAR = 30 }
// #endif /* WINVER >= 0x0501 */
// #endif /* WINVER >= 0x0500 */

// #if(WINVER >= 0x0400)
alias COLOR_BACKGROUND COLOR_DESKTOP;
alias COLOR_BTNFACE COLOR_3DFACE;
alias COLOR_BTNSHADOW COLOR_3DSHADOW;
alias COLOR_BTNHIGHLIGHT COLOR_3DHIGHLIGHT;
alias COLOR_BTNHIGHLIGHT COLOR_3DHILIGHT;
alias COLOR_BTNHIGHLIGHT COLOR_BTNHILIGHT;
// #endif /* WINVER >= 0x0400 */

extern(Windows) export DWORD GetSysColor(
  int nIndex);

// #if(WINVER >= 0x0400)
extern(Windows) export HBRUSH GetSysColorBrush(
  int nIndex);

// #endif /* WINVER >= 0x0400 */

extern(Windows) export BOOL SetSysColors(
  int cElements,
  INT * lpaElements,
  COLORREF * lpaRgbValues);

// #endif /* !NOCOLOR */

extern(Windows) export BOOL DrawFocusRect(
  HDC hDC,
  RECT * lprc);

extern(Windows) export int FillRect(
  HDC hDC,
  RECT *lprc,
  HBRUSH hbr);

extern(Windows) export int FrameRect(
  HDC hDC,
  RECT *lprc,
  HBRUSH hbr);

extern(Windows) export BOOL InvertRect(
  HDC hDC,
  RECT *lprc);

extern(Windows) export BOOL SetRect(
  LPRECT lprc,
  int xLeft,
  int yTop,
  int xRight,
  int yBottom);

extern(Windows) export BOOL SetRectEmpty(
  LPRECT lprc);

extern(Windows) export BOOL CopyRect(
  LPRECT lprcDst,
  RECT *lprcSrc);

extern(Windows) export BOOL InflateRect(
  LPRECT lprc,
  int dx,
  int dy);

extern(Windows) export BOOL IntersectRect(
  LPRECT lprcDst,
  RECT *lprcSrc1,
  RECT *lprcSrc2);

extern(Windows) export BOOL UnionRect(
  LPRECT lprcDst,
  RECT *lprcSrc1,
  RECT *lprcSrc2);

extern(Windows) export BOOL SubtractRect(
  LPRECT lprcDst,
  RECT *lprcSrc1,
  RECT *lprcSrc2);

extern(Windows) export BOOL OffsetRect(
  LPRECT lprc,
  int dx,
  int dy);

extern(Windows) export BOOL IsRectEmpty(
  RECT *lprc);

extern(Windows) export BOOL EqualRect(
  RECT *lprc1,
  RECT *lprc2);

extern(Windows) export BOOL PtInRect(
  RECT *lprc,
  POINT pt);

// #ifndef NOWINOFFSETS

extern(Windows) export WORD GetWindowWord(
  HWND hWnd,
  int nIndex);

extern(Windows) export WORD SetWindowWord(
  HWND hWnd,
  int nIndex,
  WORD wNewWord);

extern(Windows) export LONG GetWindowLongA(
  HWND hWnd,
  int nIndex);
extern(Windows) export LONG GetWindowLongW(
  HWND hWnd,
  int nIndex);
// #ifdef UNICODE
alias GetWindowLongW GetWindowLong;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export LONG SetWindowLongA(
  HWND hWnd,
  int nIndex,
  LONG dwNewLong);
extern(Windows) export LONG SetWindowLongW(
  HWND hWnd,
  int nIndex,
  LONG dwNewLong);
// #ifdef UNICODE
alias SetWindowLongW SetWindowLong;
// #else
// #...
// #endif // !UNICODE

// #ifdef _WIN64

// ...
// #ifdef UNICODE
// #...
// #else
// #...
// #endif // !UNICODE

// ...
// #ifdef UNICODE
// #...
// #else
// #...
// #endif // !UNICODE

// #else  /* _WIN64 */

alias GetWindowLongA GetWindowLongPtrA;
alias GetWindowLongW GetWindowLongPtrW;
// #ifdef UNICODE
alias GetWindowLongPtrW GetWindowLongPtr;
// #else
// #...
// #endif // !UNICODE

alias SetWindowLongA SetWindowLongPtrA;
alias SetWindowLongW SetWindowLongPtrW;
// #ifdef UNICODE
alias SetWindowLongPtrW SetWindowLongPtr;
// #else
// #...
// #endif // !UNICODE

// #endif /* _WIN64 */

extern(Windows) export WORD GetClassWord(
  HWND hWnd,
  int nIndex);

extern(Windows) export WORD SetClassWord(
  HWND hWnd,
  int nIndex,
  WORD wNewWord);

extern(Windows) export DWORD GetClassLongA(
  HWND hWnd,
  int nIndex);
extern(Windows) export DWORD GetClassLongW(
  HWND hWnd,
  int nIndex);
// #ifdef UNICODE
alias GetClassLongW GetClassLong;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export DWORD SetClassLongA(
  HWND hWnd,
  int nIndex,
  LONG dwNewLong);
extern(Windows) export DWORD SetClassLongW(
  HWND hWnd,
  int nIndex,
  LONG dwNewLong);
// #ifdef UNICODE
alias SetClassLongW SetClassLong;
// #else
// #...
// #endif // !UNICODE

// #ifdef _WIN64

// ...
// #ifdef UNICODE
// #...
// #else
// #...
// #endif // !UNICODE

// ...
// #ifdef UNICODE
// #...
// #else
// #...
// #endif // !UNICODE

// #else  /* _WIN64 */

alias GetClassLongA GetClassLongPtrA;
alias GetClassLongW GetClassLongPtrW;
// #ifdef UNICODE
alias GetClassLongPtrW GetClassLongPtr;
// #else
// #...
// #endif // !UNICODE

alias SetClassLongA SetClassLongPtrA;
alias SetClassLongW SetClassLongPtrW;
// #ifdef UNICODE
alias SetClassLongPtrW SetClassLongPtr;
// #else
// #...
// #endif // !UNICODE

// #endif /* _WIN64 */

// #endif /* !NOWINOFFSETS */

// #if(WINVER >= 0x0500)
extern(Windows) export BOOL GetProcessDefaultLayout(
  DWORD *pdwDefaultLayout);

extern(Windows) export BOOL SetProcessDefaultLayout(
  DWORD dwDefaultLayout);
// #endif /* WINVER >= 0x0500 */

extern(Windows) export HWND GetDesktopWindow();

extern(Windows) export HWND GetParent(
  HWND hWnd);

extern(Windows) export HWND SetParent(
  HWND hWndChild,
  HWND hWndNewParent);

extern(Windows) export BOOL EnumChildWindows(
  HWND hWndParent,
  WNDENUMPROC lpEnumFunc,
  LPARAM lParam);

extern(Windows) export HWND FindWindowA(
  LPCSTR lpClassName,
  LPCSTR lpWindowName);
extern(Windows) export HWND FindWindowW(
  LPCWSTR lpClassName,
  LPCWSTR lpWindowName);
// #ifdef UNICODE
alias FindWindowW FindWindow;
// #else
// #...
// #endif // !UNICODE

// #if(WINVER >= 0x0400)
extern(Windows) export HWND FindWindowExA(HWND, HWND, LPCSTR, LPCSTR);
extern(Windows) export HWND FindWindowExW(HWND, HWND, LPCWSTR, LPCWSTR);
// #ifdef UNICODE
alias FindWindowExW FindWindowEx;
// #else
// #...
// #endif // !UNICODE

// #endif /* WINVER >= 0x0400 */

extern(Windows) export BOOL EnumWindows(
  WNDENUMPROC lpEnumFunc,
  LPARAM lParam);

extern(Windows) export BOOL EnumThreadWindows(
  DWORD dwThreadId,
  WNDENUMPROC lpfn,
  LPARAM lParam);

// #define EnumTaskWindows(hTask, lpfn, lParam) EnumThreadWindows(HandleToUlong(hTask), lpfn, lParam)

extern(Windows) export int GetClassNameA(
  HWND hWnd,
  LPSTR lpClassName,
  int nMaxCount);
extern(Windows) export int GetClassNameW(
  HWND hWnd,
  LPWSTR lpClassName,
  int nMaxCount);
// #ifdef UNICODE
alias GetClassNameW GetClassName;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export HWND GetTopWindow(
  HWND hWnd);

// #define GetNextWindow(hWnd, wCmd) GetWindow(hWnd, wCmd)
// #define GetSysModalWindow() (NULL)
// #define SetSysModalWindow(hWnd) (NULL)

extern(Windows) export DWORD GetWindowThreadProcessId(
  HWND hWnd,
  LPDWORD lpdwProcessId);

// #if(_WIN32_WINNT >= 0x0501)
extern(Windows) export BOOL IsGUIThread(
  BOOL bConvert);

// #endif /* _WIN32_WINNT >= 0x0501 */

// #define GetWindowTask(hWnd) ((HANDLE)(DWORD_PTR)GetWindowThreadProcessId(hWnd, NULL))

extern(Windows) export HWND GetLastActivePopup(
  HWND hWnd);

enum : uint { GW_HWNDFIRST = 0 }
enum : uint { GW_HWNDLAST = 1 }
enum : uint { GW_HWNDNEXT = 2 }
enum : uint { GW_HWNDPREV = 3 }
enum : uint { GW_OWNER = 4 }
enum : uint { GW_CHILD = 5 }
// #if(WINVER <= 0x0400)
// #...
// #else
enum : uint { GW_ENABLEDPOPUP = 6 }
enum : uint { GW_MAX = 6 }
// #endif

extern(Windows) export HWND GetWindow(
  HWND hWnd,
  UINT uCmd);

// #ifndef NOWH

// #ifdef STRICT

extern(Windows) export HHOOK SetWindowsHookA(
  int nFilterType,
  HOOKPROC pfnFilterProc);
extern(Windows) export HHOOK SetWindowsHookW(
  int nFilterType,
  HOOKPROC pfnFilterProc);
// #ifdef UNICODE
alias SetWindowsHookW SetWindowsHook;
// #else
// #...
// #endif // !UNICODE

// #else /* !STRICT */

// ...
// #ifdef UNICODE
// #...
// #else
// #...
// #endif // !UNICODE

// #endif /* !STRICT */

extern(Windows) export BOOL UnhookWindowsHook(
  int nCode,
  HOOKPROC pfnFilterProc);

extern(Windows) export HHOOK SetWindowsHookExA(
  int idHook,
  HOOKPROC lpfn,
  HINSTANCE hmod,
  DWORD dwThreadId);
extern(Windows) export HHOOK SetWindowsHookExW(
  int idHook,
  HOOKPROC lpfn,
  HINSTANCE hmod,
  DWORD dwThreadId);
// #ifdef UNICODE
alias SetWindowsHookExW SetWindowsHookEx;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL UnhookWindowsHookEx(
  HHOOK hhk);

extern(Windows) export LRESULT CallNextHookEx(
  HHOOK hhk,
  int nCode,
  WPARAM wParam,
  LPARAM lParam);

// #ifdef STRICT
// #define DefHookProc(nCode, wParam, lParam, phhk) CallNextHookEx(*phhk, nCode, wParam, lParam)
// #else
// #...
// ...
// #endif /* STRICT */
// #endif /* !NOWH */

// #ifndef NOMENUS

enum : uint { MF_INSERT = 0x00000000 }
enum : uint { MF_CHANGE = 0x00000080 }
enum : uint { MF_APPEND = 0x00000100 }
enum : uint { MF_DELETE = 0x00000200 }
enum : uint { MF_REMOVE = 0x00001000 }

enum : uint { MF_BYCOMMAND = 0x00000000 }
enum : uint { MF_BYPOSITION = 0x00000400 }

enum : uint { MF_SEPARATOR = 0x00000800 }

enum : uint { MF_ENABLED = 0x00000000 }
enum : uint { MF_GRAYED = 0x00000001 }
enum : uint { MF_DISABLED = 0x00000002 }

enum : uint { MF_UNCHECKED = 0x00000000 }
enum : uint { MF_CHECKED = 0x00000008 }
enum : uint { MF_USECHECKBITMAPS = 0x00000200 }

enum : uint { MF_STRING = 0x00000000 }
enum : uint { MF_BITMAP = 0x00000004 }
enum : uint { MF_OWNERDRAW = 0x00000100 }

enum : uint { MF_POPUP = 0x00000010 }
enum : uint { MF_MENUBARBREAK = 0x00000020 }
enum : uint { MF_MENUBREAK = 0x00000040 }

enum : uint { MF_UNHILITE = 0x00000000 }
enum : uint { MF_HILITE = 0x00000080 }

// #if(WINVER >= 0x0400)
enum : uint { MF_DEFAULT = 0x00001000 }
// #endif /* WINVER >= 0x0400 */
enum : uint { MF_SYSMENU = 0x00002000 }
enum : uint { MF_HELP = 0x00004000 }
// #if(WINVER >= 0x0400)
enum : uint { MF_RIGHTJUSTIFY = 0x00004000 }
// #endif /* WINVER >= 0x0400 */

enum : uint { MF_MOUSESELECT = 0x00008000 }
// #if(WINVER >= 0x0400)
enum : uint { MF_END = 0x00000080 }
// #endif /* WINVER >= 0x0400 */

// #if(WINVER >= 0x0400)
alias MF_STRING MFT_STRING;
alias MF_BITMAP MFT_BITMAP;
alias MF_MENUBARBREAK MFT_MENUBARBREAK;
alias MF_MENUBREAK MFT_MENUBREAK;
alias MF_OWNERDRAW MFT_OWNERDRAW;
enum : uint { MFT_RADIOCHECK = 0x00000200 }
alias MF_SEPARATOR MFT_SEPARATOR;
enum : uint { MFT_RIGHTORDER = 0x00002000 }
alias MF_RIGHTJUSTIFY MFT_RIGHTJUSTIFY;

enum : uint { MFS_GRAYED = 0x00000003 }
alias MFS_GRAYED MFS_DISABLED;
alias MF_CHECKED MFS_CHECKED;
alias MF_HILITE MFS_HILITE;
alias MF_ENABLED MFS_ENABLED;
alias MF_UNCHECKED MFS_UNCHECKED;
alias MF_UNHILITE MFS_UNHILITE;
alias MF_DEFAULT MFS_DEFAULT;
// #endif /* WINVER >= 0x0400 */

// #if(WINVER >= 0x0400)

extern(Windows) export BOOL CheckMenuRadioItem(
  HMENU,
  UINT,
  UINT,
  UINT,
  UINT);
// #endif /* WINVER >= 0x0400 */

struct _4 {
  WORD versionNumber;
  WORD offset;
}
alias _4 MENUITEMTEMPLATEHEADER;
alias _4* PMENUITEMTEMPLATEHEADER;

struct _5 {
  WORD mtOption;
  WORD mtID;
  WCHAR mtString[1];
}
alias _5 MENUITEMTEMPLATE;
alias _5* PMENUITEMTEMPLATE;

// skip #define MF_END 0x00000080L

// #endif /* !NOMENUS */

// #ifndef NOSYSCOMMANDS

enum : uint { SC_SIZE = 0xF000 }
enum : uint { SC_MOVE = 0xF010 }
enum : uint { SC_MINIMIZE = 0xF020 }
enum : uint { SC_MAXIMIZE = 0xF030 }
enum : uint { SC_NEXTWINDOW = 0xF040 }
enum : uint { SC_PREVWINDOW = 0xF050 }
enum : uint { SC_CLOSE = 0xF060 }
enum : uint { SC_VSCROLL = 0xF070 }
enum : uint { SC_HSCROLL = 0xF080 }
enum : uint { SC_MOUSEMENU = 0xF090 }
enum : uint { SC_KEYMENU = 0xF100 }
enum : uint { SC_ARRANGE = 0xF110 }
enum : uint { SC_RESTORE = 0xF120 }
enum : uint { SC_TASKLIST = 0xF130 }
enum : uint { SC_SCREENSAVE = 0xF140 }
enum : uint { SC_HOTKEY = 0xF150 }
// #if(WINVER >= 0x0400)
enum : uint { SC_DEFAULT = 0xF160 }
enum : uint { SC_MONITORPOWER = 0xF170 }
enum : uint { SC_CONTEXTHELP = 0xF180 }
enum : uint { SC_SEPARATOR = 0xF00F }
// #endif /* WINVER >= 0x0400 */

alias SC_MINIMIZE SC_ICON;
alias SC_MAXIMIZE SC_ZOOM;

// #endif /* !NOSYSCOMMANDS */

extern(Windows) export HBITMAP LoadBitmapA(
  HINSTANCE hInstance,
  LPCSTR lpBitmapName);
extern(Windows) export HBITMAP LoadBitmapW(
  HINSTANCE hInstance,
  LPCWSTR lpBitmapName);
// #ifdef UNICODE
alias LoadBitmapW LoadBitmap;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export HCURSOR LoadCursorA(
  HINSTANCE hInstance,
  LPCSTR lpCursorName);
extern(Windows) export HCURSOR LoadCursorW(
  HINSTANCE hInstance,
  LPCWSTR lpCursorName);
// #ifdef UNICODE
alias LoadCursorW LoadCursor;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export HCURSOR LoadCursorFromFileA(
  LPCSTR lpFileName);
extern(Windows) export HCURSOR LoadCursorFromFileW(
  LPCWSTR lpFileName);
// #ifdef UNICODE
alias LoadCursorFromFileW LoadCursorFromFile;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export HCURSOR CreateCursor(
  HINSTANCE hInst,
  int xHotSpot,
  int yHotSpot,
  int nWidth,
  int nHeight,
  VOID *pvANDPlane,
  VOID *pvXORPlane);

extern(Windows) export BOOL DestroyCursor(
  HCURSOR hCursor);

// #ifndef _MAC
alias CopyIcon CopyCursor;
// #else
// ...
// #endif

const LPTSTR IDC_ARROW = cast(LPTSTR)(32512);
const LPTSTR IDC_IBEAM = cast(LPTSTR)(32513);
const LPTSTR IDC_WAIT = cast(LPTSTR)(32514);
const LPTSTR IDC_CROSS = cast(LPTSTR)(32515);
const LPTSTR IDC_UPARROW = cast(LPTSTR)(32516);
const LPTSTR IDC_SIZE = cast(LPTSTR)(32640);
const LPTSTR IDC_ICON = cast(LPTSTR)(32641);
const LPTSTR IDC_SIZENWSE = cast(LPTSTR)(32642);
const LPTSTR IDC_SIZENESW = cast(LPTSTR)(32643);
const LPTSTR IDC_SIZEWE = cast(LPTSTR)(32644);
const LPTSTR IDC_SIZENS = cast(LPTSTR)(32645);
const LPTSTR IDC_SIZEALL = cast(LPTSTR)(32646);
const LPTSTR IDC_NO = cast(LPTSTR)(32648);
// #if(WINVER >= 0x0500)
const LPTSTR IDC_HAND = cast(LPTSTR)(32649);
// #endif /* WINVER >= 0x0500 */
const LPTSTR IDC_APPSTARTING = cast(LPTSTR)(32650);
// #if(WINVER >= 0x0400)
const LPTSTR IDC_HELP = cast(LPTSTR)(32651);
// #endif /* WINVER >= 0x0400 */

extern(Windows) export BOOL SetSystemCursor(
  HCURSOR hcur,
  DWORD id);

struct _ICONINFO {
  BOOL fIcon;
  DWORD xHotspot;
  DWORD yHotspot;
  HBITMAP hbmMask;
  HBITMAP hbmColor;
}
alias _ICONINFO ICONINFO;

alias ICONINFO* PICONINFO;

extern(Windows) export HICON LoadIconA(
  HINSTANCE hInstance,
  LPCSTR lpIconName);
extern(Windows) export HICON LoadIconW(
  HINSTANCE hInstance,
  LPCWSTR lpIconName);
// #ifdef UNICODE
alias LoadIconW LoadIcon;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export HICON CreateIcon(
  HINSTANCE hInstance,
  int nWidth,
  int nHeight,
  BYTE cPlanes,
  BYTE cBitsPixel,
  BYTE *lpbANDbits,
  BYTE *lpbXORbits);

extern(Windows) export BOOL DestroyIcon(
  HICON hIcon);

extern(Windows) export int LookupIconIdFromDirectory(
  PBYTE presbits,
  BOOL fIcon);

// #if(WINVER >= 0x0400)
extern(Windows) export int LookupIconIdFromDirectoryEx(
  PBYTE presbits,
  BOOL fIcon,
  int cxDesired,
  int cyDesired,
  UINT Flags);
// #endif /* WINVER >= 0x0400 */

extern(Windows) export HICON CreateIconFromResource(
  PBYTE presbits,
  DWORD dwResSize,
  BOOL fIcon,
  DWORD dwVer);

// #if(WINVER >= 0x0400)
extern(Windows) export HICON CreateIconFromResourceEx(
  PBYTE presbits,
  DWORD dwResSize,
  BOOL fIcon,
  DWORD dwVer,
  int cxDesired,
  int cyDesired,
  UINT Flags);

struct tagCURSORSHAPE {
  int xHotSpot;
  int yHotSpot;
  int cx;
  int cy;
  int cbWidth;
  BYTE Planes;
  BYTE BitsPixel;
}
alias tagCURSORSHAPE CURSORSHAPE;
alias tagCURSORSHAPE* LPCURSORSHAPE;

// #endif /* WINVER >= 0x0400 */

enum : uint { IMAGE_BITMAP = 0 }
enum : uint { IMAGE_ICON = 1 }
enum : uint { IMAGE_CURSOR = 2 }
// #if(WINVER >= 0x0400)
enum : uint { IMAGE_ENHMETAFILE = 3 }

enum : uint { LR_DEFAULTCOLOR = 0x0000 }
enum : uint { LR_MONOCHROME = 0x0001 }
enum : uint { LR_COLOR = 0x0002 }
enum : uint { LR_COPYRETURNORG = 0x0004 }
enum : uint { LR_COPYDELETEORG = 0x0008 }
enum : uint { LR_LOADFROMFILE = 0x0010 }
enum : uint { LR_LOADTRANSPARENT = 0x0020 }
enum : uint { LR_DEFAULTSIZE = 0x0040 }
enum : uint { LR_VGACOLOR = 0x0080 }
enum : uint { LR_LOADMAP3DCOLORS = 0x1000 }
enum : uint { LR_CREATEDIBSECTION = 0x2000 }
enum : uint { LR_COPYFROMRESOURCE = 0x4000 }
enum : uint { LR_SHARED = 0x8000 }

extern(Windows) export HANDLE LoadImageA(
  HINSTANCE,
  LPCSTR,
  UINT,
  int,
  int,
  UINT);
extern(Windows) export HANDLE LoadImageW(
  HINSTANCE,
  LPCWSTR,
  UINT,
  int,
  int,
  UINT);
// #ifdef UNICODE
alias LoadImageW LoadImage;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export HANDLE CopyImage(
  HANDLE,
  UINT,
  int,
  int,
  UINT);

enum : uint { DI_MASK = 0x0001 }
enum : uint { DI_IMAGE = 0x0002 }
enum : uint { DI_NORMAL = 0x0003 }
enum : uint { DI_COMPAT = 0x0004 }
enum : uint { DI_DEFAULTSIZE = 0x0008 }
// #if(_WIN32_WINNT >= 0x0501)
enum : uint { DI_NOMIRROR = 0x0010 }
// #endif /* _WIN32_WINNT >= 0x0501 */

extern(Windows) export BOOL DrawIconEx(HDC hdc, int xLeft, int yTop,
  HICON hIcon, int cxWidth, int cyWidth,
  UINT istepIfAniCur, HBRUSH hbrFlickerFreeDraw, UINT diFlags);
// #endif /* WINVER >= 0x0400 */

extern(Windows) export HICON CreateIconIndirect(
  PICONINFO piconinfo);

extern(Windows) export HICON CopyIcon(
  HICON hIcon);

extern(Windows) export BOOL GetIconInfo(
  HICON hIcon,
  PICONINFO piconinfo);

// #if(WINVER >= 0x0400)
enum : uint { RES_ICON = 1 }
enum : uint { RES_CURSOR = 2 }
// #endif /* WINVER >= 0x0400 */

// #ifdef OEMRESOURCE

// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...

// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...

// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #if(WINVER >= 0x0500)
// #...
// #endif /* WINVER >= 0x0500 */
// #if(WINVER >= 0x0400)
// #...
// #endif /* WINVER >= 0x0400 */

// #...
// #...
// #...
// #...
// #...
// #if(WINVER >= 0x0400)
// #...
// #...
// #...
// #...
// #endif /* WINVER >= 0x0400 */

// #endif /* OEMRESOURCE */

enum : uint { ORD_LANGDRIVER = 1 }

// #ifndef NOICONS

// #ifdef RC_INVOKED
// #...
// #...
// #...
// #...
// #...
// #if(WINVER >= 0x0400)
// #...
// #endif /* WINVER >= 0x0400 */
// #else
const LPTSTR IDI_APPLICATION = cast(LPTSTR)(32512);
const LPTSTR IDI_HAND = cast(LPTSTR)(32513);
const LPTSTR IDI_QUESTION = cast(LPTSTR)(32514);
const LPTSTR IDI_EXCLAMATION = cast(LPTSTR)(32515);
const LPTSTR IDI_ASTERISK = cast(LPTSTR)(32516);
// #if(WINVER >= 0x0400)
const LPTSTR IDI_WINLOGO = cast(LPTSTR)(32517);
// #endif /* WINVER >= 0x0400 */
// #endif /* RC_INVOKED */

// #if(WINVER >= 0x0400)
alias IDI_EXCLAMATION IDI_WARNING;
alias IDI_HAND IDI_ERROR;
alias IDI_ASTERISK IDI_INFORMATION;
// #endif /* WINVER >= 0x0400 */

// #endif /* !NOICONS */

extern(Windows) export int LoadStringA(
  HINSTANCE hInstance,
  UINT uID,
  LPSTR lpBuffer,
  int nBufferMax);
extern(Windows) export int LoadStringW(
  HINSTANCE hInstance,
  UINT uID,
  LPWSTR lpBuffer,
  int nBufferMax);
// #ifdef UNICODE
alias LoadStringW LoadString;
// #else
// #...
// #endif // !UNICODE

enum : uint { IDOK = 1 }
enum : uint { IDCANCEL = 2 }
enum : uint { IDABORT = 3 }
enum : uint { IDRETRY = 4 }
enum : uint { IDIGNORE = 5 }
enum : uint { IDYES = 6 }
enum : uint { IDNO = 7 }
// #if(WINVER >= 0x0400)
enum : uint { IDCLOSE = 8 }
enum : uint { IDHELP = 9 }
// #endif /* WINVER >= 0x0400 */

// #if(WINVER >= 0x0500)
enum : uint { IDTRYAGAIN = 10 }
enum : uint { IDCONTINUE = 11 }
// #endif /* WINVER >= 0x0500 */

// #if(WINVER >= 0x0501)
// #ifndef IDTIMEOUT
enum : uint { IDTIMEOUT = 32000 }
// #endif
// #endif /* WINVER >= 0x0501 */

// #ifndef NOCTLMGR

// #ifndef NOWINSTYLES

enum : uint { ES_LEFT = 0x0000 }
enum : uint { ES_CENTER = 0x0001 }
enum : uint { ES_RIGHT = 0x0002 }
enum : uint { ES_MULTILINE = 0x0004 }
enum : uint { ES_UPPERCASE = 0x0008 }
enum : uint { ES_LOWERCASE = 0x0010 }
enum : uint { ES_PASSWORD = 0x0020 }
enum : uint { ES_AUTOVSCROLL = 0x0040 }
enum : uint { ES_AUTOHSCROLL = 0x0080 }
enum : uint { ES_NOHIDESEL = 0x0100 }
enum : uint { ES_OEMCONVERT = 0x0400 }
enum : uint { ES_READONLY = 0x0800 }
enum : uint { ES_WANTRETURN = 0x1000 }
// #if(WINVER >= 0x0400)
enum : uint { ES_NUMBER = 0x2000 }
// #endif /* WINVER >= 0x0400 */

// #endif /* !NOWINSTYLES */

enum : uint { EN_SETFOCUS = 0x0100 }
enum : uint { EN_KILLFOCUS = 0x0200 }
enum : uint { EN_CHANGE = 0x0300 }
enum : uint { EN_UPDATE = 0x0400 }
enum : uint { EN_ERRSPACE = 0x0500 }
enum : uint { EN_MAXTEXT = 0x0501 }
enum : uint { EN_HSCROLL = 0x0601 }
enum : uint { EN_VSCROLL = 0x0602 }

// #if(_WIN32_WINNT >= 0x0500)
enum : uint { EN_ALIGN_LTR_EC = 0x0700 }
enum : uint { EN_ALIGN_RTL_EC = 0x0701 }
// #endif /* _WIN32_WINNT >= 0x0500 */

// #if(WINVER >= 0x0400)

enum : uint { EC_LEFTMARGIN = 0x0001 }
enum : uint { EC_RIGHTMARGIN = 0x0002 }
enum : uint { EC_USEFONTINFO = 0xffff }
// #endif /* WINVER >= 0x0400 */

// #if(WINVER >= 0x0500)

enum : uint { EMSIS_COMPOSITIONSTRING = 0x0001 }

enum : uint { EIMES_GETCOMPSTRATONCE = 0x0001 }
enum : uint { EIMES_CANCELCOMPSTRINFOCUS = 0x0002 }
enum : uint { EIMES_COMPLETECOMPSTRKILLFOCUS = 0x0004 }
// #endif /* WINVER >= 0x0500 */

// #ifndef NOWINMESSAGES

enum : uint { EM_GETSEL = 0x00B0 }
enum : uint { EM_SETSEL = 0x00B1 }
enum : uint { EM_GETRECT = 0x00B2 }
enum : uint { EM_SETRECT = 0x00B3 }
enum : uint { EM_SETRECTNP = 0x00B4 }
enum : uint { EM_SCROLL = 0x00B5 }
enum : uint { EM_LINESCROLL = 0x00B6 }
enum : uint { EM_SCROLLCARET = 0x00B7 }
enum : uint { EM_GETMODIFY = 0x00B8 }
enum : uint { EM_SETMODIFY = 0x00B9 }
enum : uint { EM_GETLINECOUNT = 0x00BA }
enum : uint { EM_LINEINDEX = 0x00BB }
enum : uint { EM_SETHANDLE = 0x00BC }
enum : uint { EM_GETHANDLE = 0x00BD }
enum : uint { EM_GETTHUMB = 0x00BE }
enum : uint { EM_LINELENGTH = 0x00C1 }
enum : uint { EM_REPLACESEL = 0x00C2 }
enum : uint { EM_GETLINE = 0x00C4 }
enum : uint { EM_LIMITTEXT = 0x00C5 }
enum : uint { EM_CANUNDO = 0x00C6 }
enum : uint { EM_UNDO = 0x00C7 }
enum : uint { EM_FMTLINES = 0x00C8 }
enum : uint { EM_LINEFROMCHAR = 0x00C9 }
enum : uint { EM_SETTABSTOPS = 0x00CB }
enum : uint { EM_SETPASSWORDCHAR = 0x00CC }
enum : uint { EM_EMPTYUNDOBUFFER = 0x00CD }
enum : uint { EM_GETFIRSTVISIBLELINE = 0x00CE }
enum : uint { EM_SETREADONLY = 0x00CF }
enum : uint { EM_SETWORDBREAKPROC = 0x00D0 }
enum : uint { EM_GETWORDBREAKPROC = 0x00D1 }
enum : uint { EM_GETPASSWORDCHAR = 0x00D2 }
// #if(WINVER >= 0x0400)
enum : uint { EM_SETMARGINS = 0x00D3 }
enum : uint { EM_GETMARGINS = 0x00D4 }
alias EM_LIMITTEXT EM_SETLIMITTEXT;
enum : uint { EM_GETLIMITTEXT = 0x00D5 }
enum : uint { EM_POSFROMCHAR = 0x00D6 }
enum : uint { EM_CHARFROMPOS = 0x00D7 }
// #endif /* WINVER >= 0x0400 */

// #if(WINVER >= 0x0500)
enum : uint { EM_SETIMESTATUS = 0x00D8 }
enum : uint { EM_GETIMESTATUS = 0x00D9 }
// #endif /* WINVER >= 0x0500 */

// #endif /* !NOWINMESSAGES */

enum : uint { WB_LEFT = 0 }
enum : uint { WB_RIGHT = 1 }
enum : uint { WB_ISDELIMITER = 2 }

enum : uint { BS_PUSHBUTTON = 0x00000000 }
enum : uint { BS_DEFPUSHBUTTON = 0x00000001 }
enum : uint { BS_CHECKBOX = 0x00000002 }
enum : uint { BS_AUTOCHECKBOX = 0x00000003 }
enum : uint { BS_RADIOBUTTON = 0x00000004 }
enum : uint { BS_3STATE = 0x00000005 }
enum : uint { BS_AUTO3STATE = 0x00000006 }
enum : uint { BS_GROUPBOX = 0x00000007 }
enum : uint { BS_USERBUTTON = 0x00000008 }
enum : uint { BS_AUTORADIOBUTTON = 0x00000009 }
enum : uint { BS_OWNERDRAW = 0x0000000B }
enum : uint { BS_LEFTTEXT = 0x00000020 }
// #if(WINVER >= 0x0400)
enum : uint { BS_TEXT = 0x00000000 }
enum : uint { BS_ICON = 0x00000040 }
enum : uint { BS_BITMAP = 0x00000080 }
enum : uint { BS_LEFT = 0x00000100 }
enum : uint { BS_RIGHT = 0x00000200 }
enum : uint { BS_CENTER = 0x00000300 }
enum : uint { BS_TOP = 0x00000400 }
enum : uint { BS_BOTTOM = 0x00000800 }
enum : uint { BS_VCENTER = 0x00000C00 }
enum : uint { BS_PUSHLIKE = 0x00001000 }
enum : uint { BS_MULTILINE = 0x00002000 }
enum : uint { BS_NOTIFY = 0x00004000 }
enum : uint { BS_FLAT = 0x00008000 }
alias BS_LEFTTEXT BS_RIGHTBUTTON;
// #endif /* WINVER >= 0x0400 */

enum : uint { BN_CLICKED = 0 }
enum : uint { BN_PAINT = 1 }
enum : uint { BN_HILITE = 2 }
enum : uint { BN_UNHILITE = 3 }
enum : uint { BN_DISABLE = 4 }
enum : uint { BN_DOUBLECLICKED = 5 }
// #if(WINVER >= 0x0400)
alias BN_HILITE BN_PUSHED;
alias BN_UNHILITE BN_UNPUSHED;
alias BN_DOUBLECLICKED BN_DBLCLK;
enum : uint { BN_SETFOCUS = 6 }
enum : uint { BN_KILLFOCUS = 7 }
// #endif /* WINVER >= 0x0400 */

enum : uint { BM_GETCHECK = 0x00F0 }
enum : uint { BM_SETCHECK = 0x00F1 }
enum : uint { BM_GETSTATE = 0x00F2 }
enum : uint { BM_SETSTATE = 0x00F3 }
enum : uint { BM_SETSTYLE = 0x00F4 }
// #if(WINVER >= 0x0400)
enum : uint { BM_CLICK = 0x00F5 }
enum : uint { BM_GETIMAGE = 0x00F6 }
enum : uint { BM_SETIMAGE = 0x00F7 }

enum : uint { BST_UNCHECKED = 0x0000 }
enum : uint { BST_CHECKED = 0x0001 }
enum : uint { BST_INDETERMINATE = 0x0002 }
enum : uint { BST_PUSHED = 0x0004 }
enum : uint { BST_FOCUS = 0x0008 }
// #endif /* WINVER >= 0x0400 */

enum : uint { SS_LEFT = 0x00000000 }
enum : uint { SS_CENTER = 0x00000001 }
enum : uint { SS_RIGHT = 0x00000002 }
enum : uint { SS_ICON = 0x00000003 }
enum : uint { SS_BLACKRECT = 0x00000004 }
enum : uint { SS_GRAYRECT = 0x00000005 }
enum : uint { SS_WHITERECT = 0x00000006 }
enum : uint { SS_BLACKFRAME = 0x00000007 }
enum : uint { SS_GRAYFRAME = 0x00000008 }
enum : uint { SS_WHITEFRAME = 0x00000009 }
enum : uint { SS_USERITEM = 0x0000000A }
enum : uint { SS_SIMPLE = 0x0000000B }
enum : uint { SS_LEFTNOWORDWRAP = 0x0000000C }
// #if(WINVER >= 0x0400)
enum : uint { SS_OWNERDRAW = 0x0000000D }
enum : uint { SS_BITMAP = 0x0000000E }
enum : uint { SS_ENHMETAFILE = 0x0000000F }
enum : uint { SS_ETCHEDHORZ = 0x00000010 }
enum : uint { SS_ETCHEDVERT = 0x00000011 }
enum : uint { SS_ETCHEDFRAME = 0x00000012 }
enum : uint { SS_TYPEMASK = 0x0000001F }
// #endif /* WINVER >= 0x0400 */
// #if(WINVER >= 0x0501)
enum : uint { SS_REALSIZECONTROL = 0x00000040 }
// #endif /* WINVER >= 0x0501 */
enum : uint { SS_NOPREFIX = 0x00000080 }
// #if(WINVER >= 0x0400)
enum : uint { SS_NOTIFY = 0x00000100 }
enum : uint { SS_CENTERIMAGE = 0x00000200 }
enum : uint { SS_RIGHTJUST = 0x00000400 }
enum : uint { SS_REALSIZEIMAGE = 0x00000800 }
enum : uint { SS_SUNKEN = 0x00001000 }
enum : uint { SS_ENDELLIPSIS = 0x00004000 }
enum : uint { SS_PATHELLIPSIS = 0x00008000 }
enum : uint { SS_WORDELLIPSIS = 0x0000C000 }
enum : uint { SS_ELLIPSISMASK = 0x0000C000 }
// #endif /* WINVER >= 0x0400 */

// #ifndef NOWINMESSAGES

enum : uint { STM_SETICON = 0x0170 }
enum : uint { STM_GETICON = 0x0171 }
// #if(WINVER >= 0x0400)
enum : uint { STM_SETIMAGE = 0x0172 }
enum : uint { STM_GETIMAGE = 0x0173 }
enum : uint { STN_CLICKED = 0 }
enum : uint { STN_DBLCLK = 1 }
enum : uint { STN_ENABLE = 2 }
enum : uint { STN_DISABLE = 3 }
// #endif /* WINVER >= 0x0400 */
enum : uint { STM_MSGMAX = 0x0174 }
// #endif /* !NOWINMESSAGES */

const ATOM WC_DIALOG = cast(ATOM)0x8002;

enum : uint { DWL_MSGRESULT = 0 }
enum : uint { DWL_DLGPROC = 4 }
enum : uint { DWL_USER = 8 }

// #ifdef _WIN64

// #...
// #...
// #...

// #endif /* _WIN64 */

enum : uint { DWLP_MSGRESULT = 0 }
enum : uint { DWLP_DLGPROC = DWLP_MSGRESULT + LRESULT.sizeof }
enum : uint { DWLP_USER = DWLP_DLGPROC + DLGPROC.sizeof }

// #ifndef NOMSG

extern(Windows) export BOOL IsDialogMessageA(
  HWND hDlg,
  LPMSG lpMsg);
extern(Windows) export BOOL IsDialogMessageW(
  HWND hDlg,
  LPMSG lpMsg);
// #ifdef UNICODE
alias IsDialogMessageW IsDialogMessage;
// #else
// #...
// #endif // !UNICODE

// #endif /* !NOMSG */

extern(Windows) export BOOL MapDialogRect(
  HWND hDlg,
  LPRECT lpRect);

extern(Windows) export int DlgDirListA(
  HWND hDlg,
  LPSTR lpPathSpec,
  int nIDListBox,
  int nIDStaticPath,
  UINT uFileType);
extern(Windows) export int DlgDirListW(
  HWND hDlg,
  LPWSTR lpPathSpec,
  int nIDListBox,
  int nIDStaticPath,
  UINT uFileType);
// #ifdef UNICODE
alias DlgDirListW DlgDirList;
// #else
// #...
// #endif // !UNICODE

enum : uint { DDL_READWRITE = 0x0000 }
enum : uint { DDL_READONLY = 0x0001 }
enum : uint { DDL_HIDDEN = 0x0002 }
enum : uint { DDL_SYSTEM = 0x0004 }
enum : uint { DDL_DIRECTORY = 0x0010 }
enum : uint { DDL_ARCHIVE = 0x0020 }

enum : uint { DDL_POSTMSGS = 0x2000 }
enum : uint { DDL_DRIVES = 0x4000 }
enum : uint { DDL_EXCLUSIVE = 0x8000 }

extern(Windows) export BOOL DlgDirSelectExA(
  HWND hDlg,
  LPSTR lpString,
  int nCount,
  int nIDListBox);
extern(Windows) export BOOL DlgDirSelectExW(
  HWND hDlg,
  LPWSTR lpString,
  int nCount,
  int nIDListBox);
// #ifdef UNICODE
alias DlgDirSelectExW DlgDirSelectEx;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export int DlgDirListComboBoxA(
  HWND hDlg,
  LPSTR lpPathSpec,
  int nIDComboBox,
  int nIDStaticPath,
  UINT uFiletype);
extern(Windows) export int DlgDirListComboBoxW(
  HWND hDlg,
  LPWSTR lpPathSpec,
  int nIDComboBox,
  int nIDStaticPath,
  UINT uFiletype);
// #ifdef UNICODE
alias DlgDirListComboBoxW DlgDirListComboBox;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export BOOL DlgDirSelectComboBoxExA(
  HWND hDlg,
  LPSTR lpString,
  int nCount,
  int nIDComboBox);
extern(Windows) export BOOL DlgDirSelectComboBoxExW(
  HWND hDlg,
  LPWSTR lpString,
  int nCount,
  int nIDComboBox);
// #ifdef UNICODE
alias DlgDirSelectComboBoxExW DlgDirSelectComboBoxEx;
// #else
// #...
// #endif // !UNICODE

enum : uint { DS_ABSALIGN = 0x01 }
enum : uint { DS_SYSMODAL = 0x02 }
enum : uint { DS_LOCALEDIT = 0x20 }
enum : uint { DS_SETFONT = 0x40 }
enum : uint { DS_MODALFRAME = 0x80 }
enum : uint { DS_NOIDLEMSG = 0x100 }
enum : uint { DS_SETFOREGROUND = 0x200 }

// #if(WINVER >= 0x0400)
enum : uint { DS_3DLOOK = 0x0004 }
enum : uint { DS_FIXEDSYS = 0x0008 }
enum : uint { DS_NOFAILCREATE = 0x0010 }
enum : uint { DS_CONTROL = 0x0400 }
enum : uint { DS_CENTER = 0x0800 }
enum : uint { DS_CENTERMOUSE = 0x1000 }
enum : uint { DS_CONTEXTHELP = 0x2000 }

enum : uint { DS_SHELLFONT = DS_SETFONT | DS_FIXEDSYS }
// #endif /* WINVER >= 0x0400 */

enum : uint { DM_GETDEFID = WM_USER+0 }
enum : uint { DM_SETDEFID = WM_USER+1 }

// #if(WINVER >= 0x0400)
enum : uint { DM_REPOSITION = WM_USER+2 }
// #endif /* WINVER >= 0x0400 */

enum : uint { DC_HASDEFID = 0x534B }

enum : uint { DLGC_WANTARROWS = 0x0001 }
enum : uint { DLGC_WANTTAB = 0x0002 }
enum : uint { DLGC_WANTALLKEYS = 0x0004 }
enum : uint { DLGC_WANTMESSAGE = 0x0004 }
enum : uint { DLGC_HASSETSEL = 0x0008 }
enum : uint { DLGC_DEFPUSHBUTTON = 0x0010 }
enum : uint { DLGC_UNDEFPUSHBUTTON = 0x0020 }
enum : uint { DLGC_RADIOBUTTON = 0x0040 }
enum : uint { DLGC_WANTCHARS = 0x0080 }
enum : uint { DLGC_STATIC = 0x0100 }
enum : uint { DLGC_BUTTON = 0x2000 }

enum : uint { LB_CTLCODE = 0 }

enum : uint { LB_OKAY = 0 }
enum { LB_ERR = -1 }
enum { LB_ERRSPACE = -2 }

enum { LBN_ERRSPACE = -2 }
enum : uint { LBN_SELCHANGE = 1 }
enum : uint { LBN_DBLCLK = 2 }
enum : uint { LBN_SELCANCEL = 3 }
enum : uint { LBN_SETFOCUS = 4 }
enum : uint { LBN_KILLFOCUS = 5 }

// #ifndef NOWINMESSAGES

enum : uint { LB_ADDSTRING = 0x0180 }
enum : uint { LB_INSERTSTRING = 0x0181 }
enum : uint { LB_DELETESTRING = 0x0182 }
enum : uint { LB_SELITEMRANGEEX = 0x0183 }
enum : uint { LB_RESETCONTENT = 0x0184 }
enum : uint { LB_SETSEL = 0x0185 }
enum : uint { LB_SETCURSEL = 0x0186 }
enum : uint { LB_GETSEL = 0x0187 }
enum : uint { LB_GETCURSEL = 0x0188 }
enum : uint { LB_GETTEXT = 0x0189 }
enum : uint { LB_GETTEXTLEN = 0x018A }
enum : uint { LB_GETCOUNT = 0x018B }
enum : uint { LB_SELECTSTRING = 0x018C }
enum : uint { LB_DIR = 0x018D }
enum : uint { LB_GETTOPINDEX = 0x018E }
enum : uint { LB_FINDSTRING = 0x018F }
enum : uint { LB_GETSELCOUNT = 0x0190 }
enum : uint { LB_GETSELITEMS = 0x0191 }
enum : uint { LB_SETTABSTOPS = 0x0192 }
enum : uint { LB_GETHORIZONTALEXTENT = 0x0193 }
enum : uint { LB_SETHORIZONTALEXTENT = 0x0194 }
enum : uint { LB_SETCOLUMNWIDTH = 0x0195 }
enum : uint { LB_ADDFILE = 0x0196 }
enum : uint { LB_SETTOPINDEX = 0x0197 }
enum : uint { LB_GETITEMRECT = 0x0198 }
enum : uint { LB_GETITEMDATA = 0x0199 }
enum : uint { LB_SETITEMDATA = 0x019A }
enum : uint { LB_SELITEMRANGE = 0x019B }
enum : uint { LB_SETANCHORINDEX = 0x019C }
enum : uint { LB_GETANCHORINDEX = 0x019D }
enum : uint { LB_SETCARETINDEX = 0x019E }
enum : uint { LB_GETCARETINDEX = 0x019F }
enum : uint { LB_SETITEMHEIGHT = 0x01A0 }
enum : uint { LB_GETITEMHEIGHT = 0x01A1 }
enum : uint { LB_FINDSTRINGEXACT = 0x01A2 }
enum : uint { LB_SETLOCALE = 0x01A5 }
enum : uint { LB_GETLOCALE = 0x01A6 }
enum : uint { LB_SETCOUNT = 0x01A7 }
// #if(WINVER >= 0x0400)
enum : uint { LB_INITSTORAGE = 0x01A8 }
enum : uint { LB_ITEMFROMPOINT = 0x01A9 }
// #endif /* WINVER >= 0x0400 */
// #if(_WIN32_WCE >= 0x0400)
// #...
// #endif

// #if(_WIN32_WINNT >= 0x0501)
enum : uint { LB_GETLISTBOXINFO = 0x01B2 }
// #endif /* _WIN32_WINNT >= 0x0501 */

// #if(_WIN32_WINNT >= 0x0501)
enum : uint { LB_MSGMAX = 0x01B3 }
// #elif(_WIN32_WCE >= 0x0400)
// #...
// #elif(WINVER >= 0x0400)
// #...
// #else
// #...
// #endif

// #endif /* !NOWINMESSAGES */

// #ifndef NOWINSTYLES

enum : uint { LBS_NOTIFY = 0x0001 }
enum : uint { LBS_SORT = 0x0002 }
enum : uint { LBS_NOREDRAW = 0x0004 }
enum : uint { LBS_MULTIPLESEL = 0x0008 }
enum : uint { LBS_OWNERDRAWFIXED = 0x0010 }
enum : uint { LBS_OWNERDRAWVARIABLE = 0x0020 }
enum : uint { LBS_HASSTRINGS = 0x0040 }
enum : uint { LBS_USETABSTOPS = 0x0080 }
enum : uint { LBS_NOINTEGRALHEIGHT = 0x0100 }
enum : uint { LBS_MULTICOLUMN = 0x0200 }
enum : uint { LBS_WANTKEYBOARDINPUT = 0x0400 }
enum : uint { LBS_EXTENDEDSEL = 0x0800 }
enum : uint { LBS_DISABLENOSCROLL = 0x1000 }
enum : uint { LBS_NODATA = 0x2000 }
// #if(WINVER >= 0x0400)
enum : uint { LBS_NOSEL = 0x4000 }
// #endif /* WINVER >= 0x0400 */
enum : uint { LBS_STANDARD = LBS_NOTIFY | LBS_SORT | WS_VSCROLL | WS_BORDER }

// #endif /* !NOWINSTYLES */

enum : uint { CB_OKAY = 0 }
enum { CB_ERR = -1 }
enum { CB_ERRSPACE = -2 }

enum { CBN_ERRSPACE = -1 }
enum : uint { CBN_SELCHANGE = 1 }
enum : uint { CBN_DBLCLK = 2 }
enum : uint { CBN_SETFOCUS = 3 }
enum : uint { CBN_KILLFOCUS = 4 }
enum : uint { CBN_EDITCHANGE = 5 }
enum : uint { CBN_EDITUPDATE = 6 }
enum : uint { CBN_DROPDOWN = 7 }
enum : uint { CBN_CLOSEUP = 8 }
enum : uint { CBN_SELENDOK = 9 }
enum : uint { CBN_SELENDCANCEL = 10 }

// #ifndef NOWINSTYLES

enum : uint { CBS_SIMPLE = 0x0001 }
enum : uint { CBS_DROPDOWN = 0x0002 }
enum : uint { CBS_DROPDOWNLIST = 0x0003 }
enum : uint { CBS_OWNERDRAWFIXED = 0x0010 }
enum : uint { CBS_OWNERDRAWVARIABLE = 0x0020 }
enum : uint { CBS_AUTOHSCROLL = 0x0040 }
enum : uint { CBS_OEMCONVERT = 0x0080 }
enum : uint { CBS_SORT = 0x0100 }
enum : uint { CBS_HASSTRINGS = 0x0200 }
enum : uint { CBS_NOINTEGRALHEIGHT = 0x0400 }
enum : uint { CBS_DISABLENOSCROLL = 0x0800 }
// #if(WINVER >= 0x0400)
enum : uint { CBS_UPPERCASE = 0x2000 }
enum : uint { CBS_LOWERCASE = 0x4000 }
// #endif /* WINVER >= 0x0400 */

// #endif  /* !NOWINSTYLES */

// #ifndef NOWINMESSAGES
enum : uint { CB_GETEDITSEL = 0x0140 }
enum : uint { CB_LIMITTEXT = 0x0141 }
enum : uint { CB_SETEDITSEL = 0x0142 }
enum : uint { CB_ADDSTRING = 0x0143 }
enum : uint { CB_DELETESTRING = 0x0144 }
enum : uint { CB_DIR = 0x0145 }
enum : uint { CB_GETCOUNT = 0x0146 }
enum : uint { CB_GETCURSEL = 0x0147 }
enum : uint { CB_GETLBTEXT = 0x0148 }
enum : uint { CB_GETLBTEXTLEN = 0x0149 }
enum : uint { CB_INSERTSTRING = 0x014A }
enum : uint { CB_RESETCONTENT = 0x014B }
enum : uint { CB_FINDSTRING = 0x014C }
enum : uint { CB_SELECTSTRING = 0x014D }
enum : uint { CB_SETCURSEL = 0x014E }
enum : uint { CB_SHOWDROPDOWN = 0x014F }
enum : uint { CB_GETITEMDATA = 0x0150 }
enum : uint { CB_SETITEMDATA = 0x0151 }
enum : uint { CB_GETDROPPEDCONTROLRECT = 0x0152 }
enum : uint { CB_SETITEMHEIGHT = 0x0153 }
enum : uint { CB_GETITEMHEIGHT = 0x0154 }
enum : uint { CB_SETEXTENDEDUI = 0x0155 }
enum : uint { CB_GETEXTENDEDUI = 0x0156 }
enum : uint { CB_GETDROPPEDSTATE = 0x0157 }
enum : uint { CB_FINDSTRINGEXACT = 0x0158 }
enum : uint { CB_SETLOCALE = 0x0159 }
enum : uint { CB_GETLOCALE = 0x015A }
// #if(WINVER >= 0x0400)
enum : uint { CB_GETTOPINDEX = 0x015b }
enum : uint { CB_SETTOPINDEX = 0x015c }
enum : uint { CB_GETHORIZONTALEXTENT = 0x015d }
enum : uint { CB_SETHORIZONTALEXTENT = 0x015e }
enum : uint { CB_GETDROPPEDWIDTH = 0x015f }
enum : uint { CB_SETDROPPEDWIDTH = 0x0160 }
enum : uint { CB_INITSTORAGE = 0x0161 }
// #if(_WIN32_WCE >= 0x0400)
// #...
// #endif
// #endif /* WINVER >= 0x0400 */

// #if(_WIN32_WINNT >= 0x0501)
enum : uint { CB_GETCOMBOBOXINFO = 0x0164 }
// #endif /* _WIN32_WINNT >= 0x0501 */

// #if(_WIN32_WINNT >= 0x0501)
enum : uint { CB_MSGMAX = 0x0165 }
// #elif(_WIN32_WCE >= 0x0400)
// #...
// #elif(WINVER >= 0x0400)
// #...
// #else
// #...
// #endif
// #endif  /* !NOWINMESSAGES */

// #ifndef NOWINSTYLES

enum : uint { SBS_HORZ = 0x0000 }
enum : uint { SBS_VERT = 0x0001 }
enum : uint { SBS_TOPALIGN = 0x0002 }
enum : uint { SBS_LEFTALIGN = 0x0002 }
enum : uint { SBS_BOTTOMALIGN = 0x0004 }
enum : uint { SBS_RIGHTALIGN = 0x0004 }
enum : uint { SBS_SIZEBOXTOPLEFTALIGN = 0x0002 }
enum : uint { SBS_SIZEBOXBOTTOMRIGHTALIGN = 0x0004 }
enum : uint { SBS_SIZEBOX = 0x0008 }
// #if(WINVER >= 0x0400)
enum : uint { SBS_SIZEGRIP = 0x0010 }
// #endif /* WINVER >= 0x0400 */

// #endif /* !NOWINSTYLES */

// #ifndef NOWINMESSAGES
enum : uint { SBM_SETPOS = 0x00E0 }
enum : uint { SBM_GETPOS = 0x00E1 }
enum : uint { SBM_SETRANGE = 0x00E2 }
enum : uint { SBM_SETRANGEREDRAW = 0x00E6 }
enum : uint { SBM_GETRANGE = 0x00E3 }
enum : uint { SBM_ENABLE_ARROWS = 0x00E4 }
// #if(WINVER >= 0x0400)
enum : uint { SBM_SETSCROLLINFO = 0x00E9 }
enum : uint { SBM_GETSCROLLINFO = 0x00EA }
// #endif /* WINVER >= 0x0400 */

// #if(_WIN32_WINNT >= 0x0501)
enum : uint { SBM_GETSCROLLBARINFO = 0x00EB }
// #endif /* _WIN32_WINNT >= 0x0501 */

// #if(WINVER >= 0x0400)
enum : uint { SIF_RANGE = 0x0001 }
enum : uint { SIF_PAGE = 0x0002 }
enum : uint { SIF_POS = 0x0004 }
enum : uint { SIF_DISABLENOSCROLL = 0x0008 }
enum : uint { SIF_TRACKPOS = 0x0010 }
enum : uint { SIF_ALL = SIF_RANGE | SIF_PAGE | SIF_POS | SIF_TRACKPOS }

struct tagSCROLLINFO {
  UINT cbSize;
  UINT fMask;
  int nMin;
  int nMax;
  UINT nPage;
  int nPos;
  int nTrackPos;
}
alias tagSCROLLINFO SCROLLINFO;
alias tagSCROLLINFO* LPSCROLLINFO;

alias SCROLLINFO* LPCSCROLLINFO;

extern(Windows) export int SetScrollInfo(HWND, int, LPCSCROLLINFO, BOOL);
extern(Windows) export BOOL GetScrollInfo(HWND, int, LPSCROLLINFO);

// #endif /* WINVER >= 0x0400 */
// #endif /* !NOWINMESSAGES */
// #endif /* !NOCTLMGR */

// #ifndef NOMDI

enum : uint { MDIS_ALLCHILDSTYLES = 0x0001 }

enum : uint { MDITILE_VERTICAL = 0x0000 }
enum : uint { MDITILE_HORIZONTAL = 0x0001 }
enum : uint { MDITILE_SKIPDISABLED = 0x0002 }
// #if(_WIN32_WINNT >= 0x0500)
enum : uint { MDITILE_ZORDER = 0x0004 }
// #endif /* _WIN32_WINNT >= 0x0500 */

struct tagMDICREATESTRUCTA {
  LPCSTR szClass;
  LPCSTR szTitle;
  HANDLE hOwner;
  int x;
  int y;
  int cx;
  int cy;
  DWORD style;
  LPARAM lParam;
}
alias tagMDICREATESTRUCTA MDICREATESTRUCTA;
alias tagMDICREATESTRUCTA* LPMDICREATESTRUCTA;

struct tagMDICREATESTRUCTW {
  LPCWSTR szClass;
  LPCWSTR szTitle;
  HANDLE hOwner;
  int x;
  int y;
  int cx;
  int cy;
  DWORD style;
  LPARAM lParam;
}
alias tagMDICREATESTRUCTW MDICREATESTRUCTW;
alias tagMDICREATESTRUCTW* LPMDICREATESTRUCTW;

// #ifdef UNICODE
alias MDICREATESTRUCTW MDICREATESTRUCT;
alias LPMDICREATESTRUCTW LPMDICREATESTRUCT;
// #else
// ...
// #endif // UNICODE

struct tagCLIENTCREATESTRUCT {
  HANDLE hWindowMenu;
  UINT idFirstChild;
}
alias tagCLIENTCREATESTRUCT CLIENTCREATESTRUCT;
alias tagCLIENTCREATESTRUCT* LPCLIENTCREATESTRUCT;

extern(Windows) export LRESULT DefFrameProcA(
  HWND hWnd,
  HWND hWndMDIClient,
  UINT uMsg,
  WPARAM wParam,
  LPARAM lParam);
extern(Windows) export LRESULT DefFrameProcW(
  HWND hWnd,
  HWND hWndMDIClient,
  UINT uMsg,
  WPARAM wParam,
  LPARAM lParam);
// #ifdef UNICODE
alias DefFrameProcW DefFrameProc;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export LRESULT DefMDIChildProcA(HWND hWnd, UINT Msg, WPARAM wParam, LPARAM lParam);
extern(Windows) export LRESULT DefMDIChildProcW(HWND hWnd, UINT Msg, WPARAM wParam, LPARAM lParam);
// #ifdef UNICODE
alias DefMDIChildProcW DefMDIChildProc;
// #else
// #...
// #endif // !UNICODE

// #ifndef NOMSG

extern(Windows) export BOOL TranslateMDISysAccel(
  HWND hWndClient,
  LPMSG lpMsg);

// #endif /* !NOMSG */

extern(Windows) export UINT ArrangeIconicWindows(
  HWND hWnd);

extern(Windows) export HWND CreateMDIWindowA(
  LPCSTR lpClassName,
  LPCSTR lpWindowName,
  DWORD dwStyle,
  int X,
  int Y,
  int nWidth,
  int nHeight,
  HWND hWndParent,
  HINSTANCE hInstance,
  LPARAM lParam);
extern(Windows) export HWND CreateMDIWindowW(
  LPCWSTR lpClassName,
  LPCWSTR lpWindowName,
  DWORD dwStyle,
  int X,
  int Y,
  int nWidth,
  int nHeight,
  HWND hWndParent,
  HINSTANCE hInstance,
  LPARAM lParam);
// #ifdef UNICODE
alias CreateMDIWindowW CreateMDIWindow;
// #else
// #...
// #endif // !UNICODE

// #if(WINVER >= 0x0400)
extern(Windows) export WORD TileWindows(HWND hwndParent, UINT wHow, RECT * lpRect, UINT cKids, HWND * lpKids);
extern(Windows) export WORD CascadeWindows(HWND hwndParent, UINT wHow, RECT * lpRect, UINT cKids, HWND * lpKids);
// #endif /* WINVER >= 0x0400 */
// #endif /* !NOMDI */

// #endif /* !NOUSER */

// #ifndef NOHELP

alias DWORD HELPPOLY;
struct tagMULTIKEYHELPA {
// #ifndef _MAC
  DWORD mkSize;
// #else
// ...
// #endif
  CHAR mkKeylist;
  CHAR szKeyphrase[1];
}
alias tagMULTIKEYHELPA MULTIKEYHELPA;
alias tagMULTIKEYHELPA* PMULTIKEYHELPA;
alias tagMULTIKEYHELPA* LPMULTIKEYHELPA;

struct tagMULTIKEYHELPW {
// #ifndef _MAC
  DWORD mkSize;
// #else
// ...
// #endif
  WCHAR mkKeylist;
  WCHAR szKeyphrase[1];
}
alias tagMULTIKEYHELPW MULTIKEYHELPW;
alias tagMULTIKEYHELPW* PMULTIKEYHELPW;
alias tagMULTIKEYHELPW* LPMULTIKEYHELPW;

// #ifdef UNICODE
alias MULTIKEYHELPW MULTIKEYHELP;
alias PMULTIKEYHELPW PMULTIKEYHELP;
alias LPMULTIKEYHELPW LPMULTIKEYHELP;
// #else
// ...
// #endif // UNICODE

struct tagHELPWININFOA {
  int wStructSize;
  int x;
  int y;
  int dx;
  int dy;
  int wMax;
  CHAR rgchMember[2];
}
alias tagHELPWININFOA HELPWININFOA;
alias tagHELPWININFOA* PHELPWININFOA;
alias tagHELPWININFOA* LPHELPWININFOA;

struct tagHELPWININFOW {
  int wStructSize;
  int x;
  int y;
  int dx;
  int dy;
  int wMax;
  WCHAR rgchMember[2];
}
alias tagHELPWININFOW HELPWININFOW;
alias tagHELPWININFOW* PHELPWININFOW;
alias tagHELPWININFOW* LPHELPWININFOW;

// #ifdef UNICODE
alias HELPWININFOW HELPWININFO;
alias PHELPWININFOW PHELPWININFO;
alias LPHELPWININFOW LPHELPWININFO;
// #else
// ...
// #endif // UNICODE

enum : uint { HELP_CONTEXT = 0x0001 }
enum : uint { HELP_QUIT = 0x0002 }
enum : uint { HELP_INDEX = 0x0003 }
enum : uint { HELP_CONTENTS = 0x0003 }
enum : uint { HELP_HELPONHELP = 0x0004 }
enum : uint { HELP_SETINDEX = 0x0005 }
enum : uint { HELP_SETCONTENTS = 0x0005 }
enum : uint { HELP_CONTEXTPOPUP = 0x0008 }
enum : uint { HELP_FORCEFILE = 0x0009 }
enum : uint { HELP_KEY = 0x0101 }
enum : uint { HELP_COMMAND = 0x0102 }
enum : uint { HELP_PARTIALKEY = 0x0105 }
enum : uint { HELP_MULTIKEY = 0x0201 }
enum : uint { HELP_SETWINPOS = 0x0203 }
// #if(WINVER >= 0x0400)
enum : uint { HELP_CONTEXTMENU = 0x000a }
enum : uint { HELP_FINDER = 0x000b }
enum : uint { HELP_WM_HELP = 0x000c }
enum : uint { HELP_SETPOPUP_POS = 0x000d }

enum : uint { HELP_TCARD = 0x8000 }
enum : uint { HELP_TCARD_DATA = 0x0010 }
enum : uint { HELP_TCARD_OTHER_CALLER = 0x0011 }

enum : uint { IDH_NO_HELP = 28440 }
enum : uint { IDH_MISSING_CONTEXT = 28441 }
enum : uint { IDH_GENERIC_HELP_BUTTON = 28442 }
enum : uint { IDH_OK = 28443 }
enum : uint { IDH_CANCEL = 28444 }
enum : uint { IDH_HELP = 28445 }

// #endif /* WINVER >= 0x0400 */

extern(Windows) export BOOL WinHelpA(
  HWND hWndMain,
  LPCSTR lpszHelp,
  UINT uCommand,
  ULONG_PTR dwData);
extern(Windows) export BOOL WinHelpW(
  HWND hWndMain,
  LPCWSTR lpszHelp,
  UINT uCommand,
  ULONG_PTR dwData);
// #ifdef UNICODE
alias WinHelpW WinHelp;
// #else
// #...
// #endif // !UNICODE

// #endif /* !NOHELP */

// #if(WINVER >= 0x0500)

enum : uint { GR_GDIOBJECTS = 0 }
enum : uint { GR_USEROBJECTS = 1 }

extern(Windows) export DWORD GetGuiResources(
  HANDLE hProcess,
  DWORD uiFlags);

// #endif /* WINVER >= 0x0500 */

// #ifndef NOSYSPARAMSINFO

enum : uint { SPI_GETBEEP = 0x0001 }
enum : uint { SPI_SETBEEP = 0x0002 }
enum : uint { SPI_GETMOUSE = 0x0003 }
enum : uint { SPI_SETMOUSE = 0x0004 }
enum : uint { SPI_GETBORDER = 0x0005 }
enum : uint { SPI_SETBORDER = 0x0006 }
enum : uint { SPI_GETKEYBOARDSPEED = 0x000A }
enum : uint { SPI_SETKEYBOARDSPEED = 0x000B }
enum : uint { SPI_LANGDRIVER = 0x000C }
enum : uint { SPI_ICONHORIZONTALSPACING = 0x000D }
enum : uint { SPI_GETSCREENSAVETIMEOUT = 0x000E }
enum : uint { SPI_SETSCREENSAVETIMEOUT = 0x000F }
enum : uint { SPI_GETSCREENSAVEACTIVE = 0x0010 }
enum : uint { SPI_SETSCREENSAVEACTIVE = 0x0011 }
enum : uint { SPI_GETGRIDGRANULARITY = 0x0012 }
enum : uint { SPI_SETGRIDGRANULARITY = 0x0013 }
enum : uint { SPI_SETDESKWALLPAPER = 0x0014 }
enum : uint { SPI_SETDESKPATTERN = 0x0015 }
enum : uint { SPI_GETKEYBOARDDELAY = 0x0016 }
enum : uint { SPI_SETKEYBOARDDELAY = 0x0017 }
enum : uint { SPI_ICONVERTICALSPACING = 0x0018 }
enum : uint { SPI_GETICONTITLEWRAP = 0x0019 }
enum : uint { SPI_SETICONTITLEWRAP = 0x001A }
enum : uint { SPI_GETMENUDROPALIGNMENT = 0x001B }
enum : uint { SPI_SETMENUDROPALIGNMENT = 0x001C }
enum : uint { SPI_SETDOUBLECLKWIDTH = 0x001D }
enum : uint { SPI_SETDOUBLECLKHEIGHT = 0x001E }
enum : uint { SPI_GETICONTITLELOGFONT = 0x001F }
enum : uint { SPI_SETDOUBLECLICKTIME = 0x0020 }
enum : uint { SPI_SETMOUSEBUTTONSWAP = 0x0021 }
enum : uint { SPI_SETICONTITLELOGFONT = 0x0022 }
enum : uint { SPI_GETFASTTASKSWITCH = 0x0023 }
enum : uint { SPI_SETFASTTASKSWITCH = 0x0024 }
// #if(WINVER >= 0x0400)
enum : uint { SPI_SETDRAGFULLWINDOWS = 0x0025 }
enum : uint { SPI_GETDRAGFULLWINDOWS = 0x0026 }
enum : uint { SPI_GETNONCLIENTMETRICS = 0x0029 }
enum : uint { SPI_SETNONCLIENTMETRICS = 0x002A }
enum : uint { SPI_GETMINIMIZEDMETRICS = 0x002B }
enum : uint { SPI_SETMINIMIZEDMETRICS = 0x002C }
enum : uint { SPI_GETICONMETRICS = 0x002D }
enum : uint { SPI_SETICONMETRICS = 0x002E }
enum : uint { SPI_SETWORKAREA = 0x002F }
enum : uint { SPI_GETWORKAREA = 0x0030 }
enum : uint { SPI_SETPENWINDOWS = 0x0031 }

enum : uint { SPI_GETHIGHCONTRAST = 0x0042 }
enum : uint { SPI_SETHIGHCONTRAST = 0x0043 }
enum : uint { SPI_GETKEYBOARDPREF = 0x0044 }
enum : uint { SPI_SETKEYBOARDPREF = 0x0045 }
enum : uint { SPI_GETSCREENREADER = 0x0046 }
enum : uint { SPI_SETSCREENREADER = 0x0047 }
enum : uint { SPI_GETANIMATION = 0x0048 }
enum : uint { SPI_SETANIMATION = 0x0049 }
enum : uint { SPI_GETFONTSMOOTHING = 0x004A }
enum : uint { SPI_SETFONTSMOOTHING = 0x004B }
enum : uint { SPI_SETDRAGWIDTH = 0x004C }
enum : uint { SPI_SETDRAGHEIGHT = 0x004D }
enum : uint { SPI_SETHANDHELD = 0x004E }
enum : uint { SPI_GETLOWPOWERTIMEOUT = 0x004F }
enum : uint { SPI_GETPOWEROFFTIMEOUT = 0x0050 }
enum : uint { SPI_SETLOWPOWERTIMEOUT = 0x0051 }
enum : uint { SPI_SETPOWEROFFTIMEOUT = 0x0052 }
enum : uint { SPI_GETLOWPOWERACTIVE = 0x0053 }
enum : uint { SPI_GETPOWEROFFACTIVE = 0x0054 }
enum : uint { SPI_SETLOWPOWERACTIVE = 0x0055 }
enum : uint { SPI_SETPOWEROFFACTIVE = 0x0056 }
enum : uint { SPI_SETCURSORS = 0x0057 }
enum : uint { SPI_SETICONS = 0x0058 }
enum : uint { SPI_GETDEFAULTINPUTLANG = 0x0059 }
enum : uint { SPI_SETDEFAULTINPUTLANG = 0x005A }
enum : uint { SPI_SETLANGTOGGLE = 0x005B }
enum : uint { SPI_GETWINDOWSEXTENSION = 0x005C }
enum : uint { SPI_SETMOUSETRAILS = 0x005D }
enum : uint { SPI_GETMOUSETRAILS = 0x005E }
enum : uint { SPI_SETSCREENSAVERRUNNING = 0x0061 }
alias SPI_SETSCREENSAVERRUNNING SPI_SCREENSAVERRUNNING;
// #endif /* WINVER >= 0x0400 */
enum : uint { SPI_GETFILTERKEYS = 0x0032 }
enum : uint { SPI_SETFILTERKEYS = 0x0033 }
enum : uint { SPI_GETTOGGLEKEYS = 0x0034 }
enum : uint { SPI_SETTOGGLEKEYS = 0x0035 }
enum : uint { SPI_GETMOUSEKEYS = 0x0036 }
enum : uint { SPI_SETMOUSEKEYS = 0x0037 }
enum : uint { SPI_GETSHOWSOUNDS = 0x0038 }
enum : uint { SPI_SETSHOWSOUNDS = 0x0039 }
enum : uint { SPI_GETSTICKYKEYS = 0x003A }
enum : uint { SPI_SETSTICKYKEYS = 0x003B }
enum : uint { SPI_GETACCESSTIMEOUT = 0x003C }
enum : uint { SPI_SETACCESSTIMEOUT = 0x003D }
// #if(WINVER >= 0x0400)
enum : uint { SPI_GETSERIALKEYS = 0x003E }
enum : uint { SPI_SETSERIALKEYS = 0x003F }
// #endif /* WINVER >= 0x0400 */
enum : uint { SPI_GETSOUNDSENTRY = 0x0040 }
enum : uint { SPI_SETSOUNDSENTRY = 0x0041 }
// #if(_WIN32_WINNT >= 0x0400)
enum : uint { SPI_GETSNAPTODEFBUTTON = 0x005F }
enum : uint { SPI_SETSNAPTODEFBUTTON = 0x0060 }
// #endif /* _WIN32_WINNT >= 0x0400 */
// #if (_WIN32_WINNT >= 0x0400) || (_WIN32_WINDOWS > 0x0400)
enum : uint { SPI_GETMOUSEHOVERWIDTH = 0x0062 }
enum : uint { SPI_SETMOUSEHOVERWIDTH = 0x0063 }
enum : uint { SPI_GETMOUSEHOVERHEIGHT = 0x0064 }
enum : uint { SPI_SETMOUSEHOVERHEIGHT = 0x0065 }
enum : uint { SPI_GETMOUSEHOVERTIME = 0x0066 }
enum : uint { SPI_SETMOUSEHOVERTIME = 0x0067 }
enum : uint { SPI_GETWHEELSCROLLLINES = 0x0068 }
enum : uint { SPI_SETWHEELSCROLLLINES = 0x0069 }
enum : uint { SPI_GETMENUSHOWDELAY = 0x006A }
enum : uint { SPI_SETMENUSHOWDELAY = 0x006B }

enum : uint { SPI_GETSHOWIMEUI = 0x006E }
enum : uint { SPI_SETSHOWIMEUI = 0x006F }
// #endif

// #if(WINVER >= 0x0500)
enum : uint { SPI_GETMOUSESPEED = 0x0070 }
enum : uint { SPI_SETMOUSESPEED = 0x0071 }
enum : uint { SPI_GETSCREENSAVERRUNNING = 0x0072 }
enum : uint { SPI_GETDESKWALLPAPER = 0x0073 }
// #endif /* WINVER >= 0x0500 */

// #if(WINVER >= 0x0500)
enum : uint { SPI_GETACTIVEWINDOWTRACKING = 0x1000 }
enum : uint { SPI_SETACTIVEWINDOWTRACKING = 0x1001 }
enum : uint { SPI_GETMENUANIMATION = 0x1002 }
enum : uint { SPI_SETMENUANIMATION = 0x1003 }
enum : uint { SPI_GETCOMBOBOXANIMATION = 0x1004 }
enum : uint { SPI_SETCOMBOBOXANIMATION = 0x1005 }
enum : uint { SPI_GETLISTBOXSMOOTHSCROLLING = 0x1006 }
enum : uint { SPI_SETLISTBOXSMOOTHSCROLLING = 0x1007 }
enum : uint { SPI_GETGRADIENTCAPTIONS = 0x1008 }
enum : uint { SPI_SETGRADIENTCAPTIONS = 0x1009 }
enum : uint { SPI_GETKEYBOARDCUES = 0x100A }
enum : uint { SPI_SETKEYBOARDCUES = 0x100B }
alias SPI_GETKEYBOARDCUES SPI_GETMENUUNDERLINES;
alias SPI_SETKEYBOARDCUES SPI_SETMENUUNDERLINES;
enum : uint { SPI_GETACTIVEWNDTRKZORDER = 0x100C }
enum : uint { SPI_SETACTIVEWNDTRKZORDER = 0x100D }
enum : uint { SPI_GETHOTTRACKING = 0x100E }
enum : uint { SPI_SETHOTTRACKING = 0x100F }
enum : uint { SPI_GETMENUFADE = 0x1012 }
enum : uint { SPI_SETMENUFADE = 0x1013 }
enum : uint { SPI_GETSELECTIONFADE = 0x1014 }
enum : uint { SPI_SETSELECTIONFADE = 0x1015 }
enum : uint { SPI_GETTOOLTIPANIMATION = 0x1016 }
enum : uint { SPI_SETTOOLTIPANIMATION = 0x1017 }
enum : uint { SPI_GETTOOLTIPFADE = 0x1018 }
enum : uint { SPI_SETTOOLTIPFADE = 0x1019 }
enum : uint { SPI_GETCURSORSHADOW = 0x101A }
enum : uint { SPI_SETCURSORSHADOW = 0x101B }
// #if(_WIN32_WINNT >= 0x0501)
enum : uint { SPI_GETMOUSESONAR = 0x101C }
enum : uint { SPI_SETMOUSESONAR = 0x101D }
enum : uint { SPI_GETMOUSECLICKLOCK = 0x101E }
enum : uint { SPI_SETMOUSECLICKLOCK = 0x101F }
enum : uint { SPI_GETMOUSEVANISH = 0x1020 }
enum : uint { SPI_SETMOUSEVANISH = 0x1021 }
enum : uint { SPI_GETFLATMENU = 0x1022 }
enum : uint { SPI_SETFLATMENU = 0x1023 }
enum : uint { SPI_GETDROPSHADOW = 0x1024 }
enum : uint { SPI_SETDROPSHADOW = 0x1025 }
// #endif /* _WIN32_WINNT >= 0x0501 */

enum : uint { SPI_GETUIEFFECTS = 0x103E }
enum : uint { SPI_SETUIEFFECTS = 0x103F }

enum : uint { SPI_GETFOREGROUNDLOCKTIMEOUT = 0x2000 }
enum : uint { SPI_SETFOREGROUNDLOCKTIMEOUT = 0x2001 }
enum : uint { SPI_GETACTIVEWNDTRKTIMEOUT = 0x2002 }
enum : uint { SPI_SETACTIVEWNDTRKTIMEOUT = 0x2003 }
enum : uint { SPI_GETFOREGROUNDFLASHCOUNT = 0x2004 }
enum : uint { SPI_SETFOREGROUNDFLASHCOUNT = 0x2005 }
enum : uint { SPI_GETCARETWIDTH = 0x2006 }
enum : uint { SPI_SETCARETWIDTH = 0x2007 }

// #if(_WIN32_WINNT >= 0x0501)
enum : uint { SPI_GETMOUSECLICKLOCKTIME = 0x2008 }
enum : uint { SPI_SETMOUSECLICKLOCKTIME = 0x2009 }
enum : uint { SPI_GETFONTSMOOTHINGTYPE = 0x200A }
enum : uint { SPI_SETFONTSMOOTHINGTYPE = 0x200B }

enum : uint { FE_FONTSMOOTHINGSTANDARD = 0x0001 }
enum : uint { FE_FONTSMOOTHINGCLEARTYPE = 0x0002 }
enum : uint { FE_FONTSMOOTHINGDOCKING = 0x8000 }

enum : uint { SPI_GETFONTSMOOTHINGCONTRAST = 0x200C }
enum : uint { SPI_SETFONTSMOOTHINGCONTRAST = 0x200D }

enum : uint { SPI_GETFOCUSBORDERWIDTH = 0x200E }
enum : uint { SPI_SETFOCUSBORDERWIDTH = 0x200F }
enum : uint { SPI_GETFOCUSBORDERHEIGHT = 0x2010 }
enum : uint { SPI_SETFOCUSBORDERHEIGHT = 0x2011 }
// #endif /* _WIN32_WINNT >= 0x0501 */

// #endif /* WINVER >= 0x0500 */

enum : uint { SPIF_UPDATEINIFILE = 0x0001 }
enum : uint { SPIF_SENDWININICHANGE = 0x0002 }
alias SPIF_SENDWININICHANGE SPIF_SENDCHANGE;

enum { METRICS_USEDEFAULT = -1 }
// #ifdef _WINGDI_
// #ifndef NOGDI
// ...
// #ifdef UNICODE
// ...
// #else
// ...
// #endif // UNICODE
// #endif /* NOGDI */
// #endif /* _WINGDI_ */

enum : uint { ARW_BOTTOMLEFT = 0x0000 }
enum : uint { ARW_BOTTOMRIGHT = 0x0001 }
enum : uint { ARW_TOPLEFT = 0x0002 }
enum : uint { ARW_TOPRIGHT = 0x0003 }
enum : uint { ARW_STARTMASK = 0x0003 }
enum : uint { ARW_STARTRIGHT = 0x0001 }
enum : uint { ARW_STARTTOP = 0x0002 }

enum : uint { ARW_LEFT = 0x0000 }
enum : uint { ARW_RIGHT = 0x0000 }
enum : uint { ARW_UP = 0x0004 }
enum : uint { ARW_DOWN = 0x0004 }
enum : uint { ARW_HIDE = 0x0008 }

struct tagMINIMIZEDMETRICS {
  UINT cbSize;
  int iWidth;
  int iHorzGap;
  int iVertGap;
  int iArrange;
}
alias tagMINIMIZEDMETRICS MINIMIZEDMETRICS;
alias tagMINIMIZEDMETRICS* PMINIMIZEDMETRICS;
alias tagMINIMIZEDMETRICS* LPMINIMIZEDMETRICS;

// #ifdef _WINGDI_
// #ifndef NOGDI
// ...
// #ifdef UNICODE
// ...
// #else
// ...
// #endif // UNICODE
// #endif /* NOGDI */
// #endif /* _WINGDI_ */

struct tagANIMATIONINFO {
  UINT cbSize;
  int iMinAnimate;
}
alias tagANIMATIONINFO ANIMATIONINFO;
alias tagANIMATIONINFO* LPANIMATIONINFO;

struct tagSERIALKEYSA {
  UINT cbSize;
  DWORD dwFlags;
  LPSTR lpszActivePort;
  LPSTR lpszPort;
  UINT iBaudRate;
  UINT iPortState;
  UINT iActive;
}
alias tagSERIALKEYSA SERIALKEYSA;
alias tagSERIALKEYSA* LPSERIALKEYSA;

struct tagSERIALKEYSW {
  UINT cbSize;
  DWORD dwFlags;
  LPWSTR lpszActivePort;
  LPWSTR lpszPort;
  UINT iBaudRate;
  UINT iPortState;
  UINT iActive;
}
alias tagSERIALKEYSW SERIALKEYSW;
alias tagSERIALKEYSW* LPSERIALKEYSW;

// #ifdef UNICODE
alias SERIALKEYSW SERIALKEYS;
alias LPSERIALKEYSW LPSERIALKEYS;
// #else
// ...
// #endif // UNICODE

enum : uint { SERKF_SERIALKEYSON = 0x00000001 }
enum : uint { SERKF_AVAILABLE = 0x00000002 }
enum : uint { SERKF_INDICATOR = 0x00000004 }

struct tagHIGHCONTRASTA {
  UINT cbSize;
  DWORD dwFlags;
  LPSTR lpszDefaultScheme;
}
alias tagHIGHCONTRASTA HIGHCONTRASTA;
alias tagHIGHCONTRASTA* LPHIGHCONTRASTA;

struct tagHIGHCONTRASTW {
  UINT cbSize;
  DWORD dwFlags;
  LPWSTR lpszDefaultScheme;
}
alias tagHIGHCONTRASTW HIGHCONTRASTW;
alias tagHIGHCONTRASTW* LPHIGHCONTRASTW;

// #ifdef UNICODE
alias HIGHCONTRASTW HIGHCONTRAST;
alias LPHIGHCONTRASTW LPHIGHCONTRAST;
// #else
// ...
// #endif // UNICODE

enum : uint { HCF_HIGHCONTRASTON = 0x00000001 }
enum : uint { HCF_AVAILABLE = 0x00000002 }
enum : uint { HCF_HOTKEYACTIVE = 0x00000004 }
enum : uint { HCF_CONFIRMHOTKEY = 0x00000008 }
enum : uint { HCF_HOTKEYSOUND = 0x00000010 }
enum : uint { HCF_INDICATOR = 0x00000020 }
enum : uint { HCF_HOTKEYAVAILABLE = 0x00000040 }

enum : uint { CDS_UPDATEREGISTRY = 0x00000001 }
enum : uint { CDS_TEST = 0x00000002 }
enum : uint { CDS_FULLSCREEN = 0x00000004 }
enum : uint { CDS_GLOBAL = 0x00000008 }
enum : uint { CDS_SET_PRIMARY = 0x00000010 }
enum : uint { CDS_VIDEOPARAMETERS = 0x00000020 }
enum : uint { CDS_RESET = 0x40000000 }
enum : uint { CDS_NORESET = 0x10000000 }

// #include <tvout.h>

enum : uint { DISP_CHANGE_SUCCESSFUL = 0 }
enum : uint { DISP_CHANGE_RESTART = 1 }
enum { DISP_CHANGE_FAILED = -1 }
enum { DISP_CHANGE_BADMODE = -2 }
enum { DISP_CHANGE_NOTUPDATED = -3 }
enum { DISP_CHANGE_BADFLAGS = -4 }
enum { DISP_CHANGE_BADPARAM = -5 }
// #if(_WIN32_WINNT >= 0x0501)
enum { DISP_CHANGE_BADDUALVIEW = -6 }
// #endif /* _WIN32_WINNT >= 0x0501 */

// #ifdef _WINGDI_
// #ifndef NOGDI

// ...
// #ifdef UNICODE
// #...
// #else
// #...
// #endif // !UNICODE

// ...
// #ifdef UNICODE
// #...
// #else
// #...
// #endif // !UNICODE

// #...
// #...

// ...
// #ifdef UNICODE
// #...
// #else
// #...
// #endif // !UNICODE

// #if(WINVER >= 0x0500)

// ...
// #ifdef UNICODE
// #...
// #else
// #...
// #endif // !UNICODE

// #...

// ...
// #ifdef UNICODE
// #...
// #else
// #...
// #endif // !UNICODE
// #endif /* WINVER >= 0x0500 */

// #endif /* NOGDI */
// #endif /* _WINGDI_ */

extern(Windows) export BOOL SystemParametersInfoA(
  UINT uiAction,
  UINT uiParam,
  PVOID pvParam,
  UINT fWinIni);
extern(Windows) export BOOL SystemParametersInfoW(
  UINT uiAction,
  UINT uiParam,
  PVOID pvParam,
  UINT fWinIni);
// #ifdef UNICODE
alias SystemParametersInfoW SystemParametersInfo;
// #else
// #...
// #endif // !UNICODE

// #endif  /* !NOSYSPARAMSINFO  */

struct tagFILTERKEYS {
  UINT cbSize;
  DWORD dwFlags;
  DWORD iWaitMSec;
  DWORD iDelayMSec;
  DWORD iRepeatMSec;
  DWORD iBounceMSec;
}
alias tagFILTERKEYS FILTERKEYS;
alias tagFILTERKEYS* LPFILTERKEYS;

enum : uint { FKF_FILTERKEYSON = 0x00000001 }
enum : uint { FKF_AVAILABLE = 0x00000002 }
enum : uint { FKF_HOTKEYACTIVE = 0x00000004 }
enum : uint { FKF_CONFIRMHOTKEY = 0x00000008 }
enum : uint { FKF_HOTKEYSOUND = 0x00000010 }
enum : uint { FKF_INDICATOR = 0x00000020 }
enum : uint { FKF_CLICKON = 0x00000040 }

struct tagSTICKYKEYS {
  UINT cbSize;
  DWORD dwFlags;
}
alias tagSTICKYKEYS STICKYKEYS;
alias tagSTICKYKEYS* LPSTICKYKEYS;

enum : uint { SKF_STICKYKEYSON = 0x00000001 }
enum : uint { SKF_AVAILABLE = 0x00000002 }
enum : uint { SKF_HOTKEYACTIVE = 0x00000004 }
enum : uint { SKF_CONFIRMHOTKEY = 0x00000008 }
enum : uint { SKF_HOTKEYSOUND = 0x00000010 }
enum : uint { SKF_INDICATOR = 0x00000020 }
enum : uint { SKF_AUDIBLEFEEDBACK = 0x00000040 }
enum : uint { SKF_TRISTATE = 0x00000080 }
enum : uint { SKF_TWOKEYSOFF = 0x00000100 }
// #if(_WIN32_WINNT >= 0x0500)
enum : uint { SKF_LALTLATCHED = 0x10000000 }
enum : uint { SKF_LCTLLATCHED = 0x04000000 }
enum : uint { SKF_LSHIFTLATCHED = 0x01000000 }
enum : uint { SKF_RALTLATCHED = 0x20000000 }
enum : uint { SKF_RCTLLATCHED = 0x08000000 }
enum : uint { SKF_RSHIFTLATCHED = 0x02000000 }
enum : uint { SKF_LWINLATCHED = 0x40000000 }
enum : uint { SKF_RWINLATCHED = 0x80000000 }
enum : uint { SKF_LALTLOCKED = 0x00100000 }
enum : uint { SKF_LCTLLOCKED = 0x00040000 }
enum : uint { SKF_LSHIFTLOCKED = 0x00010000 }
enum : uint { SKF_RALTLOCKED = 0x00200000 }
enum : uint { SKF_RCTLLOCKED = 0x00080000 }
enum : uint { SKF_RSHIFTLOCKED = 0x00020000 }
enum : uint { SKF_LWINLOCKED = 0x00400000 }
enum : uint { SKF_RWINLOCKED = 0x00800000 }
// #endif /* _WIN32_WINNT >= 0x0500 */

struct tagMOUSEKEYS {
  UINT cbSize;
  DWORD dwFlags;
  DWORD iMaxSpeed;
  DWORD iTimeToMaxSpeed;
  DWORD iCtrlSpeed;
  DWORD dwReserved1;
  DWORD dwReserved2;
}
alias tagMOUSEKEYS MOUSEKEYS;
alias tagMOUSEKEYS* LPMOUSEKEYS;

enum : uint { MKF_MOUSEKEYSON = 0x00000001 }
enum : uint { MKF_AVAILABLE = 0x00000002 }
enum : uint { MKF_HOTKEYACTIVE = 0x00000004 }
enum : uint { MKF_CONFIRMHOTKEY = 0x00000008 }
enum : uint { MKF_HOTKEYSOUND = 0x00000010 }
enum : uint { MKF_INDICATOR = 0x00000020 }
enum : uint { MKF_MODIFIERS = 0x00000040 }
enum : uint { MKF_REPLACENUMBERS = 0x00000080 }
// #if(_WIN32_WINNT >= 0x0500)
enum : uint { MKF_LEFTBUTTONSEL = 0x10000000 }
enum : uint { MKF_RIGHTBUTTONSEL = 0x20000000 }
enum : uint { MKF_LEFTBUTTONDOWN = 0x01000000 }
enum : uint { MKF_RIGHTBUTTONDOWN = 0x02000000 }
enum : uint { MKF_MOUSEMODE = 0x80000000 }
// #endif /* _WIN32_WINNT >= 0x0500 */

struct tagACCESSTIMEOUT {
  UINT cbSize;
  DWORD dwFlags;
  DWORD iTimeOutMSec;
}
alias tagACCESSTIMEOUT ACCESSTIMEOUT;
alias tagACCESSTIMEOUT* LPACCESSTIMEOUT;

enum : uint { ATF_TIMEOUTON = 0x00000001 }
enum : uint { ATF_ONOFFFEEDBACK = 0x00000002 }

enum : uint { SSGF_NONE = 0 }
enum : uint { SSGF_DISPLAY = 3 }

enum : uint { SSTF_NONE = 0 }
enum : uint { SSTF_CHARS = 1 }
enum : uint { SSTF_BORDER = 2 }
enum : uint { SSTF_DISPLAY = 3 }

enum : uint { SSWF_NONE = 0 }
enum : uint { SSWF_TITLE = 1 }
enum : uint { SSWF_WINDOW = 2 }
enum : uint { SSWF_DISPLAY = 3 }
enum : uint { SSWF_CUSTOM = 4 }

struct tagSOUNDSENTRYA {
  UINT cbSize;
  DWORD dwFlags;
  DWORD iFSTextEffect;
  DWORD iFSTextEffectMSec;
  DWORD iFSTextEffectColorBits;
  DWORD iFSGrafEffect;
  DWORD iFSGrafEffectMSec;
  DWORD iFSGrafEffectColor;
  DWORD iWindowsEffect;
  DWORD iWindowsEffectMSec;
  LPSTR lpszWindowsEffectDLL;
  DWORD iWindowsEffectOrdinal;
}
alias tagSOUNDSENTRYA SOUNDSENTRYA;
alias tagSOUNDSENTRYA* LPSOUNDSENTRYA;

struct tagSOUNDSENTRYW {
  UINT cbSize;
  DWORD dwFlags;
  DWORD iFSTextEffect;
  DWORD iFSTextEffectMSec;
  DWORD iFSTextEffectColorBits;
  DWORD iFSGrafEffect;
  DWORD iFSGrafEffectMSec;
  DWORD iFSGrafEffectColor;
  DWORD iWindowsEffect;
  DWORD iWindowsEffectMSec;
  LPWSTR lpszWindowsEffectDLL;
  DWORD iWindowsEffectOrdinal;
}
alias tagSOUNDSENTRYW SOUNDSENTRYW;
alias tagSOUNDSENTRYW* LPSOUNDSENTRYW;

// #ifdef UNICODE
alias SOUNDSENTRYW SOUNDSENTRY;
alias LPSOUNDSENTRYW LPSOUNDSENTRY;
// #else
// ...
// #endif // UNICODE

enum : uint { SSF_SOUNDSENTRYON = 0x00000001 }
enum : uint { SSF_AVAILABLE = 0x00000002 }
enum : uint { SSF_INDICATOR = 0x00000004 }

struct tagTOGGLEKEYS {
  UINT cbSize;
  DWORD dwFlags;
}
alias tagTOGGLEKEYS TOGGLEKEYS;
alias tagTOGGLEKEYS* LPTOGGLEKEYS;

enum : uint { TKF_TOGGLEKEYSON = 0x00000001 }
enum : uint { TKF_AVAILABLE = 0x00000002 }
enum : uint { TKF_HOTKEYACTIVE = 0x00000004 }
enum : uint { TKF_CONFIRMHOTKEY = 0x00000008 }
enum : uint { TKF_HOTKEYSOUND = 0x00000010 }
enum : uint { TKF_INDICATOR = 0x00000020 }

extern(Windows) export VOID SetDebugErrorLevel(
  DWORD dwLevel);

enum : uint { SLE_ERROR = 0x00000001 }
enum : uint { SLE_MINORERROR = 0x00000002 }
enum : uint { SLE_WARNING = 0x00000003 }

extern(Windows) export VOID SetLastErrorEx(
  DWORD dwErrCode,
  DWORD dwType);

// #if(WINVER >= 0x0500)

enum : uint { MONITOR_DEFAULTTONULL = 0x00000000 }
enum : uint { MONITOR_DEFAULTTOPRIMARY = 0x00000001 }
enum : uint { MONITOR_DEFAULTTONEAREST = 0x00000002 }

extern(Windows) export HMONITOR MonitorFromPoint(
  POINT pt,
  DWORD dwFlags);

extern(Windows) export HMONITOR MonitorFromRect(
  LPCRECT lprc,
  DWORD dwFlags);

extern(Windows) export HMONITOR MonitorFromWindow(HWND hwnd, DWORD dwFlags);

enum : uint { MONITORINFOF_PRIMARY = 0x00000001 }

// #ifndef CCHDEVICENAME
// #...
// #endif

struct tagMONITORINFO {
  DWORD cbSize;
  RECT rcMonitor;
  RECT rcWork;
  DWORD dwFlags;
}
alias tagMONITORINFO MONITORINFO;
alias tagMONITORINFO* LPMONITORINFO;

// #ifdef __cplusplus
struct tagMONITORINFOEXA {
  DWORD   cbSize;
  RECT    rcMonitor;
  RECT    rcWork;
  DWORD   dwFlags;
  CHAR szDevice[CCHDEVICENAME];
}
alias tagMONITORINFOEXA MONITORINFOEXA;
alias tagMONITORINFOEXA* LPMONITORINFOEXA;

struct tagMONITORINFOEXW {
  DWORD   cbSize;
  RECT    rcMonitor;
  RECT    rcWork;
  DWORD   dwFlags;
  WCHAR szDevice[CCHDEVICENAME];
}
alias tagMONITORINFOEXW MONITORINFOEXW;
alias tagMONITORINFOEXW* LPMONITORINFOEXW;

// #ifdef UNICODE
alias MONITORINFOEXW MONITORINFOEX;
alias LPMONITORINFOEXW LPMONITORINFOEX;
// #else
// ...
// #endif // UNICODE
// #else // ndef __cplusplus
// ...
// #ifdef UNICODE
// ...
// #else
// ...
// #endif // UNICODE
// #endif

extern(Windows) export BOOL GetMonitorInfoA(HMONITOR hMonitor, LPMONITORINFO lpmi);
extern(Windows) export BOOL GetMonitorInfoW(HMONITOR hMonitor, LPMONITORINFO lpmi);
// #ifdef UNICODE
alias GetMonitorInfoW GetMonitorInfo;
// #else
// #...
// #endif // !UNICODE

extern(Windows) alias BOOL function(HMONITOR, HDC, LPRECT, LPARAM) MONITORENUMPROC;

extern(Windows) export BOOL EnumDisplayMonitors(
  HDC hdc,
  LPCRECT lprcClip,
  MONITORENUMPROC lpfnEnum,
  LPARAM dwData);

// #ifndef NOWINABLE

extern(Windows) export VOID NotifyWinEvent(
  DWORD event,
  HWND hwnd,
  LONG idObject,
  LONG idChild);

extern(Windows) alias VOID function( HWINEVENTHOOK hWinEventHook, DWORD event, HWND hwnd, LONG idObject, LONG idChild, DWORD idEventThread, DWORD dwmsEventTime) WINEVENTPROC;

extern(Windows) export HWINEVENTHOOK SetWinEventHook(
  DWORD eventMin,
  DWORD eventMax,
  HMODULE hmodWinEventProc,
  WINEVENTPROC pfnWinEventProc,
  DWORD idProcess,
  DWORD idThread,
  DWORD dwFlags);

// #if(_WIN32_WINNT >= 0x0501)
extern(Windows) export BOOL IsWinEventHookInstalled(
  DWORD event);
// #endif /* _WIN32_WINNT >= 0x0501 */

enum : uint { WINEVENT_OUTOFCONTEXT = 0x0000 }
enum : uint { WINEVENT_SKIPOWNTHREAD = 0x0001 }
enum : uint { WINEVENT_SKIPOWNPROCESS = 0x0002 }
enum : uint { WINEVENT_INCONTEXT = 0x0004 }

extern(Windows) export BOOL UnhookWinEvent(
  HWINEVENTHOOK hWinEventHook);

enum : uint { CHILDID_SELF = 0 }
enum : uint { INDEXID_OBJECT = 0 }
enum : uint { INDEXID_CONTAINER = 0 }

enum : uint { OBJID_WINDOW = cast(LONG)0x00000000 }
enum : uint { OBJID_SYSMENU = cast(LONG)0xFFFFFFFF }
enum : uint { OBJID_TITLEBAR = cast(LONG)0xFFFFFFFE }
enum : uint { OBJID_MENU = cast(LONG)0xFFFFFFFD }
enum : uint { OBJID_CLIENT = cast(LONG)0xFFFFFFFC }
enum : uint { OBJID_VSCROLL = cast(LONG)0xFFFFFFFB }
enum : uint { OBJID_HSCROLL = cast(LONG)0xFFFFFFFA }
enum : uint { OBJID_SIZEGRIP = cast(LONG)0xFFFFFFF9 }
enum : uint { OBJID_CARET = cast(LONG)0xFFFFFFF8 }
enum : uint { OBJID_CURSOR = cast(LONG)0xFFFFFFF7 }
enum : uint { OBJID_ALERT = cast(LONG)0xFFFFFFF6 }
enum : uint { OBJID_SOUND = cast(LONG)0xFFFFFFF5 }
enum : uint { OBJID_QUERYCLASSNAMEIDX = cast(LONG)0xFFFFFFF4 }
enum : uint { OBJID_NATIVEOM = cast(LONG)0xFFFFFFF0 }

enum : uint { EVENT_MIN = 0x00000001 }
enum : uint { EVENT_MAX = 0x7FFFFFFF }

enum : uint { EVENT_SYSTEM_SOUND = 0x0001 }

enum : uint { EVENT_SYSTEM_ALERT = 0x0002 }

enum : uint { EVENT_SYSTEM_FOREGROUND = 0x0003 }

enum : uint { EVENT_SYSTEM_MENUSTART = 0x0004 }
enum : uint { EVENT_SYSTEM_MENUEND = 0x0005 }

enum : uint { EVENT_SYSTEM_MENUPOPUPSTART = 0x0006 }
enum : uint { EVENT_SYSTEM_MENUPOPUPEND = 0x0007 }

enum : uint { EVENT_SYSTEM_CAPTURESTART = 0x0008 }
enum : uint { EVENT_SYSTEM_CAPTUREEND = 0x0009 }

enum : uint { EVENT_SYSTEM_MOVESIZESTART = 0x000A }
enum : uint { EVENT_SYSTEM_MOVESIZEEND = 0x000B }

enum : uint { EVENT_SYSTEM_CONTEXTHELPSTART = 0x000C }
enum : uint { EVENT_SYSTEM_CONTEXTHELPEND = 0x000D }

enum : uint { EVENT_SYSTEM_DRAGDROPSTART = 0x000E }
enum : uint { EVENT_SYSTEM_DRAGDROPEND = 0x000F }

enum : uint { EVENT_SYSTEM_DIALOGSTART = 0x0010 }
enum : uint { EVENT_SYSTEM_DIALOGEND = 0x0011 }

enum : uint { EVENT_SYSTEM_SCROLLINGSTART = 0x0012 }
enum : uint { EVENT_SYSTEM_SCROLLINGEND = 0x0013 }

enum : uint { EVENT_SYSTEM_SWITCHSTART = 0x0014 }
enum : uint { EVENT_SYSTEM_SWITCHEND = 0x0015 }

enum : uint { EVENT_SYSTEM_MINIMIZESTART = 0x0016 }
enum : uint { EVENT_SYSTEM_MINIMIZEEND = 0x0017 }

// #if(_WIN32_WINNT >= 0x0501)
enum : uint { EVENT_CONSOLE_CARET = 0x4001 }
enum : uint { EVENT_CONSOLE_UPDATE_REGION = 0x4002 }
enum : uint { EVENT_CONSOLE_UPDATE_SIMPLE = 0x4003 }
enum : uint { EVENT_CONSOLE_UPDATE_SCROLL = 0x4004 }
enum : uint { EVENT_CONSOLE_LAYOUT = 0x4005 }
enum : uint { EVENT_CONSOLE_START_APPLICATION = 0x4006 }
enum : uint { EVENT_CONSOLE_END_APPLICATION = 0x4007 }

enum : uint { CONSOLE_APPLICATION_16BIT = 0x0001 }

enum : uint { CONSOLE_CARET_SELECTION = 0x0001 }
enum : uint { CONSOLE_CARET_VISIBLE = 0x0002 }
// #endif /* _WIN32_WINNT >= 0x0501 */

enum : uint { EVENT_OBJECT_CREATE = 0x8000 }
enum : uint { EVENT_OBJECT_DESTROY = 0x8001 }
enum : uint { EVENT_OBJECT_SHOW = 0x8002 }
enum : uint { EVENT_OBJECT_HIDE = 0x8003 }
enum : uint { EVENT_OBJECT_REORDER = 0x8004 }

enum : uint { EVENT_OBJECT_FOCUS = 0x8005 }
enum : uint { EVENT_OBJECT_SELECTION = 0x8006 }
enum : uint { EVENT_OBJECT_SELECTIONADD = 0x8007 }
enum : uint { EVENT_OBJECT_SELECTIONREMOVE = 0x8008 }
enum : uint { EVENT_OBJECT_SELECTIONWITHIN = 0x8009 }

enum : uint { EVENT_OBJECT_STATECHANGE = 0x800A }

enum : uint { EVENT_OBJECT_LOCATIONCHANGE = 0x800B }

enum : uint { EVENT_OBJECT_NAMECHANGE = 0x800C }
enum : uint { EVENT_OBJECT_DESCRIPTIONCHANGE = 0x800D }
enum : uint { EVENT_OBJECT_VALUECHANGE = 0x800E }
enum : uint { EVENT_OBJECT_PARENTCHANGE = 0x800F }
enum : uint { EVENT_OBJECT_HELPCHANGE = 0x8010 }
enum : uint { EVENT_OBJECT_DEFACTIONCHANGE = 0x8011 }
enum : uint { EVENT_OBJECT_ACCELERATORCHANGE = 0x8012 }

enum : uint { SOUND_SYSTEM_STARTUP = 1 }
enum : uint { SOUND_SYSTEM_SHUTDOWN = 2 }
enum : uint { SOUND_SYSTEM_BEEP = 3 }
enum : uint { SOUND_SYSTEM_ERROR = 4 }
enum : uint { SOUND_SYSTEM_QUESTION = 5 }
enum : uint { SOUND_SYSTEM_WARNING = 6 }
enum : uint { SOUND_SYSTEM_INFORMATION = 7 }
enum : uint { SOUND_SYSTEM_MAXIMIZE = 8 }
enum : uint { SOUND_SYSTEM_MINIMIZE = 9 }
enum : uint { SOUND_SYSTEM_RESTOREUP = 10 }
enum : uint { SOUND_SYSTEM_RESTOREDOWN = 11 }
enum : uint { SOUND_SYSTEM_APPSTART = 12 }
enum : uint { SOUND_SYSTEM_FAULT = 13 }
enum : uint { SOUND_SYSTEM_APPEND = 14 }
enum : uint { SOUND_SYSTEM_MENUCOMMAND = 15 }
enum : uint { SOUND_SYSTEM_MENUPOPUP = 16 }
enum : uint { CSOUND_SYSTEM = 16 }

enum : uint { ALERT_SYSTEM_INFORMATIONAL = 1 }
enum : uint { ALERT_SYSTEM_WARNING = 2 }
enum : uint { ALERT_SYSTEM_ERROR = 3 }
enum : uint { ALERT_SYSTEM_QUERY = 4 }
enum : uint { ALERT_SYSTEM_CRITICAL = 5 }
enum : uint { CALERT_SYSTEM = 6 }

struct tagGUITHREADINFO {
  DWORD cbSize;
  DWORD flags;
  HWND hwndActive;
  HWND hwndFocus;
  HWND hwndCapture;
  HWND hwndMenuOwner;
  HWND hwndMoveSize;
  HWND hwndCaret;
  RECT rcCaret;
}
alias tagGUITHREADINFO GUITHREADINFO;
alias tagGUITHREADINFO* PGUITHREADINFO;
alias tagGUITHREADINFO* LPGUITHREADINFO;

enum : uint { GUI_CARETBLINKING = 0x00000001 }
enum : uint { GUI_INMOVESIZE = 0x00000002 }
enum : uint { GUI_INMENUMODE = 0x00000004 }
enum : uint { GUI_SYSTEMMENUMODE = 0x00000008 }
enum : uint { GUI_POPUPMENUMODE = 0x00000010 }
// #if(_WIN32_WINNT >= 0x0501)
enum : uint { GUI_16BITTASK = 0x00000020 }
// #endif /* _WIN32_WINNT >= 0x0501 */

extern(Windows) export BOOL GetGUIThreadInfo(
  DWORD idThread,
  PGUITHREADINFO pgui);

extern(Windows) export UINT GetWindowModuleFileNameA(
  HWND hwnd,
  LPSTR pszFileName,
  UINT cchFileNameMax);
extern(Windows) export UINT GetWindowModuleFileNameW(
  HWND hwnd,
  LPWSTR pszFileName,
  UINT cchFileNameMax);
// #ifdef UNICODE
alias GetWindowModuleFileNameW GetWindowModuleFileName;
// #else
// #...
// #endif // !UNICODE

// #ifndef NO_STATE_FLAGS
enum : uint { STATE_SYSTEM_UNAVAILABLE = 0x00000001 }
enum : uint { STATE_SYSTEM_SELECTED = 0x00000002 }
enum : uint { STATE_SYSTEM_FOCUSED = 0x00000004 }
enum : uint { STATE_SYSTEM_PRESSED = 0x00000008 }
enum : uint { STATE_SYSTEM_CHECKED = 0x00000010 }
enum : uint { STATE_SYSTEM_MIXED = 0x00000020 }
alias STATE_SYSTEM_MIXED STATE_SYSTEM_INDETERMINATE;
enum : uint { STATE_SYSTEM_READONLY = 0x00000040 }
enum : uint { STATE_SYSTEM_HOTTRACKED = 0x00000080 }
enum : uint { STATE_SYSTEM_DEFAULT = 0x00000100 }
enum : uint { STATE_SYSTEM_EXPANDED = 0x00000200 }
enum : uint { STATE_SYSTEM_COLLAPSED = 0x00000400 }
enum : uint { STATE_SYSTEM_BUSY = 0x00000800 }
enum : uint { STATE_SYSTEM_FLOATING = 0x00001000 }
enum : uint { STATE_SYSTEM_MARQUEED = 0x00002000 }
enum : uint { STATE_SYSTEM_ANIMATED = 0x00004000 }
enum : uint { STATE_SYSTEM_INVISIBLE = 0x00008000 }
enum : uint { STATE_SYSTEM_OFFSCREEN = 0x00010000 }
enum : uint { STATE_SYSTEM_SIZEABLE = 0x00020000 }
enum : uint { STATE_SYSTEM_MOVEABLE = 0x00040000 }
enum : uint { STATE_SYSTEM_SELFVOICING = 0x00080000 }
enum : uint { STATE_SYSTEM_FOCUSABLE = 0x00100000 }
enum : uint { STATE_SYSTEM_SELECTABLE = 0x00200000 }
enum : uint { STATE_SYSTEM_LINKED = 0x00400000 }
enum : uint { STATE_SYSTEM_TRAVERSED = 0x00800000 }
enum : uint { STATE_SYSTEM_MULTISELECTABLE = 0x01000000 }
enum : uint { STATE_SYSTEM_EXTSELECTABLE = 0x02000000 }
enum : uint { STATE_SYSTEM_ALERT_LOW = 0x04000000 }
enum : uint { STATE_SYSTEM_ALERT_MEDIUM = 0x08000000 }
enum : uint { STATE_SYSTEM_ALERT_HIGH = 0x10000000 }
enum : uint { STATE_SYSTEM_PROTECTED = 0x20000000 }
enum : uint { STATE_SYSTEM_VALID = 0x3FFFFFFF }
// #endif

enum : uint { CCHILDREN_TITLEBAR = 5 }
enum : uint { CCHILDREN_SCROLLBAR = 5 }

struct tagCURSORINFO {
  DWORD cbSize;
  DWORD flags;
  HCURSOR hCursor;
  POINT ptScreenPos;
}
alias tagCURSORINFO CURSORINFO;
alias tagCURSORINFO* PCURSORINFO;
alias tagCURSORINFO* LPCURSORINFO;

enum : uint { CURSOR_SHOWING = 0x00000001 }

extern(Windows) export BOOL GetCursorInfo(
  PCURSORINFO pci
);

struct tagWINDOWINFO {
  DWORD cbSize;
  RECT rcWindow;
  RECT rcClient;
  DWORD dwStyle;
  DWORD dwExStyle;
  DWORD dwWindowStatus;
  UINT cxWindowBorders;
  UINT cyWindowBorders;
  ATOM atomWindowType;
  WORD wCreatorVersion;
}
alias tagWINDOWINFO WINDOWINFO;
alias tagWINDOWINFO* PWINDOWINFO;
alias tagWINDOWINFO* LPWINDOWINFO;

enum : uint { WS_ACTIVECAPTION = 0x0001 }

extern(Windows) export BOOL GetWindowInfo(
  HWND hwnd,
  PWINDOWINFO pwi
);

struct tagTITLEBARINFO {
  DWORD cbSize;
  RECT rcTitleBar;
  DWORD rgstate[CCHILDREN_TITLEBAR+1];
}
alias tagTITLEBARINFO TITLEBARINFO;
alias tagTITLEBARINFO* PTITLEBARINFO;
alias tagTITLEBARINFO* LPTITLEBARINFO;

extern(Windows) export BOOL GetTitleBarInfo(
  HWND hwnd,
  PTITLEBARINFO pti
);

struct tagMENUBARINFO {
  DWORD cbSize;
  RECT rcBar;
  HMENU hMenu;
  HWND hwndMenu;
// BOOL  fBarFocused:1;
// BOOL  fFocused:1;
}
alias tagMENUBARINFO MENUBARINFO;
alias tagMENUBARINFO* PMENUBARINFO;
alias tagMENUBARINFO* LPMENUBARINFO;

extern(Windows) export BOOL GetMenuBarInfo(
  HWND hwnd,
  LONG idObject,
  LONG idItem,
  PMENUBARINFO pmbi
);

struct tagSCROLLBARINFO {
  DWORD cbSize;
  RECT rcScrollBar;
  int dxyLineButton;
  int xyThumbTop;
  int xyThumbBottom;
  int reserved;
  DWORD rgstate[CCHILDREN_SCROLLBAR+1];
}
alias tagSCROLLBARINFO SCROLLBARINFO;
alias tagSCROLLBARINFO* PSCROLLBARINFO;
alias tagSCROLLBARINFO* LPSCROLLBARINFO;

extern(Windows) export BOOL GetScrollBarInfo(
  HWND hwnd,
  LONG idObject,
  PSCROLLBARINFO psbi
);

struct tagCOMBOBOXINFO {
  DWORD cbSize;
  RECT rcItem;
  RECT rcButton;
  DWORD stateButton;
  HWND hwndCombo;
  HWND hwndItem;
  HWND hwndList;
}
alias tagCOMBOBOXINFO COMBOBOXINFO;
alias tagCOMBOBOXINFO* PCOMBOBOXINFO;
alias tagCOMBOBOXINFO* LPCOMBOBOXINFO;

extern(Windows) export BOOL GetComboBoxInfo(
  HWND hwndCombo,
  PCOMBOBOXINFO pcbi
);

enum : uint { GA_PARENT = 1 }
enum : uint { GA_ROOT = 2 }
enum : uint { GA_ROOTOWNER = 3 }

extern(Windows) export HWND GetAncestor(
  HWND hwnd,
  UINT gaFlags
);

extern(Windows) export HWND RealChildWindowFromPoint(
  HWND hwndParent,
  POINT ptParentClientCoords
);

extern(Windows) export UINT RealGetWindowClassA(
  HWND hwnd,
  LPSTR pszType,
  UINT cchType
);

extern(Windows) export UINT RealGetWindowClassW(
  HWND hwnd,
  LPWSTR pszType,
  UINT cchType
);
// #ifdef UNICODE
alias RealGetWindowClassW RealGetWindowClass;
// #else
// #...
// #endif // !UNICODE

struct tagALTTABINFO {
  DWORD cbSize;
  int cItems;
  int cColumns;
  int cRows;
  int iColFocus;
  int iRowFocus;
  int cxItem;
  int cyItem;
  POINT ptStart;
}
alias tagALTTABINFO ALTTABINFO;
alias tagALTTABINFO* PALTTABINFO;
alias tagALTTABINFO* LPALTTABINFO;

extern(Windows) export BOOL GetAltTabInfoA(
  HWND hwnd,
  int iItem,
  PALTTABINFO pati,
  LPSTR pszItemText,
  UINT cchItemText
);
extern(Windows) export BOOL GetAltTabInfoW(
  HWND hwnd,
  int iItem,
  PALTTABINFO pati,
  LPWSTR pszItemText,
  UINT cchItemText
);
// #ifdef UNICODE
alias GetAltTabInfoW GetAltTabInfo;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export DWORD GetListBoxInfo(
  HWND hwnd
);

// #endif /* NOWINABLE */
// #endif /* WINVER >= 0x0500 */

// #if(_WIN32_WINNT >= 0x0500)
extern(Windows) export BOOL LockWorkStation();
// #endif /* _WIN32_WINNT >= 0x0500 */

// #if(_WIN32_WINNT >= 0x0500)

extern(Windows) export BOOL UserHandleGrantAccess(
  HANDLE hUserHandle,
  HANDLE hJob,
  BOOL bGrant);

// #endif /* _WIN32_WINNT >= 0x0500 */

// #if(_WIN32_WINNT >= 0x0501)

alias void* HRAWINPUT;

// #define GET_RAWINPUT_CODE_WPARAM(wParam) ((wParam) & 0xff)

enum : uint { RIM_INPUT = 0 }

enum : uint { RIM_INPUTSINK = 1 }

struct tagRAWINPUTHEADER {
  DWORD dwType;
  DWORD dwSize;
  HANDLE hDevice;
  WPARAM wParam;
}
alias tagRAWINPUTHEADER RAWINPUTHEADER;
alias tagRAWINPUTHEADER* PRAWINPUTHEADER;
alias tagRAWINPUTHEADER* LPRAWINPUTHEADER;

enum : uint { RIM_TYPEMOUSE = 0 }
enum : uint { RIM_TYPEKEYBOARD = 1 }
enum : uint { RIM_TYPEHID = 2 }

struct tagRAWMOUSE {

  USHORT usFlags;
union {
  ULONG ulButtons;
struct {
  USHORT usButtonFlags;
  USHORT usButtonData;
}

}

  ULONG ulRawButtons;
  LONG lLastX;
  LONG lLastY;
  ULONG ulExtraInformation;
}
alias tagRAWMOUSE RAWMOUSE;
alias tagRAWMOUSE* PRAWMOUSE;
alias tagRAWMOUSE* LPRAWMOUSE;

enum : uint { RI_MOUSE_LEFT_BUTTON_DOWN = 0x0001 }
enum : uint { RI_MOUSE_LEFT_BUTTON_UP = 0x0002 }
enum : uint { RI_MOUSE_RIGHT_BUTTON_DOWN = 0x0004 }
enum : uint { RI_MOUSE_RIGHT_BUTTON_UP = 0x0008 }
enum : uint { RI_MOUSE_MIDDLE_BUTTON_DOWN = 0x0010 }
enum : uint { RI_MOUSE_MIDDLE_BUTTON_UP = 0x0020 }

alias RI_MOUSE_LEFT_BUTTON_DOWN RI_MOUSE_BUTTON_1_DOWN;
alias RI_MOUSE_LEFT_BUTTON_UP RI_MOUSE_BUTTON_1_UP;
alias RI_MOUSE_RIGHT_BUTTON_DOWN RI_MOUSE_BUTTON_2_DOWN;
alias RI_MOUSE_RIGHT_BUTTON_UP RI_MOUSE_BUTTON_2_UP;
alias RI_MOUSE_MIDDLE_BUTTON_DOWN RI_MOUSE_BUTTON_3_DOWN;
alias RI_MOUSE_MIDDLE_BUTTON_UP RI_MOUSE_BUTTON_3_UP;

enum : uint { RI_MOUSE_BUTTON_4_DOWN = 0x0040 }
enum : uint { RI_MOUSE_BUTTON_4_UP = 0x0080 }
enum : uint { RI_MOUSE_BUTTON_5_DOWN = 0x0100 }
enum : uint { RI_MOUSE_BUTTON_5_UP = 0x0200 }

enum : uint { RI_MOUSE_WHEEL = 0x0400 }

enum : uint { MOUSE_MOVE_RELATIVE = 0 }
enum : uint { MOUSE_MOVE_ABSOLUTE = 1 }
enum : uint { MOUSE_VIRTUAL_DESKTOP = 0x02 }
enum : uint { MOUSE_ATTRIBUTES_CHANGED = 0x04 }

struct tagRAWKEYBOARD {

  USHORT MakeCode;
  USHORT Flags;
  USHORT Reserved;
  USHORT VKey;
  UINT Message;
  ULONG ExtraInformation;
}
alias tagRAWKEYBOARD RAWKEYBOARD;
alias tagRAWKEYBOARD* PRAWKEYBOARD;
alias tagRAWKEYBOARD* LPRAWKEYBOARD;

enum : uint { KEYBOARD_OVERRUN_MAKE_CODE = 0xFF }

enum : uint { RI_KEY_MAKE = 0 }
enum : uint { RI_KEY_BREAK = 1 }
enum : uint { RI_KEY_E0 = 2 }
enum : uint { RI_KEY_E1 = 4 }
enum : uint { RI_KEY_TERMSRV_SET_LED = 8 }
enum : uint { RI_KEY_TERMSRV_SHADOW = 0x10 }

struct tagRAWHID {
  DWORD dwSizeHid;
  DWORD dwCount;
  BYTE bRawData[1];
}
alias tagRAWHID RAWHID;
alias tagRAWHID* PRAWHID;
alias tagRAWHID* LPRAWHID;

struct tagRAWINPUT {
  RAWINPUTHEADER header;
union {
  RAWMOUSE mouse;
  RAWKEYBOARD keyboard;
  RAWHID hid;
}

}
alias tagRAWINPUT RAWINPUT;
alias tagRAWINPUT* PRAWINPUT;
alias tagRAWINPUT* LPRAWINPUT;

// #ifdef _WIN64
// #...
// #else   // _WIN64
uint RAWINPUT_ALIGN(uint x){ return ((x + DWORD.sizeof - 1) & ~(DWORD.sizeof - 1)); }
// #endif  // _WIN64

// #define NEXTRAWINPUTBLOCK(ptr) ((PRAWINPUT)RAWINPUT_ALIGN((ULONG_PTR)((PBYTE)(ptr) + (ptr)->header.dwSize)))

enum : uint { RID_INPUT = 0x10000003 }
enum : uint { RID_HEADER = 0x10000005 }

extern(Windows) export UINT GetRawInputData(
  HRAWINPUT hRawInput,
  UINT uiCommand,
  LPVOID pData,
  PUINT pcbSize,
  UINT cbSizeHeader);

enum : uint { RIDI_PREPARSEDDATA = 0x20000005 }
enum : uint { RIDI_DEVICENAME = 0x20000007 }
enum : uint { RIDI_DEVICEINFO = 0x2000000b }

struct tagRID_DEVICE_INFO_MOUSE {
  DWORD dwId;
  DWORD dwNumberOfButtons;
  DWORD dwSampleRate;
}
alias tagRID_DEVICE_INFO_MOUSE RID_DEVICE_INFO_MOUSE;
alias tagRID_DEVICE_INFO_MOUSE* PRID_DEVICE_INFO_MOUSE;

struct tagRID_DEVICE_INFO_KEYBOARD {
  DWORD dwType;
  DWORD dwSubType;
  DWORD dwKeyboardMode;
  DWORD dwNumberOfFunctionKeys;
  DWORD dwNumberOfIndicators;
  DWORD dwNumberOfKeysTotal;
}
alias tagRID_DEVICE_INFO_KEYBOARD RID_DEVICE_INFO_KEYBOARD;
alias tagRID_DEVICE_INFO_KEYBOARD* PRID_DEVICE_INFO_KEYBOARD;

struct tagRID_DEVICE_INFO_HID {
  DWORD dwVendorId;
  DWORD dwProductId;
  DWORD dwVersionNumber;
  USHORT usUsagePage;
  USHORT usUsage;
}
alias tagRID_DEVICE_INFO_HID RID_DEVICE_INFO_HID;
alias tagRID_DEVICE_INFO_HID* PRID_DEVICE_INFO_HID;

struct tagRID_DEVICE_INFO {
  DWORD cbSize;
  DWORD dwType;
union {
  RID_DEVICE_INFO_MOUSE mouse;
  RID_DEVICE_INFO_KEYBOARD keyboard;
  RID_DEVICE_INFO_HID hid;
}

}
alias tagRID_DEVICE_INFO RID_DEVICE_INFO;
alias tagRID_DEVICE_INFO* PRID_DEVICE_INFO;
alias tagRID_DEVICE_INFO* LPRID_DEVICE_INFO;

extern(Windows) export UINT GetRawInputDeviceInfoA(
  HANDLE hDevice,
  UINT uiCommand,
  LPVOID pData,
  PUINT pcbSize);
extern(Windows) export UINT GetRawInputDeviceInfoW(
  HANDLE hDevice,
  UINT uiCommand,
  LPVOID pData,
  PUINT pcbSize);
// #ifdef UNICODE
alias GetRawInputDeviceInfoW GetRawInputDeviceInfo;
// #else
// #...
// #endif // !UNICODE

extern(Windows) export UINT GetRawInputBuffer(
  PRAWINPUT pData,
  PUINT pcbSize,
  UINT cbSizeHeader);

struct tagRAWINPUTDEVICE {
  USHORT usUsagePage;
  USHORT usUsage;
  DWORD dwFlags;
  HWND hwndTarget;
}
alias tagRAWINPUTDEVICE RAWINPUTDEVICE;
alias tagRAWINPUTDEVICE* PRAWINPUTDEVICE;
alias tagRAWINPUTDEVICE* LPRAWINPUTDEVICE;

alias RAWINPUTDEVICE* PCRAWINPUTDEVICE;

enum : uint { RIDEV_REMOVE = 0x00000001 }
enum : uint { RIDEV_EXCLUDE = 0x00000010 }
enum : uint { RIDEV_PAGEONLY = 0x00000020 }
enum : uint { RIDEV_NOLEGACY = 0x00000030 }
enum : uint { RIDEV_CAPTUREMOUSE = 0x00000200 }
enum : uint { RIDEV_NOHOTKEYS = 0x00000200 }
enum : uint { RIDEV_EXMODEMASK = 0x000000F0 }

// #define RIDEV_EXMODE(mode) ((mode) & RIDEV_EXMODEMASK)

extern(Windows) export BOOL RegisterRawInputDevices(
  PCRAWINPUTDEVICE pRawInputDevices,
  UINT uiNumDevices,
  UINT cbSize);

extern(Windows) export UINT GetRegisteredRawInputDevices(
  PRAWINPUTDEVICE pRawInputDevices,
  PUINT puiNumDevices,
  UINT cbSize);

struct tagRAWINPUTDEVICELIST {
  HANDLE hDevice;
  DWORD dwType;
}
alias tagRAWINPUTDEVICELIST RAWINPUTDEVICELIST;
alias tagRAWINPUTDEVICELIST* PRAWINPUTDEVICELIST;

extern(Windows) export UINT GetRawInputDeviceList(
  PRAWINPUTDEVICELIST pRawInputDeviceList,
  PUINT puiNumDevices,
  UINT cbSize);

extern(Windows) export LRESULT DefRawInputProc(
  PRAWINPUT* paRawInput,
  INT nInput,
  UINT cbSizeHeader);

// #endif /* _WIN32_WINNT >= 0x0501 */

// #if !defined(RC_INVOKED) /* RC complains about long symbols in #ifs */
// #if ISOLATION_AWARE_ENABLED
// #...
// #endif /* ISOLATION_AWARE_ENABLED */
// #endif /* RC */

// #ifdef __cplusplus
// }
// #endif  /* __cplusplus */

// #endif /* !_WINUSER_ */

