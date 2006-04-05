module win32.winnt;

// Translated from Microsoft Platform SDK August 2001 Edition
// by Y.Tomino (demoonlit@inter7.jp)

import win32.windef;
private import win32.basetsd, win32.windef;

alias void _TEB;
alias void _EXCEPTION_REGISTRATION_RECORD;
private extern(C) {
  int memcmp(void*, void*, uint);
  void* memmove(void*, void*, uint);
  void* memcpy(void*, void*, uint);
  void* memset(void*, uint, uint);
}

alias void* LPVOID;
alias char UCHAR;
alias char* PUCHAR;
alias uint ULONG;
alias uint* PULONG;

alias HANDLE* LPHANDLE;

// #ifndef _WINNT_
// #define _WINNT_

// #ifdef __cplusplus
// extern "C" {
// #endif

// #include <ctype.h>
enum : uint { ANYSIZE_ARRAY = 1 }

// #if defined(_M_MRX000) && !(defined(MIDL_PASS) || defined(RC_INVOKED)) && defined(ENABLE_RESTRICTED)
// #...
// #else
// #define RESTRICTED_POINTER
// #endif

// #if defined(_M_MRX000) || defined(_M_ALPHA) || defined(_M_PPC) || defined(_M_IA64) || defined(_M_AMD64)
// #...
// #if defined(_WIN64)
// #...
// #else
// #...
// #endif
// #else
// #define UNALIGNED
// #define UNALIGNED64
// #endif

// #if defined(_WIN64) || defined(_M_ALPHA)
// #...
// #...
// #else
const uint MAX_NATURAL_ALIGNMENT = DWORD.sizeof;
enum : uint { MEMORY_ALLOCATION_ALIGNMENT = 8 }
// #endif

// #ifdef __cplusplus
// #if _MSC_VER >= 1300
// #define TYPE_ALIGNMENT( t ) __alignof(t)
// #endif
// #else
// #...
// ...
// #endif

// #if defined(_WIN64)

// #...
// ...

// #...

// #else

// #define PROBE_ALIGNMENT( _s ) TYPE_ALIGNMENT( DWORD )

// #endif

// #define C_ASSERT(e) typedef char __C_ASSERT__[(e)?1:-1]

// #if !defined(_MAC) && (defined(_M_MRX000) || defined(_M_AMD64) || defined(_M_IA64)) && (_MSC_VER >= 1100) && !(defined(MIDL_PASS) || defined(RC_INVOKED))
// #...
// ...
// #if defined(_WIN64)
// #...
// #else
// #...
// #endif
// #else
// #if defined(_MAC) && defined(_MAC_INT_64)
// #...
// ...
// #else
// #define POINTER_64
alias uint POINTER_64_INT;
// #endif
alias void* POINTER_32;
// #endif

// #if defined(_IA64_) || defined(_AMD64_)
// #...
// #else
alias POINTER_32 FIRMWARE_PTR;
// #endif

// #include <basetsd.h>

// #if (defined(_M_IX86) || defined(_M_IA64) || defined(_M_AMD64)) && !defined(MIDL_PASS)
// #define DECLSPEC_IMPORT __declspec(dllimport)
// #else
// #...
// #endif

// #ifndef DECLSPEC_NORETURN
// #if (_MSC_VER >= 1200) && !defined(MIDL_PASS)
// #define DECLSPEC_NORETURN __declspec(noreturn)
// #else
// #...
// #endif
// #endif

// #ifndef DECLSPEC_ALIGN
// #if (_MSC_VER >= 1300) && !defined(MIDL_PASS)
// #define DECLSPEC_ALIGN(x) __declspec(align(x))
// #else
// #...
// #endif
// #endif

// #ifndef DECLSPEC_CACHEALIGN
// #define DECLSPEC_CACHEALIGN DECLSPEC_ALIGN(128)
// #endif

// #ifndef DECLSPEC_UUID
// #if (_MSC_VER >= 1100) && defined (__cplusplus)
// #define DECLSPEC_UUID(x) __declspec(uuid(x))
// #else
// #...
// #endif
// #endif

// #ifndef DECLSPEC_NOVTABLE
// #if (_MSC_VER >= 1100) && defined(__cplusplus)
// #define DECLSPEC_NOVTABLE __declspec(novtable)
// #else
// #...
// #endif
// #endif

// #ifndef DECLSPEC_SELECTANY
// #if (_MSC_VER >= 1100)
// #define DECLSPEC_SELECTANY __declspec(selectany)
// #else
// #...
// #endif
// #endif

// #ifndef NOP_FUNCTION
// #if (_MSC_VER >= 1210)
// #...
// #else
// #...
// #endif
// #endif

// #ifndef DECLSPEC_ADDRSAFE
// #if (_MSC_VER >= 1200) && (defined(_M_ALPHA) || defined(_M_AXP64))
// #...
// #else
// #define DECLSPEC_ADDRSAFE
// #endif
// #endif

// #ifndef FORCEINLINE
// #if (_MSC_VER >= 1200)
// #define FORCEINLINE __forceinline
// #else
// #...
// #endif
// #endif

// #ifndef DECLSPEC_DEPRECATED
// #if (_MSC_VER >= 1300) && !defined(MIDL_PASS)
// #define DECLSPEC_DEPRECATED __declspec(deprecated)
// #define DEPRECATE_SUPPORTED
// #else
// #...
// #...
// #endif
// #endif

alias ushort USHORT;
alias void* PVOID;
deprecated alias void* PVOID64; /* warning: 64-bit */

// #if ((_MSC_VER >= 800) || defined(_STDCALL_SUPPORTED)) && !defined(_M_AMD64)
// #define NTAPI __stdcall
// #else
// #...
// #...
// #endif

// #if !defined(_NTSYSTEM_)
// #define NTSYSAPI DECLSPEC_IMPORT
// #define NTSYSCALLAPI DECLSPEC_IMPORT
// #else
// #...
// #if defined(_NTDLLBUILD_)
// #...
// #else
// #...
// #endif

// #endif

// #ifndef VOID
alias void VOID;
alias char CHAR;
alias short SHORT;
alias int LONG;
// #endif

// #ifndef _MAC
alias wchar WCHAR;
// #else

// ...
// #endif

alias WCHAR* PWCHAR;
alias WCHAR* LPWCH;
alias WCHAR* PWCH;
alias WCHAR* LPCWCH;
alias WCHAR* PCWCH;
alias WCHAR* NWPSTR;
alias WCHAR* LPWSTR;
alias WCHAR* PWSTR;
alias WCHAR* LPUWSTR;
alias WCHAR* PUWSTR;

alias WCHAR* LPCWSTR;
alias WCHAR* PCWSTR;
alias WCHAR* LPCUWSTR;
alias WCHAR* PCUWSTR;

alias CHAR* PCHAR;
alias CHAR* LPCH;
alias CHAR* PCH;

alias CHAR* LPCCH;
alias CHAR* PCCH;
alias CHAR* NPSTR;
alias CHAR* LPSTR;
alias CHAR* PSTR;
alias CHAR* LPCSTR;
alias CHAR* PCSTR;

version (Unicode) {
	alias WCHAR TCHAR;
	alias WCHAR* PTCHAR;
	alias WCHAR TBYTE;
	alias WCHAR* PTBYTE;

	alias LPWSTR LPTCH;
	alias LPWSTR PTCH;
	alias LPWSTR PTSTR;
	alias LPWSTR LPTSTR;
	alias LPCWSTR PCTSTR;
	alias LPCWSTR LPCTSTR;
	alias LPUWSTR PUTSTR;
	alias LPUWSTR LPUTSTR;
	alias LPCUWSTR PCUTSTR;
	alias LPCUWSTR LPCUTSTR;
	alias LPWSTR LP;
} else {
	alias CHAR TCHAR;
	alias CHAR* PTCHAR;
	alias CHAR TBYTE;
	alias CHAR* PTBYTE;

	alias LPSTR LPTCH;
	alias LPSTR PTCH;
	alias LPSTR PTSTR;
	alias LPSTR LPTSTR;
	alias LPCSTR PCTSTR;
	alias LPCSTR LPCTSTR;
	/+alias LPUSTR PUTSTR;
	alias LPUSTR LPUTSTR;
	alias LPCUSTR PCUTSTR;
	alias LPCUSTR LPCUTSTR;+/
	alias LPSTR LP;
}

// #else   /* UNICODE */               // r_winnt

// #ifndef _TCHAR_DEFINED
// ...
// #...
// #endif /* !_TCHAR_DEFINED */

// ...
// #...

// #endif /* UNICODE */                // r_winnt
TCHAR[] TEXT(TCHAR[] quote){ return quote; }

alias SHORT* PSHORT;
alias LONG* PLONG;

// #ifdef STRICT
alias void* HANDLE;
// #define DECLARE_HANDLE(name) struct name##__ { int unused; }; typedef struct name##__ *name
// #else
// ...
// #...
// #endif
alias HANDLE* PHANDLE;

alias BYTE FCHAR;
alias WORD FSHORT;
alias DWORD FLONG;

// #ifndef _HRESULT_DEFINED
// #define _HRESULT_DEFINED
alias LONG HRESULT;

// #endif // !_HRESULT_DEFINED

// #ifdef __cplusplus
//     #define EXTERN_C extern "C"
// #else
// #...
// #endif

// #if defined(_WIN32) || defined(_MPPC_)

// #ifdef _68K_
// #...
// #else
// #define STDMETHODCALLTYPE __stdcall
// #endif
// #define STDMETHODVCALLTYPE __cdecl

// #define STDAPICALLTYPE __stdcall
// #define STDAPIVCALLTYPE __cdecl

// #else

// #...
// #...

// #...
// #...

// #endif

// #define STDAPI EXTERN_C HRESULT STDAPICALLTYPE
// #define STDAPI_(type) EXTERN_C type STDAPICALLTYPE

// #define STDMETHODIMP HRESULT STDMETHODCALLTYPE
// #define STDMETHODIMP_(type) type STDMETHODCALLTYPE

// #define STDAPIV EXTERN_C HRESULT STDAPIVCALLTYPE
// #define STDAPIV_(type) EXTERN_C type STDAPIVCALLTYPE

// #define STDMETHODIMPV HRESULT STDMETHODVCALLTYPE
// #define STDMETHODIMPV_(type) type STDMETHODVCALLTYPE

alias char CCHAR;
alias DWORD LCID;
alias PDWORD PLCID;
alias WORD LANGID;
enum : uint { APPLICATION_ERROR_MASK = 0x20000000 }
enum : uint { ERROR_SEVERITY_SUCCESS = 0x00000000 }
enum : uint { ERROR_SEVERITY_INFORMATIONAL = 0x40000000 }
enum : uint { ERROR_SEVERITY_WARNING = 0x80000000 }
enum : uint { ERROR_SEVERITY_ERROR = 0xC0000000 }

// #if defined(_M_IA64) && !defined(MIDL_PASS)
// ...
// #endif
struct _FLOAT128 {
	long LowPart;
	long HighPart;
}
alias _FLOAT128 FLOAT128;

alias FLOAT128* PFLOAT128;

// #define _ULONGLONG_
// #if (!defined (_MAC) && (!defined(MIDL_PASS) || defined(__midl)) && (!defined(_M_IX86) || (defined(_INTEGRAL_MAX_BITS) && _INTEGRAL_MAX_BITS >= 64)))
// ...

// #...
// #else

// #if defined(_MAC) && defined(_MAC_INT_64)
// ...

// #...
// #else
alias double LONGLONG;
alias double ULONGLONG;
// #endif //_MAC and int64

// #endif

alias LONGLONG* PLONGLONG;
alias ULONGLONG* PULONGLONG;

alias LONGLONG USN;

// #if defined(MIDL_PASS)
// ...
// #else // MIDL_PASS
union _LARGE_INTEGER {
struct _0 {
  DWORD LowPart;
  LONG HighPart;
}
_0 _;

struct _1 {
  DWORD LowPart;
  LONG HighPart;
}
_1 u;

// #endif //MIDL_PASS
  LONGLONG QuadPart;
}
alias _LARGE_INTEGER LARGE_INTEGER;

alias LARGE_INTEGER* PLARGE_INTEGER;

// #if defined(MIDL_PASS)
// ...
// #else // MIDL_PASS
union _ULARGE_INTEGER {
struct _2 {
  DWORD LowPart;
  DWORD HighPart;
}
_2 _;

struct _3 {
  DWORD LowPart;
  DWORD HighPart;
}
_3 u;

// #endif //MIDL_PASS
  ULONGLONG QuadPart;
}
alias _ULARGE_INTEGER ULARGE_INTEGER;

alias ULARGE_INTEGER* PULARGE_INTEGER;

struct _LUID {
  DWORD LowPart;
  LONG HighPart;
}
alias _LUID LUID;
alias _LUID* PLUID;

// #define _DWORDLONG_
alias ULONGLONG DWORDLONG;
alias DWORDLONG* PDWORDLONG;

// #if defined(MIDL_PASS) || defined(RC_INVOKED)

// #...
// #...

// #...
// #...
// #...

// #elif defined(_M_MRX000)

// #...
// #...

// #...
// #...
// #...

// #if defined (__cplusplus)
// ...
// #endif

// ...

// ...

// ...

// ...

// ...

// #if defined (__cplusplus)
// ...
// #endif

// #...
// #...

// #...
// #...
// #...

// #elif defined(_M_IX86)

long Int32x32To64(int a, int b) { return (cast(long)a) * b; }
ulong UInt32x32To64(uint a, uint b) { return (cast(ulong)a) * b; }

extern(Windows) export ULONGLONG Int64ShllMod32(
  ULONGLONG Value,
  DWORD ShiftCount);

extern(Windows) export LONGLONG Int64ShraMod32(
  LONGLONG Value,
  DWORD ShiftCount);

extern(Windows) export ULONGLONG Int64ShrlMod32(
  ULONGLONG Value,
  DWORD ShiftCount);

// #if _MSC_VER >= 1200
// #pragma warning(push)
// #endif
// #pragma warning(disable:4035)               // re-enable below

// __inline ULONGLONG Int64ShllMod32(     ULONGLONG Value,     DWORD ShiftCount     );

// __inline LONGLONG Int64ShraMod32(     LONGLONG Value,     DWORD ShiftCount     );

// __inline ULONGLONG Int64ShrlMod32(     ULONGLONG Value,     DWORD ShiftCount     );

// #if _MSC_VER >= 1200
// #pragma warning(pop)
// #else
// #...
// #endif

// #elif defined(_M_ALPHA)

// #...
// #...

// #...
// #...
// #...

// #elif defined(_M_PPC)

// #...
// #...

// #...
// #...
// #...

// #elif defined(_68K_) || defined(_MPPC_)

// #...
// #...

// #...
// #...
// #...

// #elif defined(_M_IA64) || defined(_M_AMD64)

// #...
// #...

// #...
// #...
// #...

// #else

// #...

// #endif

enum : CHAR { ANSI_NULL = 0 }
enum : WCHAR { UNICODE_NULL = 0 }
enum : WORD { UNICODE_STRING_MAX_BYTES = 65534 }
enum : uint { UNICODE_STRING_MAX_CHARS = 32767 }
alias BYTE BOOLEAN;
alias BOOLEAN* PBOOLEAN;

struct _LIST_ENTRY {
  _LIST_ENTRY *Flink;
  _LIST_ENTRY *Blink;
}
alias _LIST_ENTRY LIST_ENTRY;
alias _LIST_ENTRY* PLIST_ENTRY;
alias _LIST_ENTRY* RESTRICTED_POINTERPRLIST_ENTRY;

struct _SINGLE_LIST_ENTRY {
  _SINGLE_LIST_ENTRY *Next;
}
alias _SINGLE_LIST_ENTRY SINGLE_LIST_ENTRY;
alias _SINGLE_LIST_ENTRY* PSINGLE_LIST_ENTRY;

struct LIST_ENTRY32 {
  DWORD Flink;
  DWORD Blink;
}

alias LIST_ENTRY32* PLIST_ENTRY32;

struct LIST_ENTRY64 {
  ULONGLONG Flink;
  ULONGLONG Blink;
}

alias LIST_ENTRY64* PLIST_ENTRY64;

import win32.guiddef;

// #ifndef __OBJECTID_DEFINED
// #define __OBJECTID_DEFINED

struct _OBJECTID {
  GUID Lineage;
  DWORD Uniquifier;
}
alias _OBJECTID OBJECTID;

// #endif // !_OBJECTID_DEFINED

enum : uint { MINCHAR = 0x80 }
enum : uint { MAXCHAR = 0x7f }
enum : uint { MINSHORT = 0x8000 }
enum : uint { MAXSHORT = 0x7fff }
enum : uint { MINLONG = 0x80000000 }
enum : uint { MAXLONG = 0x7fffffff }
enum : uint { MAXBYTE = 0xff }
enum : uint { MAXWORD = 0xffff }
enum : uint { MAXDWORD = 0xffffffff }

// #define FIELD_OFFSET(type, field) ((LONG)(LONG_PTR)&(((type *)0)->field))

// #if(_WIN32_WINNT > 0x0500)

// #define RTL_FIELD_SIZE(type, field) (sizeof(((type *)0)->field))

// #define RTL_SIZEOF_THROUGH_FIELD(type, field) (FIELD_OFFSET(type, field) + RTL_FIELD_SIZE(type, field))

// #define RTL_CONTAINS_FIELD(Struct, Size, Field) ( (((PCHAR)(&(Struct)->Field)) + sizeof((Struct)->Field)) <= (((PCHAR)(Struct))+(Size)) )

// #define RTL_NUMBER_OF(A) (sizeof(A)/sizeof((A)[0]))

// #define RTL_FIELD_TYPE(type, field) (((type*)0)->field)

// #define RTL_NUMBER_OF_FIELD(type, field) (RTL_NUMBER_OF(RTL_FIELD_TYPE(type, field)))

// #define RTL_PADDING_BETWEEN_FIELDS(T, F1, F2) ((FIELD_OFFSET(T, F2) > FIELD_OFFSET(T, F1)) ? (FIELD_OFFSET(T, F2) - FIELD_OFFSET(T, F1) - RTL_FIELD_SIZE(T, F1)) : (FIELD_OFFSET(T, F1) - FIELD_OFFSET(T, F2) - RTL_FIELD_SIZE(T, F2)))

// #if defined(__cplusplus)
// #define RTL_CONST_CAST(type) const_cast<type>
// #else
// #...
// #endif

// #define RTL_BITS_OF(sizeOfArg) (sizeof(sizeOfArg) * 8)

// #define RTL_BITS_OF_FIELD(type, field) (RTL_BITS_OF(RTL_FIELD_TYPE(type, field)))

// #endif /* _WIN32_WINNT > 0x0500 */

// #define CONTAINING_RECORD(address, type, field) ((type *)( (PCHAR)(address) - (ULONG_PTR)(&((type *)0)->field)))

enum : uint { VER_SERVER_NT = 0x80000000 }
enum : uint { VER_WORKSTATION_NT = 0x40000000 }
enum : uint { VER_SUITE_SMALLBUSINESS = 0x00000001 }
enum : uint { VER_SUITE_ENTERPRISE = 0x00000002 }
enum : uint { VER_SUITE_BACKOFFICE = 0x00000004 }
enum : uint { VER_SUITE_COMMUNICATIONS = 0x00000008 }
enum : uint { VER_SUITE_TERMINAL = 0x00000010 }
enum : uint { VER_SUITE_SMALLBUSINESS_RESTRICTED = 0x00000020 }
enum : uint { VER_SUITE_EMBEDDEDNT = 0x00000040 }
enum : uint { VER_SUITE_DATACENTER = 0x00000080 }
enum : uint { VER_SUITE_SINGLEUSERTS = 0x00000100 }
enum : uint { VER_SUITE_PERSONAL = 0x00000200 }
enum : uint { VER_SUITE_BLADE = 0x00000400 }

enum : uint { LANG_NEUTRAL = 0x00 }
enum : uint { LANG_INVARIANT = 0x7f }

enum : uint { LANG_AFRIKAANS = 0x36 }
enum : uint { LANG_ALBANIAN = 0x1c }
enum : uint { LANG_ARABIC = 0x01 }
enum : uint { LANG_ARMENIAN = 0x2b }
enum : uint { LANG_ASSAMESE = 0x4d }
enum : uint { LANG_AZERI = 0x2c }
enum : uint { LANG_BASQUE = 0x2d }
enum : uint { LANG_BELARUSIAN = 0x23 }
enum : uint { LANG_BENGALI = 0x45 }
enum : uint { LANG_BULGARIAN = 0x02 }
enum : uint { LANG_CATALAN = 0x03 }
enum : uint { LANG_CHINESE = 0x04 }
enum : uint { LANG_CROATIAN = 0x1a }
enum : uint { LANG_CZECH = 0x05 }
enum : uint { LANG_DANISH = 0x06 }
enum : uint { LANG_DIVEHI = 0x65 }
enum : uint { LANG_DUTCH = 0x13 }
enum : uint { LANG_ENGLISH = 0x09 }
enum : uint { LANG_ESTONIAN = 0x25 }
enum : uint { LANG_FAEROESE = 0x38 }
enum : uint { LANG_FARSI = 0x29 }
enum : uint { LANG_FINNISH = 0x0b }
enum : uint { LANG_FRENCH = 0x0c }
enum : uint { LANG_GALICIAN = 0x56 }
enum : uint { LANG_GEORGIAN = 0x37 }
enum : uint { LANG_GERMAN = 0x07 }
enum : uint { LANG_GREEK = 0x08 }
enum : uint { LANG_GUJARATI = 0x47 }
enum : uint { LANG_HEBREW = 0x0d }
enum : uint { LANG_HINDI = 0x39 }
enum : uint { LANG_HUNGARIAN = 0x0e }
enum : uint { LANG_ICELANDIC = 0x0f }
enum : uint { LANG_INDONESIAN = 0x21 }
enum : uint { LANG_ITALIAN = 0x10 }
enum : uint { LANG_JAPANESE = 0x11 }
enum : uint { LANG_KANNADA = 0x4b }
enum : uint { LANG_KASHMIRI = 0x60 }
enum : uint { LANG_KAZAK = 0x3f }
enum : uint { LANG_KONKANI = 0x57 }
enum : uint { LANG_KOREAN = 0x12 }
enum : uint { LANG_KYRGYZ = 0x40 }
enum : uint { LANG_LATVIAN = 0x26 }
enum : uint { LANG_LITHUANIAN = 0x27 }
enum : uint { LANG_MACEDONIAN = 0x2f }
enum : uint { LANG_MALAY = 0x3e }
enum : uint { LANG_MALAYALAM = 0x4c }
enum : uint { LANG_MANIPURI = 0x58 }
enum : uint { LANG_MARATHI = 0x4e }
enum : uint { LANG_MONGOLIAN = 0x50 }
enum : uint { LANG_NEPALI = 0x61 }
enum : uint { LANG_NORWEGIAN = 0x14 }
enum : uint { LANG_ORIYA = 0x48 }
enum : uint { LANG_POLISH = 0x15 }
enum : uint { LANG_PORTUGUESE = 0x16 }
enum : uint { LANG_PUNJABI = 0x46 }
enum : uint { LANG_ROMANIAN = 0x18 }
enum : uint { LANG_RUSSIAN = 0x19 }
enum : uint { LANG_SANSKRIT = 0x4f }
enum : uint { LANG_SERBIAN = 0x1a }
enum : uint { LANG_SINDHI = 0x59 }
enum : uint { LANG_SLOVAK = 0x1b }
enum : uint { LANG_SLOVENIAN = 0x24 }
enum : uint { LANG_SPANISH = 0x0a }
enum : uint { LANG_SWAHILI = 0x41 }
enum : uint { LANG_SWEDISH = 0x1d }
enum : uint { LANG_SYRIAC = 0x5a }
enum : uint { LANG_TAMIL = 0x49 }
enum : uint { LANG_TATAR = 0x44 }
enum : uint { LANG_TELUGU = 0x4a }
enum : uint { LANG_THAI = 0x1e }
enum : uint { LANG_TURKISH = 0x1f }
enum : uint { LANG_UKRAINIAN = 0x22 }
enum : uint { LANG_URDU = 0x20 }
enum : uint { LANG_UZBEK = 0x43 }
enum : uint { LANG_VIETNAMESE = 0x2a }

enum : uint { SUBLANG_NEUTRAL = 0x00 }
enum : uint { SUBLANG_DEFAULT = 0x01 }
enum : uint { SUBLANG_SYS_DEFAULT = 0x02 }

enum : uint { SUBLANG_ARABIC_SAUDI_ARABIA = 0x01 }
enum : uint { SUBLANG_ARABIC_IRAQ = 0x02 }
enum : uint { SUBLANG_ARABIC_EGYPT = 0x03 }
enum : uint { SUBLANG_ARABIC_LIBYA = 0x04 }
enum : uint { SUBLANG_ARABIC_ALGERIA = 0x05 }
enum : uint { SUBLANG_ARABIC_MOROCCO = 0x06 }
enum : uint { SUBLANG_ARABIC_TUNISIA = 0x07 }
enum : uint { SUBLANG_ARABIC_OMAN = 0x08 }
enum : uint { SUBLANG_ARABIC_YEMEN = 0x09 }
enum : uint { SUBLANG_ARABIC_SYRIA = 0x0a }
enum : uint { SUBLANG_ARABIC_JORDAN = 0x0b }
enum : uint { SUBLANG_ARABIC_LEBANON = 0x0c }
enum : uint { SUBLANG_ARABIC_KUWAIT = 0x0d }
enum : uint { SUBLANG_ARABIC_UAE = 0x0e }
enum : uint { SUBLANG_ARABIC_BAHRAIN = 0x0f }
enum : uint { SUBLANG_ARABIC_QATAR = 0x10 }
enum : uint { SUBLANG_AZERI_LATIN = 0x01 }
enum : uint { SUBLANG_AZERI_CYRILLIC = 0x02 }
enum : uint { SUBLANG_CHINESE_TRADITIONAL = 0x01 }
enum : uint { SUBLANG_CHINESE_SIMPLIFIED = 0x02 }
enum : uint { SUBLANG_CHINESE_HONGKONG = 0x03 }
enum : uint { SUBLANG_CHINESE_SINGAPORE = 0x04 }
enum : uint { SUBLANG_CHINESE_MACAU = 0x05 }
enum : uint { SUBLANG_DUTCH = 0x01 }
enum : uint { SUBLANG_DUTCH_BELGIAN = 0x02 }
enum : uint { SUBLANG_ENGLISH_US = 0x01 }
enum : uint { SUBLANG_ENGLISH_UK = 0x02 }
enum : uint { SUBLANG_ENGLISH_AUS = 0x03 }
enum : uint { SUBLANG_ENGLISH_CAN = 0x04 }
enum : uint { SUBLANG_ENGLISH_NZ = 0x05 }
enum : uint { SUBLANG_ENGLISH_EIRE = 0x06 }
enum : uint { SUBLANG_ENGLISH_SOUTH_AFRICA = 0x07 }
enum : uint { SUBLANG_ENGLISH_JAMAICA = 0x08 }
enum : uint { SUBLANG_ENGLISH_CARIBBEAN = 0x09 }
enum : uint { SUBLANG_ENGLISH_BELIZE = 0x0a }
enum : uint { SUBLANG_ENGLISH_TRINIDAD = 0x0b }
enum : uint { SUBLANG_ENGLISH_ZIMBABWE = 0x0c }
enum : uint { SUBLANG_ENGLISH_PHILIPPINES = 0x0d }
enum : uint { SUBLANG_FRENCH = 0x01 }
enum : uint { SUBLANG_FRENCH_BELGIAN = 0x02 }
enum : uint { SUBLANG_FRENCH_CANADIAN = 0x03 }
enum : uint { SUBLANG_FRENCH_SWISS = 0x04 }
enum : uint { SUBLANG_FRENCH_LUXEMBOURG = 0x05 }
enum : uint { SUBLANG_FRENCH_MONACO = 0x06 }
enum : uint { SUBLANG_GERMAN = 0x01 }
enum : uint { SUBLANG_GERMAN_SWISS = 0x02 }
enum : uint { SUBLANG_GERMAN_AUSTRIAN = 0x03 }
enum : uint { SUBLANG_GERMAN_LUXEMBOURG = 0x04 }
enum : uint { SUBLANG_GERMAN_LIECHTENSTEIN = 0x05 }
enum : uint { SUBLANG_ITALIAN = 0x01 }
enum : uint { SUBLANG_ITALIAN_SWISS = 0x02 }
// #if _WIN32_WINNT >= 0x0501
enum : uint { SUBLANG_KASHMIRI_SASIA = 0x02 }
// #endif
enum : uint { SUBLANG_KASHMIRI_INDIA = 0x02 }
enum : uint { SUBLANG_KOREAN = 0x01 }
enum : uint { SUBLANG_LITHUANIAN = 0x01 }
enum : uint { SUBLANG_MALAY_MALAYSIA = 0x01 }
enum : uint { SUBLANG_MALAY_BRUNEI_DARUSSALAM = 0x02 }
enum : uint { SUBLANG_NEPALI_INDIA = 0x02 }
enum : uint { SUBLANG_NORWEGIAN_BOKMAL = 0x01 }
enum : uint { SUBLANG_NORWEGIAN_NYNORSK = 0x02 }
enum : uint { SUBLANG_PORTUGUESE = 0x02 }
enum : uint { SUBLANG_PORTUGUESE_BRAZILIAN = 0x01 }
enum : uint { SUBLANG_SERBIAN_LATIN = 0x02 }
enum : uint { SUBLANG_SERBIAN_CYRILLIC = 0x03 }
enum : uint { SUBLANG_SPANISH = 0x01 }
enum : uint { SUBLANG_SPANISH_MEXICAN = 0x02 }
enum : uint { SUBLANG_SPANISH_MODERN = 0x03 }
enum : uint { SUBLANG_SPANISH_GUATEMALA = 0x04 }
enum : uint { SUBLANG_SPANISH_COSTA_RICA = 0x05 }
enum : uint { SUBLANG_SPANISH_PANAMA = 0x06 }
enum : uint { SUBLANG_SPANISH_DOMINICAN_REPUBLIC = 0x07 }
enum : uint { SUBLANG_SPANISH_VENEZUELA = 0x08 }
enum : uint { SUBLANG_SPANISH_COLOMBIA = 0x09 }
enum : uint { SUBLANG_SPANISH_PERU = 0x0a }
enum : uint { SUBLANG_SPANISH_ARGENTINA = 0x0b }
enum : uint { SUBLANG_SPANISH_ECUADOR = 0x0c }
enum : uint { SUBLANG_SPANISH_CHILE = 0x0d }
enum : uint { SUBLANG_SPANISH_URUGUAY = 0x0e }
enum : uint { SUBLANG_SPANISH_PARAGUAY = 0x0f }
enum : uint { SUBLANG_SPANISH_BOLIVIA = 0x10 }
enum : uint { SUBLANG_SPANISH_EL_SALVADOR = 0x11 }
enum : uint { SUBLANG_SPANISH_HONDURAS = 0x12 }
enum : uint { SUBLANG_SPANISH_NICARAGUA = 0x13 }
enum : uint { SUBLANG_SPANISH_PUERTO_RICO = 0x14 }
enum : uint { SUBLANG_SWEDISH = 0x01 }
enum : uint { SUBLANG_SWEDISH_FINLAND = 0x02 }
enum : uint { SUBLANG_URDU_PAKISTAN = 0x01 }
enum : uint { SUBLANG_URDU_INDIA = 0x02 }
enum : uint { SUBLANG_UZBEK_LATIN = 0x01 }
enum : uint { SUBLANG_UZBEK_CYRILLIC = 0x02 }

enum : uint { SORT_DEFAULT = 0x0 }

enum : uint { SORT_JAPANESE_XJIS = 0x0 }
enum : uint { SORT_JAPANESE_UNICODE = 0x1 }

enum : uint { SORT_CHINESE_BIG5 = 0x0 }
enum : uint { SORT_CHINESE_PRCP = 0x0 }
enum : uint { SORT_CHINESE_UNICODE = 0x1 }
enum : uint { SORT_CHINESE_PRC = 0x2 }
enum : uint { SORT_CHINESE_BOPOMOFO = 0x3 }

enum : uint { SORT_KOREAN_KSC = 0x0 }
enum : uint { SORT_KOREAN_UNICODE = 0x1 }

enum : uint { SORT_GERMAN_PHONE_BOOK = 0x1 }

enum : uint { SORT_HUNGARIAN_DEFAULT = 0x0 }
enum : uint { SORT_HUNGARIAN_TECHNICAL = 0x1 }

enum : uint { SORT_GEORGIAN_TRADITIONAL = 0x0 }
enum : uint { SORT_GEORGIAN_MODERN = 0x1 }

WORD MAKELANGID(USHORT p, USHORT s) { return (((cast(WORD)(s)) << 10) | cast(WORD)(p)); }
WORD PRIMARYLANGID(WORD lgid) { return lgid & 0x3ff; }
WORD SUBLANGID(WORD lgid) { return lgid >>> 10; }

enum : uint { NLS_VALID_LOCALE_MASK = 0x000fffff }

DWORD MAKELCID(WORD lgid, WORD srtid) { return ((cast(DWORD)srtid) << 16) | (cast(DWORD)lgid); }
DWORD MAKESORTLCID(WORD lgid, WORD srtid, WORD ver) { return (MAKELCID(lgid, srtid)) | ((cast(DWORD)ver) << 20); }
WORD LANGIDFROMLCID(LCID lcid) { return lcid; }
WORD SORTIDFROMLCID(LCID lcid) { return (cast(DWORD)lcid >>> 16) & 0xf; }
WORD SORTVERSIONFROMLCID(LCID lcid) { return (cast(DWORD)lcid >>> 20) & 0xf; }

enum : uint { LANG_SYSTEM_DEFAULT = (SUBLANG_SYS_DEFAULT << 10) | LANG_NEUTRAL }
enum : uint { LANG_USER_DEFAULT = (SUBLANG_DEFAULT << 10) | LANG_NEUTRAL }

enum : uint { LOCALE_SYSTEM_DEFAULT = (SORT_DEFAULT << 16) | LANG_SYSTEM_DEFAULT }
enum : uint { LOCALE_USER_DEFAULT = (SORT_DEFAULT << 16) | LANG_USER_DEFAULT }

enum : uint { LOCALE_NEUTRAL = (SORT_DEFAULT << 16) | (SUBLANG_NEUTRAL << 10) | LANG_NEUTRAL }

enum : uint { LOCALE_INVARIANT = (SORT_DEFAULT << 16) | (SUBLANG_NEUTRAL << 10) | LANG_INVARIANT }

// #if ! defined(lint)
// #...
// #...
// #...

// #else // lint

// #define UNREFERENCED_PARAMETER(P) { (P) = (P); }
// #define DBG_UNREFERENCED_PARAMETER(P) { (P) = (P); }
// #define DBG_UNREFERENCED_LOCAL_VARIABLE(V) { (V) = (V); }

// #endif // lint

// #if (_MSC_VER > 1200)
// #define DEFAULT_UNREACHABLE default: __assume(0)
// #else

// #...

// #endif

// #ifndef WIN32_NO_STATUS

enum : DWORD { STATUS_WAIT_0 = 0x00000000 }
enum : DWORD { STATUS_ABANDONED_WAIT_0 = 0x00000080 }
enum : DWORD { STATUS_USER_APC = 0x000000C0 }
enum : DWORD { STATUS_TIMEOUT = 0x00000102 }
enum : DWORD { STATUS_PENDING = 0x00000103 }
enum : DWORD { DBG_EXCEPTION_HANDLED = 0x00010001 }
enum : DWORD { DBG_CONTINUE = 0x00010002 }
enum : DWORD { STATUS_SEGMENT_NOTIFICATION = 0x40000005 }
enum : DWORD { DBG_TERMINATE_THREAD = 0x40010003 }
enum : DWORD { DBG_TERMINATE_PROCESS = 0x40010004 }
enum : DWORD { DBG_CONTROL_C = 0x40010005 }
enum : DWORD { DBG_CONTROL_BREAK = 0x40010008 }
enum : DWORD { STATUS_GUARD_PAGE_VIOLATION = 0x80000001 }
enum : DWORD { STATUS_DATATYPE_MISALIGNMENT = 0x80000002 }
enum : DWORD { STATUS_BREAKPOINT = 0x80000003 }
enum : DWORD { STATUS_SINGLE_STEP = 0x80000004 }
enum : DWORD { DBG_EXCEPTION_NOT_HANDLED = 0x80010001 }
enum : DWORD { STATUS_ACCESS_VIOLATION = 0xC0000005 }
enum : DWORD { STATUS_IN_PAGE_ERROR = 0xC0000006 }
enum : DWORD { STATUS_INVALID_HANDLE = 0xC0000008 }
enum : DWORD { STATUS_NO_MEMORY = 0xC0000017 }
enum : DWORD { STATUS_ILLEGAL_INSTRUCTION = 0xC000001D }
enum : DWORD { STATUS_NONCONTINUABLE_EXCEPTION = 0xC0000025 }
enum : DWORD { STATUS_INVALID_DISPOSITION = 0xC0000026 }
enum : DWORD { STATUS_ARRAY_BOUNDS_EXCEEDED = 0xC000008C }
enum : DWORD { STATUS_FLOAT_DENORMAL_OPERAND = 0xC000008D }
enum : DWORD { STATUS_FLOAT_DIVIDE_BY_ZERO = 0xC000008E }
enum : DWORD { STATUS_FLOAT_INEXACT_RESULT = 0xC000008F }
enum : DWORD { STATUS_FLOAT_INVALID_OPERATION = 0xC0000090 }
enum : DWORD { STATUS_FLOAT_OVERFLOW = 0xC0000091 }
enum : DWORD { STATUS_FLOAT_STACK_CHECK = 0xC0000092 }
enum : DWORD { STATUS_FLOAT_UNDERFLOW = 0xC0000093 }
enum : DWORD { STATUS_INTEGER_DIVIDE_BY_ZERO = 0xC0000094 }
enum : DWORD { STATUS_INTEGER_OVERFLOW = 0xC0000095 }
enum : DWORD { STATUS_PRIVILEGED_INSTRUCTION = 0xC0000096 }
enum : DWORD { STATUS_STACK_OVERFLOW = 0xC00000FD }
enum : DWORD { STATUS_CONTROL_C_EXIT = 0xC000013A }
enum : DWORD { STATUS_FLOAT_MULTIPLE_FAULTS = 0xC00002B4 }
enum : DWORD { STATUS_FLOAT_MULTIPLE_TRAPS = 0xC00002B5 }
enum : DWORD { STATUS_REG_NAT_CONSUMPTION = 0xC00002C9 }
// #if defined(STATUS_SUCCESS) || (_WIN32_WINNT > 0x0500) || (_WIN32_FUSION >= 0x0100)
enum : DWORD { STATUS_SXS_EARLY_DEACTIVATION = 0xC015000F }
enum : DWORD { STATUS_SXS_INVALID_DEACTIVATION = 0xC0150010 }
// #endif

// #endif
enum : uint { MAXIMUM_WAIT_OBJECTS = 64 }

alias MAXCHAR MAXIMUM_SUSPEND_COUNT;

alias ULONG_PTR KSPIN_LOCK;
alias KSPIN_LOCK* PKSPIN_LOCK;

// #if defined(_AMD64_)

// #if defined(_M_AMD64) && !defined(RC_INVOKED) && !defined(MIDL_PASS)

// #...

// ...

// #...

// #...

// ...

// #...

// ...

// ...

// ...

// ...

// #...
// #...
// #...
// #...

// #...
// #...

// ...

// ...

// #...
// #...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// #...
// #...
// #...
// #...
// #...
// #...
// #...
// #...

// #endif // defined(_M_AMD64) && !defined(RC_INVOKED) && !defined(MIDL_PASS)

// #if !defined(RC_INVOKED)

// #...

// #...
// #...
// #...
// #...
// #...

// #...

// #endif // !defined(RC_INVOKED)

// ...

// ...

// #...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// #endif // _AMD64_

// #ifdef _ALPHA_                          // winnt
// ...
// #if defined(_M_ALPHA)                   // winnt
// #...
// #endif                                  // winnt
// #endif                                  // winnt

// #if defined(_M_ALPHA)
// #...
// #else
extern(Windows) export _TEB NtCurrentTeb();
// #endif

// #ifdef _ALPHA_

// #...
// #...

// #if !defined(RC_INVOKED)

// #...

// #...
// #...
// #...

// #...

// #endif

// #ifndef _PORTABLE_32BIT_CONTEXT

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// #else

// #...

// #endif // _PORTABLE_32BIT_CONTEXT

// #endif // _ALPHA_

// #ifdef _ALPHA_

// ...

// #endif // _ALPHA_

// #ifdef _X86_

// #if !defined(MIDL_PASS)
// #if !defined(RC_INVOKED)

// #if _MSC_VER >= 1200
// #pragma warning(push)
// #endif
// #pragma warning(disable:4164)   // disable C4164 warning so that apps that

// #ifdef _M_IX86
// #pragma function(_enable)
// #pragma function(_disable)
// #endif

// #if _MSC_VER >= 1200
// #pragma warning(pop)
// #else
// #...
// #endif

// #endif
// #endif

// #if !defined(MIDL_PASS) && defined(_M_IX86)
// #if _MSC_VER >= 1200
// #pragma warning(push)
// #endif
// #pragma warning (disable:4035)        // disable 4035 (function must return something)
PVOID GetFiberData() { asm { mov EAX, FS:[0x10]; mov EAX, [EAX]; } }
PVOID GetCurrentFiber() { asm { mov EAX, FS:[0x10]; } }

// #if _MSC_VER >= 1200
// #pragma warning(pop)
// #else
// #...
// #endif
// #endif

enum : uint { SIZE_OF_80387_REGISTERS = 80 }

// #if !defined(RC_INVOKED)

enum : uint { CONTEXT_i386 = 0x00010000 }
enum : uint { CONTEXT_i486 = 0x00010000 }

enum : uint { CONTEXT_CONTROL = CONTEXT_i386 | 0x00000001L }
enum : uint { CONTEXT_INTEGER = CONTEXT_i386 | 0x00000002L }
enum : uint { CONTEXT_SEGMENTS = CONTEXT_i386 | 0x00000004L }
enum : uint { CONTEXT_FLOATING_POINT = CONTEXT_i386 | 0x00000008L }
enum : uint { CONTEXT_DEBUG_REGISTERS = CONTEXT_i386 | 0x00000010L }
enum : uint { CONTEXT_EXTENDED_REGISTERS = CONTEXT_i386 | 0x00000020L }

enum : uint { CONTEXT_FULL = CONTEXT_CONTROL | CONTEXT_INTEGER | CONTEXT_SEGMENTS }

// #endif

enum : uint { MAXIMUM_SUPPORTED_EXTENSION = 512 }

struct _FLOATING_SAVE_AREA {
  DWORD ControlWord;
  DWORD StatusWord;
  DWORD TagWord;
  DWORD ErrorOffset;
  DWORD ErrorSelector;
  DWORD DataOffset;
  DWORD DataSelector;
  BYTE RegisterArea[SIZE_OF_80387_REGISTERS];
  DWORD Cr0NpxState;
}
alias _FLOATING_SAVE_AREA FLOATING_SAVE_AREA;

alias FLOATING_SAVE_AREA* PFLOATING_SAVE_AREA;

struct _CONTEXT {

  DWORD ContextFlags;

  DWORD Dr0;
  DWORD Dr1;
  DWORD Dr2;
  DWORD Dr3;
  DWORD Dr6;
  DWORD Dr7;

  FLOATING_SAVE_AREA FloatSave;

  DWORD SegGs;
  DWORD SegFs;
  DWORD SegEs;
  DWORD SegDs;

  DWORD Edi;
  DWORD Esi;
  DWORD Ebx;
  DWORD Edx;
  DWORD Ecx;
  DWORD Eax;

  DWORD Ebp;
  DWORD Eip;
  DWORD SegCs;
  DWORD EFlags;
  DWORD Esp;
  DWORD SegSs;

  BYTE ExtendedRegisters[MAXIMUM_SUPPORTED_EXTENSION];
}
alias _CONTEXT CONTEXT;

alias CONTEXT* PCONTEXT;

// #endif //_X86_

// #ifndef _LDT_ENTRY_DEFINED
// #define _LDT_ENTRY_DEFINED

struct _LDT_ENTRY {
  WORD LimitLow;
  WORD BaseLow;
union {
struct {
  BYTE BaseMid;
  BYTE Flags1;
  BYTE Flags2;
  BYTE BaseHi;
}

struct {
// DWORD   BaseMid : 8;
// DWORD   Type : 5;
// DWORD   Dpl : 2;
// DWORD   Pres : 1;
// DWORD   LimitHi : 4;
// DWORD   Sys : 1;
// DWORD   Reserved_0 : 1;
// DWORD   Default_Big : 1;
// DWORD   Granularity : 1;
// DWORD   BaseHi : 8;
}

}

}
alias _LDT_ENTRY LDT_ENTRY;
alias _LDT_ENTRY* PLDT_ENTRY;

// #endif

// #if defined(_MIPS_)

// #...
// #...

// #if !defined(RC_INVOKED)

// #...

// #...
// #...
// #...
// #...
// #...

// #...
// ...

// #endif

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// #...

// #endif // MIPS

// #if defined(_MIPS_)

// ...

// #endif // MIPS

// #if defined(_PPC_)

// #if defined(_M_PPC) && defined(_MSC_VER) && (_MSC_VER>=1000)
// ...
// #...
// #elif defined(_M_PPC)
// ...
// #...
// #endif

// #...
// #...

// #if !defined(RC_INVOKED)

// #...
// #...
// #...
// #...

// #...

// #endif

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// #endif // defined(_PPC_)

// #if defined(_MPPC_)

// #if defined(_M_PPC) && defined(_MSC_VER) && (_MSC_VER>=1000)
// ...
// #...
// #elif defined(_M_PPC)
// ...
// #...
// #endif

// #...
// #...

// #if !defined(RC_INVOKED)

// #...
// #...
// #...
// #...

// #...

// #endif

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// #endif // defined(_MPPC_)

// #if !defined(__midl) && !defined(GENUTIL) && !defined(_GENIA64_) && defined(_IA64_)

// ...
// #if defined(_M_IA64)                    // winnt
// #...
// #endif                                  // winnt

// #if defined(_M_IA64)
// #...
// #else
// ...
// #endif

// #...
// #...

// #endif  // !defined(__midl) && !defined(GENUTIL) && !defined(_GENIA64_) && defined(_M_IA64)

// #ifdef _IA64_

// #if !defined(RC_INVOKED)

// #...

// #...
// #...
// #...
// #...
// #...
// #...

// #...
// #...

// #endif // !defined(RC_INVOKED)

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// ...

// #endif // _IA64_

// #ifdef _IA64_

// ...

// #endif // _IA64_

enum : uint { EXCEPTION_NONCONTINUABLE = 0x1 }
enum : uint { EXCEPTION_MAXIMUM_PARAMETERS = 15 }

struct _EXCEPTION_RECORD {
  DWORD ExceptionCode;
  DWORD ExceptionFlags;
  _EXCEPTION_RECORD *ExceptionRecord;
  PVOID ExceptionAddress;
  DWORD NumberParameters;
  ULONG_PTR ExceptionInformation[EXCEPTION_MAXIMUM_PARAMETERS];
}
alias _EXCEPTION_RECORD EXCEPTION_RECORD;

alias EXCEPTION_RECORD* PEXCEPTION_RECORD;

struct _EXCEPTION_RECORD32 {
  DWORD ExceptionCode;
  DWORD ExceptionFlags;
  DWORD ExceptionRecord;
  DWORD ExceptionAddress;
  DWORD NumberParameters;
  DWORD ExceptionInformation[EXCEPTION_MAXIMUM_PARAMETERS];
}
alias _EXCEPTION_RECORD32 EXCEPTION_RECORD32;
alias _EXCEPTION_RECORD32* PEXCEPTION_RECORD32;

struct _EXCEPTION_RECORD64 {
  DWORD ExceptionCode;
  DWORD ExceptionFlags;
  DWORD64 ExceptionRecord;
  DWORD64 ExceptionAddress;
  DWORD NumberParameters;
  DWORD __unusedAlignment;
  DWORD64 ExceptionInformation[EXCEPTION_MAXIMUM_PARAMETERS];
}
alias _EXCEPTION_RECORD64 EXCEPTION_RECORD64;
alias _EXCEPTION_RECORD64* PEXCEPTION_RECORD64;

struct _EXCEPTION_POINTERS {
  PEXCEPTION_RECORD ExceptionRecord;
  PCONTEXT ContextRecord;
}
alias _EXCEPTION_POINTERS EXCEPTION_POINTERS;
alias _EXCEPTION_POINTERS* PEXCEPTION_POINTERS;

alias PVOID PACCESS_TOKEN;
alias PVOID PSECURITY_DESCRIPTOR;
alias PVOID PSID;

alias DWORD ACCESS_MASK;
alias ACCESS_MASK* PACCESS_MASK;

enum : uint { DELETE = 0x00010000 }
enum : uint { READ_CONTROL = 0x00020000 }
enum : uint { WRITE_DAC = 0x00040000 }
enum : uint { WRITE_OWNER = 0x00080000 }
enum : uint { SYNCHRONIZE = 0x00100000 }

enum : uint { STANDARD_RIGHTS_REQUIRED = 0x000F0000 }

enum : uint { STANDARD_RIGHTS_READ = READ_CONTROL }
enum : uint { STANDARD_RIGHTS_WRITE = READ_CONTROL }
enum : uint { STANDARD_RIGHTS_EXECUTE = READ_CONTROL }

enum : uint { STANDARD_RIGHTS_ALL = 0x001F0000 }

enum : uint { SPECIFIC_RIGHTS_ALL = 0x0000FFFF }

enum : uint { ACCESS_SYSTEM_SECURITY = 0x01000000 }

enum : uint { MAXIMUM_ALLOWED = 0x02000000 }

enum : uint { GENERIC_READ = 0x80000000 }
enum : uint { GENERIC_WRITE = 0x40000000 }
enum : uint { GENERIC_EXECUTE = 0x20000000 }
enum : uint { GENERIC_ALL = 0x10000000 }

struct _GENERIC_MAPPING {
  ACCESS_MASK GenericRead;
  ACCESS_MASK GenericWrite;
  ACCESS_MASK GenericExecute;
  ACCESS_MASK GenericAll;
}
alias _GENERIC_MAPPING GENERIC_MAPPING;

alias GENERIC_MAPPING* PGENERIC_MAPPING;

align(4):

struct _LUID_AND_ATTRIBUTES {
  LUID Luid;
  DWORD Attributes;
}
alias _LUID_AND_ATTRIBUTES LUID_AND_ATTRIBUTES;
alias _LUID_AND_ATTRIBUTES* PLUID_AND_ATTRIBUTES;

alias LUID_AND_ATTRIBUTES LUID_AND_ATTRIBUTES_ARRAY[ANYSIZE_ARRAY];
alias LUID_AND_ATTRIBUTES_ARRAY* PLUID_AND_ATTRIBUTES_ARRAY;

align:

// #ifndef SID_IDENTIFIER_AUTHORITY_DEFINED
// #define SID_IDENTIFIER_AUTHORITY_DEFINED
struct _SID_IDENTIFIER_AUTHORITY {
  BYTE Value[6];
}
alias _SID_IDENTIFIER_AUTHORITY SID_IDENTIFIER_AUTHORITY;
alias _SID_IDENTIFIER_AUTHORITY* PSID_IDENTIFIER_AUTHORITY;

// #endif

// #ifndef SID_DEFINED
// #define SID_DEFINED
struct _SID {
  BYTE Revision;
  BYTE SubAuthorityCount;
  SID_IDENTIFIER_AUTHORITY IdentifierAuthority;
// #ifdef MIDL_PASS
// ...
// #else // MIDL_PASS
  DWORD SubAuthority[ANYSIZE_ARRAY];
// #endif // MIDL_PASS
}
alias _SID SID;
alias _SID* PISID;

// #endif

enum : uint { SID_REVISION = 1 }
enum : uint { SID_MAX_SUB_AUTHORITIES = 15 }
enum : uint { SID_RECOMMENDED_SUB_AUTHORITIES = 1 }

// #ifndef MIDL_PASS
const uint SECURITY_MAX_SID_SIZE = SID.sizeof - DWORD.sizeof + (SID_MAX_SUB_AUTHORITIES * DWORD.sizeof);
// #endif // MIDL_PASS

alias int _SID_NAME_USE;
enum {
  SidTypeUser = 1,
  SidTypeGroup,
  SidTypeDomain,
  SidTypeAlias,
  SidTypeWellKnownGroup,
  SidTypeDeletedAccount,
  SidTypeInvalid,
  SidTypeUnknown,
  SidTypeComputer,
}
alias _SID_NAME_USE SID_NAME_USE;
alias _SID_NAME_USE* PSID_NAME_USE;

struct _SID_AND_ATTRIBUTES {
  PSID Sid;
  DWORD Attributes;
}
alias _SID_AND_ATTRIBUTES SID_AND_ATTRIBUTES;
alias _SID_AND_ATTRIBUTES* PSID_AND_ATTRIBUTES;

alias SID_AND_ATTRIBUTES SID_AND_ATTRIBUTES_ARRAY[ANYSIZE_ARRAY];
alias SID_AND_ATTRIBUTES_ARRAY* PSID_AND_ATTRIBUTES_ARRAY;

// #define SECURITY_NULL_SID_AUTHORITY {0,0,0,0,0,0}
// #define SECURITY_WORLD_SID_AUTHORITY {0,0,0,0,0,1}
// #define SECURITY_LOCAL_SID_AUTHORITY {0,0,0,0,0,2}
// #define SECURITY_CREATOR_SID_AUTHORITY {0,0,0,0,0,3}
// #define SECURITY_NON_UNIQUE_AUTHORITY {0,0,0,0,0,4}
// #define SECURITY_RESOURCE_MANAGER_AUTHORITY {0,0,0,0,0,9}

enum : uint { SECURITY_NULL_RID = 0x00000000 }
enum : uint { SECURITY_WORLD_RID = 0x00000000 }
enum : uint { SECURITY_LOCAL_RID = 0x00000000 }

enum : uint { SECURITY_CREATOR_OWNER_RID = 0x00000000 }
enum : uint { SECURITY_CREATOR_GROUP_RID = 0x00000001 }

enum : uint { SECURITY_CREATOR_OWNER_SERVER_RID = 0x00000002 }
enum : uint { SECURITY_CREATOR_GROUP_SERVER_RID = 0x00000003 }

// #define SECURITY_NT_AUTHORITY {0,0,0,0,0,5}

enum : uint { SECURITY_DIALUP_RID = 0x00000001 }
enum : uint { SECURITY_NETWORK_RID = 0x00000002 }
enum : uint { SECURITY_BATCH_RID = 0x00000003 }
enum : uint { SECURITY_INTERACTIVE_RID = 0x00000004 }
enum : uint { SECURITY_SERVICE_RID = 0x00000006 }
enum : uint { SECURITY_ANONYMOUS_LOGON_RID = 0x00000007 }
enum : uint { SECURITY_PROXY_RID = 0x00000008 }
enum : uint { SECURITY_ENTERPRISE_CONTROLLERS_RID = 0x00000009 }
alias SECURITY_ENTERPRISE_CONTROLLERS_RID SECURITY_SERVER_LOGON_RID;
enum : uint { SECURITY_PRINCIPAL_SELF_RID = 0x0000000A }
enum : uint { SECURITY_AUTHENTICATED_USER_RID = 0x0000000B }
enum : uint { SECURITY_RESTRICTED_CODE_RID = 0x0000000C }
enum : uint { SECURITY_TERMINAL_SERVER_RID = 0x0000000D }
enum : uint { SECURITY_REMOTE_LOGON_RID = 0x0000000E }

enum : uint { SECURITY_LOGON_IDS_RID = 0x00000005 }
enum : uint { SECURITY_LOGON_IDS_RID_COUNT = 3 }

enum : uint { SECURITY_LOCAL_SYSTEM_RID = 0x00000012 }
enum : uint { SECURITY_LOCAL_SERVICE_RID = 0x00000013 }
enum : uint { SECURITY_NETWORK_SERVICE_RID = 0x00000014 }

enum : uint { SECURITY_NT_NON_UNIQUE = 0x00000015 }
enum : uint { SECURITY_NT_NON_UNIQUE_SUB_AUTH_COUNT = 3 }

enum : uint { SECURITY_BUILTIN_DOMAIN_RID = 0x00000020 }

enum : uint { DOMAIN_USER_RID_ADMIN = 0x000001F4 }
enum : uint { DOMAIN_USER_RID_GUEST = 0x000001F5 }
enum : uint { DOMAIN_USER_RID_KRBTGT = 0x000001F6 }

enum : uint { DOMAIN_GROUP_RID_ADMINS = 0x00000200 }
enum : uint { DOMAIN_GROUP_RID_USERS = 0x00000201 }
enum : uint { DOMAIN_GROUP_RID_GUESTS = 0x00000202 }
enum : uint { DOMAIN_GROUP_RID_COMPUTERS = 0x00000203 }
enum : uint { DOMAIN_GROUP_RID_CONTROLLERS = 0x00000204 }
enum : uint { DOMAIN_GROUP_RID_CERT_ADMINS = 0x00000205 }
enum : uint { DOMAIN_GROUP_RID_SCHEMA_ADMINS = 0x00000206 }
enum : uint { DOMAIN_GROUP_RID_ENTERPRISE_ADMINS = 0x00000207 }
enum : uint { DOMAIN_GROUP_RID_POLICY_ADMINS = 0x00000208 }

enum : uint { DOMAIN_ALIAS_RID_ADMINS = 0x00000220 }
enum : uint { DOMAIN_ALIAS_RID_USERS = 0x00000221 }
enum : uint { DOMAIN_ALIAS_RID_GUESTS = 0x00000222 }
enum : uint { DOMAIN_ALIAS_RID_POWER_USERS = 0x00000223 }

enum : uint { DOMAIN_ALIAS_RID_ACCOUNT_OPS = 0x00000224 }
enum : uint { DOMAIN_ALIAS_RID_SYSTEM_OPS = 0x00000225 }
enum : uint { DOMAIN_ALIAS_RID_PRINT_OPS = 0x00000226 }
enum : uint { DOMAIN_ALIAS_RID_BACKUP_OPS = 0x00000227 }

enum : uint { DOMAIN_ALIAS_RID_REPLICATOR = 0x00000228 }
enum : uint { DOMAIN_ALIAS_RID_RAS_SERVERS = 0x00000229 }
enum : uint { DOMAIN_ALIAS_RID_PREW2KCOMPACCESS = 0x0000022A }
enum : uint { DOMAIN_ALIAS_RID_REMOTE_DESKTOP_USERS = 0x0000022B }
enum : uint { DOMAIN_ALIAS_RID_NETWORK_CONFIGURATION_OPS = 0x0000022C }

const LUID SYSTEM_LUID = {LowPart: 0x3e7, HighPart: 0x0};
const LUID ANONYMOUS_LOGON_LUID = {LowPart: 0x3e6, HighPart: 0x0};
const LUID LOCALSERVICE_LUID = {LowPart: 0x3e5, HighPart: 0x0};
const LUID NETWORKSERVICE_LUID = {LowPart: 0x3e4, HighPart: 0x0};

enum : uint { SE_GROUP_MANDATORY = 0x00000001 }
enum : uint { SE_GROUP_ENABLED_BY_DEFAULT = 0x00000002 }
enum : uint { SE_GROUP_ENABLED = 0x00000004 }
enum : uint { SE_GROUP_OWNER = 0x00000008 }
enum : uint { SE_GROUP_USE_FOR_DENY_ONLY = 0x00000010 }
enum : uint { SE_GROUP_LOGON_ID = 0xC0000000 }
enum : uint { SE_GROUP_RESOURCE = 0x20000000 }

enum : uint { ACL_REVISION = 2 }
enum : uint { ACL_REVISION_DS = 4 }

enum : uint { ACL_REVISION1 = 1 }
enum { MIN_ACL_REVISION = 2 }
enum : uint { ACL_REVISION2 = 2 }
enum : uint { ACL_REVISION3 = 3 }
enum : uint { ACL_REVISION4 = 4 }
alias ACL_REVISION4 MAX_ACL_REVISION;

struct _ACL {
  BYTE AclRevision;
  BYTE Sbz1;
  WORD AclSize;
  WORD AceCount;
  WORD Sbz2;
}
alias _ACL ACL;

alias ACL* PACL;

struct _ACE_HEADER {
  BYTE AceType;
  BYTE AceFlags;
  WORD AceSize;
}
alias _ACE_HEADER ACE_HEADER;

alias ACE_HEADER* PACE_HEADER;

enum : uint { ACCESS_MIN_MS_ACE_TYPE = 0x0 }
enum : uint { ACCESS_ALLOWED_ACE_TYPE = 0x0 }
enum : uint { ACCESS_DENIED_ACE_TYPE = 0x1 }
enum : uint { SYSTEM_AUDIT_ACE_TYPE = 0x2 }
enum : uint { SYSTEM_ALARM_ACE_TYPE = 0x3 }
enum : uint { ACCESS_MAX_MS_V2_ACE_TYPE = 0x3 }

enum : uint { ACCESS_ALLOWED_COMPOUND_ACE_TYPE = 0x4 }
enum : uint { ACCESS_MAX_MS_V3_ACE_TYPE = 0x4 }

enum : uint { ACCESS_MIN_MS_OBJECT_ACE_TYPE = 0x5 }
enum : uint { ACCESS_ALLOWED_OBJECT_ACE_TYPE = 0x5 }
enum : uint { ACCESS_DENIED_OBJECT_ACE_TYPE = 0x6 }
enum : uint { SYSTEM_AUDIT_OBJECT_ACE_TYPE = 0x7 }
enum : uint { SYSTEM_ALARM_OBJECT_ACE_TYPE = 0x8 }
enum : uint { ACCESS_MAX_MS_OBJECT_ACE_TYPE = 0x8 }

enum : uint { ACCESS_MAX_MS_V4_ACE_TYPE = 0x8 }
enum : uint { ACCESS_MAX_MS_ACE_TYPE = 0x8 }

enum : uint { ACCESS_ALLOWED_CALLBACK_ACE_TYPE = 0x9 }
enum : uint { ACCESS_DENIED_CALLBACK_ACE_TYPE = 0xA }
enum : uint { ACCESS_ALLOWED_CALLBACK_OBJECT_ACE_TYPE = 0xB }
enum : uint { ACCESS_DENIED_CALLBACK_OBJECT_ACE_TYPE = 0xC }
enum : uint { SYSTEM_AUDIT_CALLBACK_ACE_TYPE = 0xD }
enum : uint { SYSTEM_ALARM_CALLBACK_ACE_TYPE = 0xE }
enum : uint { SYSTEM_AUDIT_CALLBACK_OBJECT_ACE_TYPE = 0xF }
enum : uint { SYSTEM_ALARM_CALLBACK_OBJECT_ACE_TYPE = 0x10 }

enum : uint { ACCESS_MAX_MS_V5_ACE_TYPE = 0x10 }

enum : uint { OBJECT_INHERIT_ACE = 0x1 }
enum : uint { CONTAINER_INHERIT_ACE = 0x2 }
enum : uint { NO_PROPAGATE_INHERIT_ACE = 0x4 }
enum : uint { INHERIT_ONLY_ACE = 0x8 }
enum : uint { INHERITED_ACE = 0x10 }
enum : uint { VALID_INHERIT_FLAGS = 0x1F }

enum : uint { SUCCESSFUL_ACCESS_ACE_FLAG = 0x40 }
enum : uint { FAILED_ACCESS_ACE_FLAG = 0x80 }

struct _ACCESS_ALLOWED_ACE {
  ACE_HEADER Header;
  ACCESS_MASK Mask;
  DWORD SidStart;
}
alias _ACCESS_ALLOWED_ACE ACCESS_ALLOWED_ACE;

alias ACCESS_ALLOWED_ACE* PACCESS_ALLOWED_ACE;

struct _ACCESS_DENIED_ACE {
  ACE_HEADER Header;
  ACCESS_MASK Mask;
  DWORD SidStart;
}
alias _ACCESS_DENIED_ACE ACCESS_DENIED_ACE;

alias ACCESS_DENIED_ACE* PACCESS_DENIED_ACE;

struct _SYSTEM_AUDIT_ACE {
  ACE_HEADER Header;
  ACCESS_MASK Mask;
  DWORD SidStart;
}
alias _SYSTEM_AUDIT_ACE SYSTEM_AUDIT_ACE;

alias SYSTEM_AUDIT_ACE* PSYSTEM_AUDIT_ACE;

struct _SYSTEM_ALARM_ACE {
  ACE_HEADER Header;
  ACCESS_MASK Mask;
  DWORD SidStart;
}
alias _SYSTEM_ALARM_ACE SYSTEM_ALARM_ACE;

alias SYSTEM_ALARM_ACE* PSYSTEM_ALARM_ACE;

struct _ACCESS_ALLOWED_OBJECT_ACE {
  ACE_HEADER Header;
  ACCESS_MASK Mask;
  DWORD Flags;
  GUID ObjectType;
  GUID InheritedObjectType;
  DWORD SidStart;
}
alias _ACCESS_ALLOWED_OBJECT_ACE ACCESS_ALLOWED_OBJECT_ACE;
alias _ACCESS_ALLOWED_OBJECT_ACE* PACCESS_ALLOWED_OBJECT_ACE;

struct _ACCESS_DENIED_OBJECT_ACE {
  ACE_HEADER Header;
  ACCESS_MASK Mask;
  DWORD Flags;
  GUID ObjectType;
  GUID InheritedObjectType;
  DWORD SidStart;
}
alias _ACCESS_DENIED_OBJECT_ACE ACCESS_DENIED_OBJECT_ACE;
alias _ACCESS_DENIED_OBJECT_ACE* PACCESS_DENIED_OBJECT_ACE;

struct _SYSTEM_AUDIT_OBJECT_ACE {
  ACE_HEADER Header;
  ACCESS_MASK Mask;
  DWORD Flags;
  GUID ObjectType;
  GUID InheritedObjectType;
  DWORD SidStart;
}
alias _SYSTEM_AUDIT_OBJECT_ACE SYSTEM_AUDIT_OBJECT_ACE;
alias _SYSTEM_AUDIT_OBJECT_ACE* PSYSTEM_AUDIT_OBJECT_ACE;

struct _SYSTEM_ALARM_OBJECT_ACE {
  ACE_HEADER Header;
  ACCESS_MASK Mask;
  DWORD Flags;
  GUID ObjectType;
  GUID InheritedObjectType;
  DWORD SidStart;
}
alias _SYSTEM_ALARM_OBJECT_ACE SYSTEM_ALARM_OBJECT_ACE;
alias _SYSTEM_ALARM_OBJECT_ACE* PSYSTEM_ALARM_OBJECT_ACE;

struct _ACCESS_ALLOWED_CALLBACK_ACE {
  ACE_HEADER Header;
  ACCESS_MASK Mask;
  DWORD SidStart;
}
alias _ACCESS_ALLOWED_CALLBACK_ACE ACCESS_ALLOWED_CALLBACK_ACE;
alias _ACCESS_ALLOWED_CALLBACK_ACE* PACCESS_ALLOWED_CALLBACK_ACE;

struct _ACCESS_DENIED_CALLBACK_ACE {
  ACE_HEADER Header;
  ACCESS_MASK Mask;
  DWORD SidStart;
}
alias _ACCESS_DENIED_CALLBACK_ACE ACCESS_DENIED_CALLBACK_ACE;
alias _ACCESS_DENIED_CALLBACK_ACE* PACCESS_DENIED_CALLBACK_ACE;

struct _SYSTEM_AUDIT_CALLBACK_ACE {
  ACE_HEADER Header;
  ACCESS_MASK Mask;
  DWORD SidStart;
}
alias _SYSTEM_AUDIT_CALLBACK_ACE SYSTEM_AUDIT_CALLBACK_ACE;
alias _SYSTEM_AUDIT_CALLBACK_ACE* PSYSTEM_AUDIT_CALLBACK_ACE;

struct _SYSTEM_ALARM_CALLBACK_ACE {
  ACE_HEADER Header;
  ACCESS_MASK Mask;
  DWORD SidStart;
}
alias _SYSTEM_ALARM_CALLBACK_ACE SYSTEM_ALARM_CALLBACK_ACE;
alias _SYSTEM_ALARM_CALLBACK_ACE* PSYSTEM_ALARM_CALLBACK_ACE;

struct _ACCESS_ALLOWED_CALLBACK_OBJECT_ACE {
  ACE_HEADER Header;
  ACCESS_MASK Mask;
  DWORD Flags;
  GUID ObjectType;
  GUID InheritedObjectType;
  DWORD SidStart;
}
alias _ACCESS_ALLOWED_CALLBACK_OBJECT_ACE ACCESS_ALLOWED_CALLBACK_OBJECT_ACE;
alias _ACCESS_ALLOWED_CALLBACK_OBJECT_ACE* PACCESS_ALLOWED_CALLBACK_OBJECT_ACE;

struct _ACCESS_DENIED_CALLBACK_OBJECT_ACE {
  ACE_HEADER Header;
  ACCESS_MASK Mask;
  DWORD Flags;
  GUID ObjectType;
  GUID InheritedObjectType;
  DWORD SidStart;
}
alias _ACCESS_DENIED_CALLBACK_OBJECT_ACE ACCESS_DENIED_CALLBACK_OBJECT_ACE;
alias _ACCESS_DENIED_CALLBACK_OBJECT_ACE* PACCESS_DENIED_CALLBACK_OBJECT_ACE;

struct _SYSTEM_AUDIT_CALLBACK_OBJECT_ACE {
  ACE_HEADER Header;
  ACCESS_MASK Mask;
  DWORD Flags;
  GUID ObjectType;
  GUID InheritedObjectType;
  DWORD SidStart;
}
alias _SYSTEM_AUDIT_CALLBACK_OBJECT_ACE SYSTEM_AUDIT_CALLBACK_OBJECT_ACE;
alias _SYSTEM_AUDIT_CALLBACK_OBJECT_ACE* PSYSTEM_AUDIT_CALLBACK_OBJECT_ACE;

struct _SYSTEM_ALARM_CALLBACK_OBJECT_ACE {
  ACE_HEADER Header;
  ACCESS_MASK Mask;
  DWORD Flags;
  GUID ObjectType;
  GUID InheritedObjectType;
  DWORD SidStart;
}
alias _SYSTEM_ALARM_CALLBACK_OBJECT_ACE SYSTEM_ALARM_CALLBACK_OBJECT_ACE;
alias _SYSTEM_ALARM_CALLBACK_OBJECT_ACE* PSYSTEM_ALARM_CALLBACK_OBJECT_ACE;

enum : uint { ACE_OBJECT_TYPE_PRESENT = 0x1 }
enum : uint { ACE_INHERITED_OBJECT_TYPE_PRESENT = 0x2 }

alias int _ACL_INFORMATION_CLASS;
enum {
  AclRevisionInformation = 1,
  AclSizeInformation,
}
alias _ACL_INFORMATION_CLASS ACL_INFORMATION_CLASS;

struct _ACL_REVISION_INFORMATION {
  DWORD AclRevision;
}
alias _ACL_REVISION_INFORMATION ACL_REVISION_INFORMATION;

alias ACL_REVISION_INFORMATION* PACL_REVISION_INFORMATION;

struct _ACL_SIZE_INFORMATION {
  DWORD AceCount;
  DWORD AclBytesInUse;
  DWORD AclBytesFree;
}
alias _ACL_SIZE_INFORMATION ACL_SIZE_INFORMATION;

alias ACL_SIZE_INFORMATION* PACL_SIZE_INFORMATION;

enum : uint { SECURITY_DESCRIPTOR_REVISION = 1 }
enum : uint { SECURITY_DESCRIPTOR_REVISION1 = 1 }

const uint SECURITY_DESCRIPTOR_MIN_LENGTH = SECURITY_DESCRIPTOR.sizeof;

alias WORD SECURITY_DESCRIPTOR_CONTROL;
alias WORD* PSECURITY_DESCRIPTOR_CONTROL;

enum : uint { SE_OWNER_DEFAULTED = 0x0001 }
enum : uint { SE_GROUP_DEFAULTED = 0x0002 }
enum : uint { SE_DACL_PRESENT = 0x0004 }
enum : uint { SE_DACL_DEFAULTED = 0x0008 }
enum : uint { SE_SACL_PRESENT = 0x0010 }
enum : uint { SE_SACL_DEFAULTED = 0x0020 }
enum : uint { SE_DACL_AUTO_INHERIT_REQ = 0x0100 }
enum : uint { SE_SACL_AUTO_INHERIT_REQ = 0x0200 }
enum : uint { SE_DACL_AUTO_INHERITED = 0x0400 }
enum : uint { SE_SACL_AUTO_INHERITED = 0x0800 }
enum : uint { SE_DACL_PROTECTED = 0x1000 }
enum : uint { SE_SACL_PROTECTED = 0x2000 }
enum : uint { SE_RM_CONTROL_VALID = 0x4000 }
enum : uint { SE_SELF_RELATIVE = 0x8000 }

struct _SECURITY_DESCRIPTOR_RELATIVE {
  BYTE Revision;
  BYTE Sbz1;
  SECURITY_DESCRIPTOR_CONTROL Control;
  DWORD Owner;
  DWORD Group;
  DWORD Sacl;
  DWORD Dacl;
}
alias _SECURITY_DESCRIPTOR_RELATIVE SECURITY_DESCRIPTOR_RELATIVE;
alias _SECURITY_DESCRIPTOR_RELATIVE* PISECURITY_DESCRIPTOR_RELATIVE;

struct _SECURITY_DESCRIPTOR {
  BYTE Revision;
  BYTE Sbz1;
  SECURITY_DESCRIPTOR_CONTROL Control;
  PSID Owner;
  PSID Group;
  PACL Sacl;
  PACL Dacl;
}
alias _SECURITY_DESCRIPTOR SECURITY_DESCRIPTOR;
alias _SECURITY_DESCRIPTOR* PISECURITY_DESCRIPTOR;

struct _OBJECT_TYPE_LIST {
  WORD Level;
  WORD Sbz;
  GUID *ObjectType;
}
alias _OBJECT_TYPE_LIST OBJECT_TYPE_LIST;
alias _OBJECT_TYPE_LIST* POBJECT_TYPE_LIST;

enum : uint { ACCESS_OBJECT_GUID = 0 }
enum : uint { ACCESS_PROPERTY_SET_GUID = 1 }
enum : uint { ACCESS_PROPERTY_GUID = 2 }

enum : uint { ACCESS_MAX_LEVEL = 4 }

alias int _AUDIT_EVENT_TYPE;
enum {
  AuditEventObjectAccess,
  AuditEventDirectoryServiceAccess,
}
alias _AUDIT_EVENT_TYPE AUDIT_EVENT_TYPE;
alias _AUDIT_EVENT_TYPE* PAUDIT_EVENT_TYPE;

enum : uint { AUDIT_ALLOW_NO_PRIVILEGE = 0x1 }

const char[] ACCESS_DS_SOURCE_A = "DS";
const wchar[] ACCESS_DS_SOURCE_W = "DS";
const char[] ACCESS_DS_OBJECT_TYPE_NAME_A = "Directory Service Object";
const wchar[] ACCESS_DS_OBJECT_TYPE_NAME_W = "Directory Service Object";

enum : uint { SE_PRIVILEGE_ENABLED_BY_DEFAULT = 0x00000001 }
enum : uint { SE_PRIVILEGE_ENABLED = 0x00000002 }
enum : uint { SE_PRIVILEGE_USED_FOR_ACCESS = 0x80000000 }

enum : uint { PRIVILEGE_SET_ALL_NECESSARY = 1 }

struct _PRIVILEGE_SET {
  DWORD PrivilegeCount;
  DWORD Control;
  LUID_AND_ATTRIBUTES Privilege[ANYSIZE_ARRAY];
}
alias _PRIVILEGE_SET PRIVILEGE_SET;
alias _PRIVILEGE_SET* PPRIVILEGE_SET;

const TCHAR[] SE_CREATE_TOKEN_NAME = "SeCreateTokenPrivilege";
const TCHAR[] SE_ASSIGNPRIMARYTOKEN_NAME = "SeAssignPrimaryTokenPrivilege";
const TCHAR[] SE_LOCK_MEMORY_NAME = "SeLockMemoryPrivilege";
const TCHAR[] SE_INCREASE_QUOTA_NAME = "SeIncreaseQuotaPrivilege";
const TCHAR[] SE_UNSOLICITED_INPUT_NAME = "SeUnsolicitedInputPrivilege";
const TCHAR[] SE_MACHINE_ACCOUNT_NAME = "SeMachineAccountPrivilege";
const TCHAR[] SE_TCB_NAME = "SeTcbPrivilege";
const TCHAR[] SE_SECURITY_NAME = "SeSecurityPrivilege";
const TCHAR[] SE_TAKE_OWNERSHIP_NAME = "SeTakeOwnershipPrivilege";
const TCHAR[] SE_LOAD_DRIVER_NAME = "SeLoadDriverPrivilege";
const TCHAR[] SE_SYSTEM_PROFILE_NAME = "SeSystemProfilePrivilege";
const TCHAR[] SE_SYSTEMTIME_NAME = "SeSystemtimePrivilege";
const TCHAR[] SE_PROF_SINGLE_PROCESS_NAME = "SeProfileSingleProcessPrivilege";
const TCHAR[] SE_INC_BASE_PRIORITY_NAME = "SeIncreaseBasePriorityPrivilege";
const TCHAR[] SE_CREATE_PAGEFILE_NAME = "SeCreatePagefilePrivilege";
const TCHAR[] SE_CREATE_PERMANENT_NAME = "SeCreatePermanentPrivilege";
const TCHAR[] SE_BACKUP_NAME = "SeBackupPrivilege";
const TCHAR[] SE_RESTORE_NAME = "SeRestorePrivilege";
const TCHAR[] SE_SHUTDOWN_NAME = "SeShutdownPrivilege";
const TCHAR[] SE_DEBUG_NAME = "SeDebugPrivilege";
const TCHAR[] SE_AUDIT_NAME = "SeAuditPrivilege";
const TCHAR[] SE_SYSTEM_ENVIRONMENT_NAME = "SeSystemEnvironmentPrivilege";
const TCHAR[] SE_CHANGE_NOTIFY_NAME = "SeChangeNotifyPrivilege";
const TCHAR[] SE_REMOTE_SHUTDOWN_NAME = "SeRemoteShutdownPrivilege";
const TCHAR[] SE_UNDOCK_NAME = "SeUndockPrivilege";
const TCHAR[] SE_SYNC_AGENT_NAME = "SeSyncAgentPrivilege";
const TCHAR[] SE_ENABLE_DELEGATION_NAME = "SeEnableDelegationPrivilege";
const TCHAR[] SE_MANAGE_VOLUME_NAME = "SeManageVolumePrivilege";

alias int _SECURITY_IMPERSONATION_LEVEL;
enum {
  SecurityAnonymous,
  SecurityIdentification,
  SecurityImpersonation,
  SecurityDelegation,
}
alias _SECURITY_IMPERSONATION_LEVEL SECURITY_IMPERSONATION_LEVEL;
alias _SECURITY_IMPERSONATION_LEVEL* PSECURITY_IMPERSONATION_LEVEL;

alias SecurityDelegation SECURITY_MAX_IMPERSONATION_LEVEL;
alias SecurityAnonymous SECURITY_MIN_IMPERSONATION_LEVEL;
alias SecurityImpersonation DEFAULT_IMPERSONATION_LEVEL;
bit VALID_IMPERSONATION_LEVEL(SECURITY_IMPERSONATION_LEVEL L){ return (L >= SECURITY_MIN_IMPERSONATION_LEVEL) && (L <= SECURITY_MAX_IMPERSONATION_LEVEL); }

enum : uint { TOKEN_ASSIGN_PRIMARY = 0x0001 }
enum : uint { TOKEN_DUPLICATE = 0x0002 }
enum : uint { TOKEN_IMPERSONATE = 0x0004 }
enum : uint { TOKEN_QUERY = 0x0008 }
enum : uint { TOKEN_QUERY_SOURCE = 0x0010 }
enum : uint { TOKEN_ADJUST_PRIVILEGES = 0x0020 }
enum : uint { TOKEN_ADJUST_GROUPS = 0x0040 }
enum : uint { TOKEN_ADJUST_DEFAULT = 0x0080 }
enum : uint { TOKEN_ADJUST_SESSIONID = 0x0100 }

enum : uint { TOKEN_ALL_ACCESS_P = STANDARD_RIGHTS_REQUIRED | TOKEN_ASSIGN_PRIMARY | TOKEN_DUPLICATE | TOKEN_IMPERSONATE | TOKEN_QUERY | TOKEN_QUERY_SOURCE | TOKEN_ADJUST_PRIVILEGES | TOKEN_ADJUST_GROUPS | TOKEN_ADJUST_DEFAULT  }

// #if ((defined(_WIN32_WINNT) && (_WIN32_WINNT > 0x0400)) || (!defined(_WIN32_WINNT)))
enum : uint { TOKEN_ALL_ACCESS = TOKEN_ALL_ACCESS_P | TOKEN_ADJUST_SESSIONID  }
// #else
// #...
// #endif

enum : uint { TOKEN_READ = STANDARD_RIGHTS_READ | TOKEN_QUERY }

enum : uint { TOKEN_WRITE = STANDARD_RIGHTS_WRITE | TOKEN_ADJUST_PRIVILEGES | TOKEN_ADJUST_GROUPS | TOKEN_ADJUST_DEFAULT }

enum : uint { TOKEN_EXECUTE = STANDARD_RIGHTS_EXECUTE }

alias int _TOKEN_TYPE;
enum {
  TokenPrimary = 1,
  TokenImpersonation,
}
alias _TOKEN_TYPE TOKEN_TYPE;

alias TOKEN_TYPE* PTOKEN_TYPE;

alias int _TOKEN_INFORMATION_CLASS;
enum {
  TokenUser = 1,
  TokenGroups,
  TokenPrivileges,
  TokenOwner,
  TokenPrimaryGroup,
  TokenDefaultDacl,
  TokenSource,
  TokenType,
  TokenImpersonationLevel,
  TokenStatistics,
  TokenRestrictedSids,
  TokenSessionId,
  TokenGroupsAndPrivileges,
  TokenSessionReference,
  TokenSandBoxInert,
}
alias _TOKEN_INFORMATION_CLASS TOKEN_INFORMATION_CLASS;
alias _TOKEN_INFORMATION_CLASS* PTOKEN_INFORMATION_CLASS;

struct _TOKEN_USER {
  SID_AND_ATTRIBUTES User;
}
alias _TOKEN_USER TOKEN_USER;
alias _TOKEN_USER* PTOKEN_USER;

struct _TOKEN_GROUPS {
  DWORD GroupCount;
  SID_AND_ATTRIBUTES Groups[ANYSIZE_ARRAY];
}
alias _TOKEN_GROUPS TOKEN_GROUPS;
alias _TOKEN_GROUPS* PTOKEN_GROUPS;

struct _TOKEN_PRIVILEGES {
  DWORD PrivilegeCount;
  LUID_AND_ATTRIBUTES Privileges[ANYSIZE_ARRAY];
}
alias _TOKEN_PRIVILEGES TOKEN_PRIVILEGES;
alias _TOKEN_PRIVILEGES* PTOKEN_PRIVILEGES;

struct _TOKEN_OWNER {
  PSID Owner;
}
alias _TOKEN_OWNER TOKEN_OWNER;
alias _TOKEN_OWNER* PTOKEN_OWNER;

struct _TOKEN_PRIMARY_GROUP {
  PSID PrimaryGroup;
}
alias _TOKEN_PRIMARY_GROUP TOKEN_PRIMARY_GROUP;
alias _TOKEN_PRIMARY_GROUP* PTOKEN_PRIMARY_GROUP;

struct _TOKEN_DEFAULT_DACL {
  PACL DefaultDacl;
}
alias _TOKEN_DEFAULT_DACL TOKEN_DEFAULT_DACL;
alias _TOKEN_DEFAULT_DACL* PTOKEN_DEFAULT_DACL;

struct _TOKEN_GROUPS_AND_PRIVILEGES {
  DWORD SidCount;
  DWORD SidLength;
  PSID_AND_ATTRIBUTES Sids;
  DWORD RestrictedSidCount;
  DWORD RestrictedSidLength;
  PSID_AND_ATTRIBUTES RestrictedSids;
  DWORD PrivilegeCount;
  DWORD PrivilegeLength;
  PLUID_AND_ATTRIBUTES Privileges;
  LUID AuthenticationId;
}
alias _TOKEN_GROUPS_AND_PRIVILEGES TOKEN_GROUPS_AND_PRIVILEGES;
alias _TOKEN_GROUPS_AND_PRIVILEGES* PTOKEN_GROUPS_AND_PRIVILEGES;

enum : uint { TOKEN_SOURCE_LENGTH = 8 }

struct _TOKEN_SOURCE {
  CHAR SourceName[TOKEN_SOURCE_LENGTH];
  LUID SourceIdentifier;
}
alias _TOKEN_SOURCE TOKEN_SOURCE;
alias _TOKEN_SOURCE* PTOKEN_SOURCE;

struct _TOKEN_STATISTICS {
  LUID TokenId;
  LUID AuthenticationId;
  LARGE_INTEGER ExpirationTime;
  TOKEN_TYPE TokenType;
  SECURITY_IMPERSONATION_LEVEL ImpersonationLevel;
  DWORD DynamicCharged;
  DWORD DynamicAvailable;
  DWORD GroupCount;
  DWORD PrivilegeCount;
  LUID ModifiedId;
}
alias _TOKEN_STATISTICS TOKEN_STATISTICS;
alias _TOKEN_STATISTICS* PTOKEN_STATISTICS;

struct _TOKEN_CONTROL {
  LUID TokenId;
  LUID AuthenticationId;
  LUID ModifiedId;
  TOKEN_SOURCE TokenSource;
}
alias _TOKEN_CONTROL TOKEN_CONTROL;
alias _TOKEN_CONTROL* PTOKEN_CONTROL;

enum : uint { SECURITY_DYNAMIC_TRACKING = true }
enum : uint { SECURITY_STATIC_TRACKING = false }

alias BOOLEAN SECURITY_CONTEXT_TRACKING_MODE;
alias BOOLEAN* PSECURITY_CONTEXT_TRACKING_MODE;

struct _SECURITY_QUALITY_OF_SERVICE {
  DWORD Length;
  SECURITY_IMPERSONATION_LEVEL ImpersonationLevel;
  SECURITY_CONTEXT_TRACKING_MODE ContextTrackingMode;
  BOOLEAN EffectiveOnly;
}
alias _SECURITY_QUALITY_OF_SERVICE SECURITY_QUALITY_OF_SERVICE;
alias _SECURITY_QUALITY_OF_SERVICE* PSECURITY_QUALITY_OF_SERVICE;

struct _SE_IMPERSONATION_STATE {
  PACCESS_TOKEN Token;
  BOOLEAN CopyOnOpen;
  BOOLEAN EffectiveOnly;
  SECURITY_IMPERSONATION_LEVEL Level;
}
alias _SE_IMPERSONATION_STATE SE_IMPERSONATION_STATE;
alias _SE_IMPERSONATION_STATE* PSE_IMPERSONATION_STATE;

enum : uint { DISABLE_MAX_PRIVILEGE = 0x1 }
enum : uint { SANDBOX_INERT = 0x2 }

alias DWORD SECURITY_INFORMATION;
alias DWORD* PSECURITY_INFORMATION;

enum : uint { OWNER_SECURITY_INFORMATION = 0x00000001 }
enum : uint { GROUP_SECURITY_INFORMATION = 0x00000002 }
enum : uint { DACL_SECURITY_INFORMATION = 0x00000004 }
enum : uint { SACL_SECURITY_INFORMATION = 0x00000008 }

enum : uint { PROTECTED_DACL_SECURITY_INFORMATION = 0x80000000 }
enum : uint { PROTECTED_SACL_SECURITY_INFORMATION = 0x40000000 }
enum : uint { UNPROTECTED_DACL_SECURITY_INFORMATION = 0x20000000 }
enum : uint { UNPROTECTED_SACL_SECURITY_INFORMATION = 0x10000000 }

enum : uint { PROCESS_TERMINATE = 0x0001 }
enum : uint { PROCESS_CREATE_THREAD = 0x0002 }
enum : uint { PROCESS_SET_SESSIONID = 0x0004 }
enum : uint { PROCESS_VM_OPERATION = 0x0008 }
enum : uint { PROCESS_VM_READ = 0x0010 }
enum : uint { PROCESS_VM_WRITE = 0x0020 }
enum : uint { PROCESS_DUP_HANDLE = 0x0040 }
enum : uint { PROCESS_CREATE_PROCESS = 0x0080 }
enum : uint { PROCESS_SET_QUOTA = 0x0100 }
enum : uint { PROCESS_SET_INFORMATION = 0x0200 }
enum : uint { PROCESS_QUERY_INFORMATION = 0x0400 }
enum : uint { PROCESS_SUSPEND_RESUME = 0x0800 }
enum : uint { PROCESS_ALL_ACCESS = STANDARD_RIGHTS_REQUIRED | SYNCHRONIZE | 0xFFF }

// #if defined(_WIN64)

// #...

// #else

enum : uint { MAXIMUM_PROCESSORS = 32 }

// #endif

enum : uint { THREAD_TERMINATE = 0x0001 }
enum : uint { THREAD_SUSPEND_RESUME = 0x0002 }
enum : uint { THREAD_GET_CONTEXT = 0x0008 }
enum : uint { THREAD_SET_CONTEXT = 0x0010 }
enum : uint { THREAD_SET_INFORMATION = 0x0020 }
enum : uint { THREAD_QUERY_INFORMATION = 0x0040 }
enum : uint { THREAD_SET_THREAD_TOKEN = 0x0080 }
enum : uint { THREAD_IMPERSONATE = 0x0100 }
enum : uint { THREAD_DIRECT_IMPERSONATION = 0x0200 }

enum : uint { THREAD_ALL_ACCESS = STANDARD_RIGHTS_REQUIRED | SYNCHRONIZE | 0x3FF }

enum : uint { JOB_OBJECT_ASSIGN_PROCESS = 0x0001 }
enum : uint { JOB_OBJECT_SET_ATTRIBUTES = 0x0002 }
enum : uint { JOB_OBJECT_QUERY = 0x0004 }
enum : uint { JOB_OBJECT_TERMINATE = 0x0008 }
enum : uint { JOB_OBJECT_SET_SECURITY_ATTRIBUTES = 0x0010 }
enum : uint { JOB_OBJECT_ALL_ACCESS = STANDARD_RIGHTS_REQUIRED | SYNCHRONIZE | 0x1F  }

struct _JOB_SET_ARRAY {
  HANDLE JobHandle;
  DWORD MemberLevel;
  DWORD Flags;
}
alias _JOB_SET_ARRAY JOB_SET_ARRAY;
alias _JOB_SET_ARRAY* PJOB_SET_ARRAY;

enum : uint { TLS_MINIMUM_AVAILABLE = 64 }

struct _NT_TIB {
  _EXCEPTION_REGISTRATION_RECORD *ExceptionList;
  PVOID StackBase;
  PVOID StackLimit;
  PVOID SubSystemTib;
union {
  PVOID FiberData;
  DWORD Version;
}

  PVOID ArbitraryUserPointer;
  _NT_TIB *Self;
}
alias _NT_TIB NT_TIB;

alias NT_TIB* PNT_TIB;

struct _NT_TIB32 {
  DWORD ExceptionList;
  DWORD StackBase;
  DWORD StackLimit;
  DWORD SubSystemTib;
union {
  DWORD FiberData;
  DWORD Version;
}

  DWORD ArbitraryUserPointer;
  DWORD Self;
}
alias _NT_TIB32 NT_TIB32;
alias _NT_TIB32* PNT_TIB32;

struct _NT_TIB64 {
  DWORD64 ExceptionList;
  DWORD64 StackBase;
  DWORD64 StackLimit;
  DWORD64 SubSystemTib;
union {
  DWORD64 FiberData;
  DWORD Version;
}

  DWORD64 ArbitraryUserPointer;
  DWORD64 Self;
}
alias _NT_TIB64 NT_TIB64;
alias _NT_TIB64* PNT_TIB64;

// #if !defined(_X86_) && !defined(_IA64_) && !defined(_AMD64_)
// #...
// #endif

enum : uint { THREAD_BASE_PRIORITY_LOWRT = 15 }
enum : uint { THREAD_BASE_PRIORITY_MAX = 2 }
enum { THREAD_BASE_PRIORITY_MIN = -2 }
enum { THREAD_BASE_PRIORITY_IDLE = -15 }

struct _QUOTA_LIMITS {
  SIZE_T PagedPoolLimit;
  SIZE_T NonPagedPoolLimit;
  SIZE_T MinimumWorkingSetSize;
  SIZE_T MaximumWorkingSetSize;
  SIZE_T PagefileLimit;
  LARGE_INTEGER TimeLimit;
}
alias _QUOTA_LIMITS QUOTA_LIMITS;

alias QUOTA_LIMITS* PQUOTA_LIMITS;

struct _IO_COUNTERS {
  ULONGLONG ReadOperationCount;
  ULONGLONG WriteOperationCount;
  ULONGLONG OtherOperationCount;
  ULONGLONG ReadTransferCount;
  ULONGLONG WriteTransferCount;
  ULONGLONG OtherTransferCount;
}
alias _IO_COUNTERS IO_COUNTERS;

alias IO_COUNTERS* PIO_COUNTERS;

struct _JOBOBJECT_BASIC_ACCOUNTING_INFORMATION {
  LARGE_INTEGER TotalUserTime;
  LARGE_INTEGER TotalKernelTime;
  LARGE_INTEGER ThisPeriodTotalUserTime;
  LARGE_INTEGER ThisPeriodTotalKernelTime;
  DWORD TotalPageFaultCount;
  DWORD TotalProcesses;
  DWORD ActiveProcesses;
  DWORD TotalTerminatedProcesses;
}
alias _JOBOBJECT_BASIC_ACCOUNTING_INFORMATION JOBOBJECT_BASIC_ACCOUNTING_INFORMATION;
alias _JOBOBJECT_BASIC_ACCOUNTING_INFORMATION* PJOBOBJECT_BASIC_ACCOUNTING_INFORMATION;

struct _JOBOBJECT_BASIC_LIMIT_INFORMATION {
  LARGE_INTEGER PerProcessUserTimeLimit;
  LARGE_INTEGER PerJobUserTimeLimit;
  DWORD LimitFlags;
  SIZE_T MinimumWorkingSetSize;
  SIZE_T MaximumWorkingSetSize;
  DWORD ActiveProcessLimit;
  ULONG_PTR Affinity;
  DWORD PriorityClass;
  DWORD SchedulingClass;
}
alias _JOBOBJECT_BASIC_LIMIT_INFORMATION JOBOBJECT_BASIC_LIMIT_INFORMATION;
alias _JOBOBJECT_BASIC_LIMIT_INFORMATION* PJOBOBJECT_BASIC_LIMIT_INFORMATION;

struct _JOBOBJECT_EXTENDED_LIMIT_INFORMATION {
  JOBOBJECT_BASIC_LIMIT_INFORMATION BasicLimitInformation;
  IO_COUNTERS IoInfo;
  SIZE_T ProcessMemoryLimit;
  SIZE_T JobMemoryLimit;
  SIZE_T PeakProcessMemoryUsed;
  SIZE_T PeakJobMemoryUsed;
}
alias _JOBOBJECT_EXTENDED_LIMIT_INFORMATION JOBOBJECT_EXTENDED_LIMIT_INFORMATION;
alias _JOBOBJECT_EXTENDED_LIMIT_INFORMATION* PJOBOBJECT_EXTENDED_LIMIT_INFORMATION;

struct _JOBOBJECT_BASIC_PROCESS_ID_LIST {
  DWORD NumberOfAssignedProcesses;
  DWORD NumberOfProcessIdsInList;
  ULONG_PTR ProcessIdList[1];
}
alias _JOBOBJECT_BASIC_PROCESS_ID_LIST JOBOBJECT_BASIC_PROCESS_ID_LIST;
alias _JOBOBJECT_BASIC_PROCESS_ID_LIST* PJOBOBJECT_BASIC_PROCESS_ID_LIST;

struct _JOBOBJECT_BASIC_UI_RESTRICTIONS {
  DWORD UIRestrictionsClass;
}
alias _JOBOBJECT_BASIC_UI_RESTRICTIONS JOBOBJECT_BASIC_UI_RESTRICTIONS;
alias _JOBOBJECT_BASIC_UI_RESTRICTIONS* PJOBOBJECT_BASIC_UI_RESTRICTIONS;

struct _JOBOBJECT_SECURITY_LIMIT_INFORMATION {
  DWORD SecurityLimitFlags ;
  HANDLE JobToken ;
  PTOKEN_GROUPS SidsToDisable ;
  PTOKEN_PRIVILEGES PrivilegesToDelete ;
  PTOKEN_GROUPS RestrictedSids ;
}
alias _JOBOBJECT_SECURITY_LIMIT_INFORMATION JOBOBJECT_SECURITY_LIMIT_INFORMATION;
alias _JOBOBJECT_SECURITY_LIMIT_INFORMATION* PJOBOBJECT_SECURITY_LIMIT_INFORMATION;

struct _JOBOBJECT_END_OF_JOB_TIME_INFORMATION {
  DWORD EndOfJobTimeAction;
}
alias _JOBOBJECT_END_OF_JOB_TIME_INFORMATION JOBOBJECT_END_OF_JOB_TIME_INFORMATION;
alias _JOBOBJECT_END_OF_JOB_TIME_INFORMATION* PJOBOBJECT_END_OF_JOB_TIME_INFORMATION;

struct _JOBOBJECT_ASSOCIATE_COMPLETION_PORT {
  PVOID CompletionKey;
  HANDLE CompletionPort;
}
alias _JOBOBJECT_ASSOCIATE_COMPLETION_PORT JOBOBJECT_ASSOCIATE_COMPLETION_PORT;
alias _JOBOBJECT_ASSOCIATE_COMPLETION_PORT* PJOBOBJECT_ASSOCIATE_COMPLETION_PORT;

struct _JOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION {
  JOBOBJECT_BASIC_ACCOUNTING_INFORMATION BasicInfo;
  IO_COUNTERS IoInfo;
}
alias _JOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION JOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION;
alias _JOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION* PJOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION;

struct _JOBOBJECT_JOBSET_INFORMATION {
  DWORD MemberLevel;
}
alias _JOBOBJECT_JOBSET_INFORMATION JOBOBJECT_JOBSET_INFORMATION;
alias _JOBOBJECT_JOBSET_INFORMATION* PJOBOBJECT_JOBSET_INFORMATION;

enum : uint { JOB_OBJECT_TERMINATE_AT_END_OF_JOB = 0 }
enum : uint { JOB_OBJECT_POST_AT_END_OF_JOB = 1 }

enum : uint { JOB_OBJECT_MSG_END_OF_JOB_TIME = 1 }
enum : uint { JOB_OBJECT_MSG_END_OF_PROCESS_TIME = 2 }
enum : uint { JOB_OBJECT_MSG_ACTIVE_PROCESS_LIMIT = 3 }
enum : uint { JOB_OBJECT_MSG_ACTIVE_PROCESS_ZERO = 4 }
enum : uint { JOB_OBJECT_MSG_NEW_PROCESS = 6 }
enum : uint { JOB_OBJECT_MSG_EXIT_PROCESS = 7 }
enum : uint { JOB_OBJECT_MSG_ABNORMAL_EXIT_PROCESS = 8 }
enum : uint { JOB_OBJECT_MSG_PROCESS_MEMORY_LIMIT = 9 }
enum : uint { JOB_OBJECT_MSG_JOB_MEMORY_LIMIT = 10 }

enum : uint { JOB_OBJECT_LIMIT_WORKINGSET = 0x00000001 }
enum : uint { JOB_OBJECT_LIMIT_PROCESS_TIME = 0x00000002 }
enum : uint { JOB_OBJECT_LIMIT_JOB_TIME = 0x00000004 }
enum : uint { JOB_OBJECT_LIMIT_ACTIVE_PROCESS = 0x00000008 }
enum : uint { JOB_OBJECT_LIMIT_AFFINITY = 0x00000010 }
enum : uint { JOB_OBJECT_LIMIT_PRIORITY_CLASS = 0x00000020 }
enum : uint { JOB_OBJECT_LIMIT_PRESERVE_JOB_TIME = 0x00000040 }
enum : uint { JOB_OBJECT_LIMIT_SCHEDULING_CLASS = 0x00000080 }

enum : uint { JOB_OBJECT_LIMIT_PROCESS_MEMORY = 0x00000100 }
enum : uint { JOB_OBJECT_LIMIT_JOB_MEMORY = 0x00000200 }
enum : uint { JOB_OBJECT_LIMIT_DIE_ON_UNHANDLED_EXCEPTION = 0x00000400 }
enum : uint { JOB_OBJECT_LIMIT_BREAKAWAY_OK = 0x00000800 }
enum : uint { JOB_OBJECT_LIMIT_SILENT_BREAKAWAY_OK = 0x00001000 }
enum : uint { JOB_OBJECT_LIMIT_KILL_ON_JOB_CLOSE = 0x00002000 }

enum : uint { JOB_OBJECT_LIMIT_RESERVED2 = 0x00004000 }
enum : uint { JOB_OBJECT_LIMIT_RESERVED3 = 0x00008000 }
enum : uint { JOB_OBJECT_LIMIT_RESERVED4 = 0x00010000 }
enum : uint { JOB_OBJECT_LIMIT_RESERVED5 = 0x00020000 }
enum : uint { JOB_OBJECT_LIMIT_RESERVED6 = 0x00040000 }

enum : uint { JOB_OBJECT_LIMIT_VALID_FLAGS = 0x0007ffff }

enum : uint { JOB_OBJECT_BASIC_LIMIT_VALID_FLAGS = 0x000000ff }
enum : uint { JOB_OBJECT_EXTENDED_LIMIT_VALID_FLAGS = 0x00003fff }
enum : uint { JOB_OBJECT_RESERVED_LIMIT_VALID_FLAGS = 0x0007ffff }

enum : uint { JOB_OBJECT_UILIMIT_NONE = 0x00000000 }

enum : uint { JOB_OBJECT_UILIMIT_HANDLES = 0x00000001 }
enum : uint { JOB_OBJECT_UILIMIT_READCLIPBOARD = 0x00000002 }
enum : uint { JOB_OBJECT_UILIMIT_WRITECLIPBOARD = 0x00000004 }
enum : uint { JOB_OBJECT_UILIMIT_SYSTEMPARAMETERS = 0x00000008 }
enum : uint { JOB_OBJECT_UILIMIT_DISPLAYSETTINGS = 0x00000010 }
enum : uint { JOB_OBJECT_UILIMIT_GLOBALATOMS = 0x00000020 }
enum : uint { JOB_OBJECT_UILIMIT_DESKTOP = 0x00000040 }
enum : uint { JOB_OBJECT_UILIMIT_EXITWINDOWS = 0x00000080 }

enum : uint { JOB_OBJECT_UILIMIT_ALL = 0x000000FF }

enum : uint { JOB_OBJECT_UI_VALID_FLAGS = 0x000000FF }

enum : uint { JOB_OBJECT_SECURITY_NO_ADMIN = 0x00000001 }
enum : uint { JOB_OBJECT_SECURITY_RESTRICTED_TOKEN = 0x00000002 }
enum : uint { JOB_OBJECT_SECURITY_ONLY_TOKEN = 0x00000004 }
enum : uint { JOB_OBJECT_SECURITY_FILTER_TOKENS = 0x00000008 }

enum : uint { JOB_OBJECT_SECURITY_VALID_FLAGS = 0x0000000f }

alias int _JOBOBJECTINFOCLASS;
enum {
  JobObjectBasicAccountingInformation = 1,
  JobObjectBasicLimitInformation,
  JobObjectBasicProcessIdList,
  JobObjectBasicUIRestrictions,
  JobObjectSecurityLimitInformation,
  JobObjectEndOfJobTimeInformation,
  JobObjectAssociateCompletionPortInformation,
  JobObjectBasicAndIoAccountingInformation,
  JobObjectExtendedLimitInformation,
  JobObjectJobSetInformation,
  MaxJobObjectInfoClass,
}
alias _JOBOBJECTINFOCLASS JOBOBJECTINFOCLASS;

enum : uint { EVENT_MODIFY_STATE = 0x0002 }
enum : uint { EVENT_ALL_ACCESS = STANDARD_RIGHTS_REQUIRED|SYNCHRONIZE|0x3 }
enum : uint { MUTANT_QUERY_STATE = 0x0001 }

enum : uint { MUTANT_ALL_ACCESS = STANDARD_RIGHTS_REQUIRED|SYNCHRONIZE| MUTANT_QUERY_STATE }
enum : uint { SEMAPHORE_MODIFY_STATE = 0x0002 }
enum : uint { SEMAPHORE_ALL_ACCESS = STANDARD_RIGHTS_REQUIRED|SYNCHRONIZE|0x3 }

enum : uint { TIMER_QUERY_STATE = 0x0001 }
enum : uint { TIMER_MODIFY_STATE = 0x0002 }

enum : uint { TIMER_ALL_ACCESS = STANDARD_RIGHTS_REQUIRED|SYNCHRONIZE| TIMER_QUERY_STATE|TIMER_MODIFY_STATE }

enum : uint { TIME_ZONE_ID_UNKNOWN = 0 }
enum : uint { TIME_ZONE_ID_STANDARD = 1 }
enum : uint { TIME_ZONE_ID_DAYLIGHT = 2 }

enum : uint { MAXIMUM_NUMA_NODES = 16 }

struct _SYSTEM_NUMA_INFORMATION {
  DWORD HighestNodeNumber;
  DWORD Reserved;
union {
  ULONGLONG ActiveProcessorsAffinityMask[MAXIMUM_NUMA_NODES];
  ULONGLONG AvailableMemory[MAXIMUM_NUMA_NODES];
}

}
alias _SYSTEM_NUMA_INFORMATION SYSTEM_NUMA_INFORMATION;
alias _SYSTEM_NUMA_INFORMATION* PSYSTEM_NUMA_INFORMATION;

enum : uint { PROCESSOR_INTEL_386 = 386 }
enum : uint { PROCESSOR_INTEL_486 = 486 }
enum : uint { PROCESSOR_INTEL_PENTIUM = 586 }
enum : uint { PROCESSOR_INTEL_IA64 = 2200 }
enum : uint { PROCESSOR_MIPS_R4000 = 4000 }
enum : uint { PROCESSOR_ALPHA_21064 = 21064 }
enum : uint { PROCESSOR_PPC_601 = 601 }
enum : uint { PROCESSOR_PPC_603 = 603 }
enum : uint { PROCESSOR_PPC_604 = 604 }
enum : uint { PROCESSOR_PPC_620 = 620 }
enum : uint { PROCESSOR_HITACHI_SH3 = 10003 }
enum : uint { PROCESSOR_HITACHI_SH3E = 10004 }
enum : uint { PROCESSOR_HITACHI_SH4 = 10005 }
enum : uint { PROCESSOR_MOTOROLA_821 = 821 }
enum : uint { PROCESSOR_SHx_SH3 = 103 }
enum : uint { PROCESSOR_SHx_SH4 = 104 }
enum : uint { PROCESSOR_STRONGARM = 2577 }
enum : uint { PROCESSOR_ARM720 = 1824 }
enum : uint { PROCESSOR_ARM820 = 2080 }
enum : uint { PROCESSOR_ARM920 = 2336 }
enum : uint { PROCESSOR_ARM_7TDMI = 70001 }
enum : uint { PROCESSOR_OPTIL = 0x494f }

enum : uint { PROCESSOR_ARCHITECTURE_INTEL = 0 }
enum : uint { PROCESSOR_ARCHITECTURE_MIPS = 1 }
enum : uint { PROCESSOR_ARCHITECTURE_ALPHA = 2 }
enum : uint { PROCESSOR_ARCHITECTURE_PPC = 3 }
enum : uint { PROCESSOR_ARCHITECTURE_SHX = 4 }
enum : uint { PROCESSOR_ARCHITECTURE_ARM = 5 }
enum : uint { PROCESSOR_ARCHITECTURE_IA64 = 6 }
enum : uint { PROCESSOR_ARCHITECTURE_ALPHA64 = 7 }
enum : uint { PROCESSOR_ARCHITECTURE_MSIL = 8 }
enum : uint { PROCESSOR_ARCHITECTURE_AMD64 = 9 }
enum : uint { PROCESSOR_ARCHITECTURE_IA32_ON_WIN64 = 10 }

enum : uint { PROCESSOR_ARCHITECTURE_UNKNOWN = 0xFFFF }

enum : uint { PF_FLOATING_POINT_PRECISION_ERRATA = 0 }
enum : uint { PF_FLOATING_POINT_EMULATED = 1 }
enum : uint { PF_COMPARE_EXCHANGE_DOUBLE = 2 }
enum : uint { PF_MMX_INSTRUCTIONS_AVAILABLE = 3 }
enum : uint { PF_PPC_MOVEMEM_64BIT_OK = 4 }
enum : uint { PF_ALPHA_BYTE_INSTRUCTIONS = 5 }
enum : uint { PF_XMMI_INSTRUCTIONS_AVAILABLE = 6 }
enum : uint { PF_3DNOW_INSTRUCTIONS_AVAILABLE = 7 }
enum : uint { PF_RDTSC_INSTRUCTION_AVAILABLE = 8 }
enum : uint { PF_PAE_ENABLED = 9 }
enum : uint { PF_XMMI64_INSTRUCTIONS_AVAILABLE = 10 }

struct _MEMORY_BASIC_INFORMATION {
  PVOID BaseAddress;
  PVOID AllocationBase;
  DWORD AllocationProtect;
  SIZE_T RegionSize;
  DWORD State;
  DWORD Protect;
  DWORD Type;
}
alias _MEMORY_BASIC_INFORMATION MEMORY_BASIC_INFORMATION;
alias _MEMORY_BASIC_INFORMATION* PMEMORY_BASIC_INFORMATION;

struct _MEMORY_BASIC_INFORMATION32 {
  DWORD BaseAddress;
  DWORD AllocationBase;
  DWORD AllocationProtect;
  DWORD RegionSize;
  DWORD State;
  DWORD Protect;
  DWORD Type;
}
alias _MEMORY_BASIC_INFORMATION32 MEMORY_BASIC_INFORMATION32;
alias _MEMORY_BASIC_INFORMATION32* PMEMORY_BASIC_INFORMATION32;

struct _MEMORY_BASIC_INFORMATION64 {
  ULONGLONG BaseAddress;
  ULONGLONG AllocationBase;
  DWORD AllocationProtect;
  DWORD __alignment1;
  ULONGLONG RegionSize;
  DWORD State;
  DWORD Protect;
  DWORD Type;
  DWORD __alignment2;
}
alias _MEMORY_BASIC_INFORMATION64 MEMORY_BASIC_INFORMATION64;
alias _MEMORY_BASIC_INFORMATION64* PMEMORY_BASIC_INFORMATION64;

enum : uint { SECTION_QUERY = 0x0001 }
enum : uint { SECTION_MAP_WRITE = 0x0002 }
enum : uint { SECTION_MAP_READ = 0x0004 }
enum : uint { SECTION_MAP_EXECUTE = 0x0008 }
enum : uint { SECTION_EXTEND_SIZE = 0x0010 }

enum : uint { SECTION_ALL_ACCESS = STANDARD_RIGHTS_REQUIRED|SECTION_QUERY| SECTION_MAP_WRITE | SECTION_MAP_READ | SECTION_MAP_EXECUTE | SECTION_EXTEND_SIZE }
enum : uint { PAGE_NOACCESS = 0x01 }
enum : uint { PAGE_READONLY = 0x02 }
enum : uint { PAGE_READWRITE = 0x04 }
enum : uint { PAGE_WRITECOPY = 0x08 }
enum : uint { PAGE_EXECUTE = 0x10 }
enum : uint { PAGE_EXECUTE_READ = 0x20 }
enum : uint { PAGE_EXECUTE_READWRITE = 0x40 }
enum : uint { PAGE_EXECUTE_WRITECOPY = 0x80 }
enum : uint { PAGE_GUARD = 0x100 }
enum : uint { PAGE_NOCACHE = 0x200 }
enum : uint { PAGE_WRITECOMBINE = 0x400 }
enum : uint { MEM_COMMIT = 0x1000 }
enum : uint { MEM_RESERVE = 0x2000 }
enum : uint { MEM_DECOMMIT = 0x4000 }
enum : uint { MEM_RELEASE = 0x8000 }
enum : uint { MEM_FREE = 0x10000 }
enum : uint { MEM_PRIVATE = 0x20000 }
enum : uint { MEM_MAPPED = 0x40000 }
enum : uint { MEM_RESET = 0x80000 }
enum : uint { MEM_TOP_DOWN = 0x100000 }
enum : uint { MEM_WRITE_WATCH = 0x200000 }
enum : uint { MEM_PHYSICAL = 0x400000 }
enum : uint { MEM_4MB_PAGES = 0x80000000 }
enum : uint { SEC_FILE = 0x800000 }
enum : uint { SEC_IMAGE = 0x1000000 }
enum : uint { SEC_RESERVE = 0x4000000 }
enum : uint { SEC_COMMIT = 0x8000000 }
enum : uint { SEC_NOCACHE = 0x10000000 }
alias SEC_IMAGE MEM_IMAGE;
enum : uint { WRITE_WATCH_FLAG_RESET = 0x01 }

enum : uint { FILE_READ_DATA = 0x0001 }
enum : uint { FILE_LIST_DIRECTORY = 0x0001 }

enum : uint { FILE_WRITE_DATA = 0x0002 }
enum : uint { FILE_ADD_FILE = 0x0002 }

enum : uint { FILE_APPEND_DATA = 0x0004 }
enum : uint { FILE_ADD_SUBDIRECTORY = 0x0004 }
enum : uint { FILE_CREATE_PIPE_INSTANCE = 0x0004 }

enum : uint { FILE_READ_EA = 0x0008 }

enum : uint { FILE_WRITE_EA = 0x0010 }

enum : uint { FILE_EXECUTE = 0x0020 }
enum : uint { FILE_TRAVERSE = 0x0020 }

enum : uint { FILE_DELETE_CHILD = 0x0040 }

enum : uint { FILE_READ_ATTRIBUTES = 0x0080 }

enum : uint { FILE_WRITE_ATTRIBUTES = 0x0100 }

enum : uint { FILE_ALL_ACCESS = STANDARD_RIGHTS_REQUIRED | SYNCHRONIZE | 0x1FF }

enum : uint { FILE_GENERIC_READ = STANDARD_RIGHTS_READ | FILE_READ_DATA | FILE_READ_ATTRIBUTES | FILE_READ_EA | SYNCHRONIZE }

enum : uint { FILE_GENERIC_WRITE = STANDARD_RIGHTS_WRITE | FILE_WRITE_DATA | FILE_WRITE_ATTRIBUTES | FILE_WRITE_EA | FILE_APPEND_DATA | SYNCHRONIZE }

enum : uint { FILE_GENERIC_EXECUTE = STANDARD_RIGHTS_EXECUTE | FILE_READ_ATTRIBUTES | FILE_EXECUTE | SYNCHRONIZE }

enum : uint { FILE_SHARE_READ = 0x00000001 }
enum : uint { FILE_SHARE_WRITE = 0x00000002 }
enum : uint { FILE_SHARE_DELETE = 0x00000004 }
enum : uint { FILE_ATTRIBUTE_READONLY = 0x00000001 }
enum : uint { FILE_ATTRIBUTE_HIDDEN = 0x00000002 }
enum : uint { FILE_ATTRIBUTE_SYSTEM = 0x00000004 }
enum : uint { FILE_ATTRIBUTE_DIRECTORY = 0x00000010 }
enum : uint { FILE_ATTRIBUTE_ARCHIVE = 0x00000020 }
enum : uint { FILE_ATTRIBUTE_DEVICE = 0x00000040 }
enum : uint { FILE_ATTRIBUTE_NORMAL = 0x00000080 }
enum : uint { FILE_ATTRIBUTE_TEMPORARY = 0x00000100 }
enum : uint { FILE_ATTRIBUTE_SPARSE_FILE = 0x00000200 }
enum : uint { FILE_ATTRIBUTE_REPARSE_POINT = 0x00000400 }
enum : uint { FILE_ATTRIBUTE_COMPRESSED = 0x00000800 }
enum : uint { FILE_ATTRIBUTE_OFFLINE = 0x00001000 }
enum : uint { FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = 0x00002000 }
enum : uint { FILE_ATTRIBUTE_ENCRYPTED = 0x00004000 }
enum : uint { FILE_NOTIFY_CHANGE_FILE_NAME = 0x00000001 }
enum : uint { FILE_NOTIFY_CHANGE_DIR_NAME = 0x00000002 }
enum : uint { FILE_NOTIFY_CHANGE_ATTRIBUTES = 0x00000004 }
enum : uint { FILE_NOTIFY_CHANGE_SIZE = 0x00000008 }
enum : uint { FILE_NOTIFY_CHANGE_LAST_WRITE = 0x00000010 }
enum : uint { FILE_NOTIFY_CHANGE_LAST_ACCESS = 0x00000020 }
enum : uint { FILE_NOTIFY_CHANGE_CREATION = 0x00000040 }
enum : uint { FILE_NOTIFY_CHANGE_SECURITY = 0x00000100 }
enum : uint { FILE_ACTION_ADDED = 0x00000001 }
enum : uint { FILE_ACTION_REMOVED = 0x00000002 }
enum : uint { FILE_ACTION_MODIFIED = 0x00000003 }
enum : uint { FILE_ACTION_RENAMED_OLD_NAME = 0x00000004 }
enum : uint { FILE_ACTION_RENAMED_NEW_NAME = 0x00000005 }
enum : DWORD { MAILSLOT_NO_MESSAGE = cast(DWORD)-1 }
enum : DWORD { MAILSLOT_WAIT_FOREVER = cast(DWORD)-1 }
enum : uint { FILE_CASE_SENSITIVE_SEARCH = 0x00000001 }
enum : uint { FILE_CASE_PRESERVED_NAMES = 0x00000002 }
enum : uint { FILE_UNICODE_ON_DISK = 0x00000004 }
enum : uint { FILE_PERSISTENT_ACLS = 0x00000008 }
enum : uint { FILE_FILE_COMPRESSION = 0x00000010 }
enum : uint { FILE_VOLUME_QUOTAS = 0x00000020 }
enum : uint { FILE_SUPPORTS_SPARSE_FILES = 0x00000040 }
enum : uint { FILE_SUPPORTS_REPARSE_POINTS = 0x00000080 }
enum : uint { FILE_SUPPORTS_REMOTE_STORAGE = 0x00000100 }
enum : uint { FILE_VOLUME_IS_COMPRESSED = 0x00008000 }
enum : uint { FILE_SUPPORTS_OBJECT_IDS = 0x00010000 }
enum : uint { FILE_SUPPORTS_ENCRYPTION = 0x00020000 }
enum : uint { FILE_NAMED_STREAMS = 0x00040000 }
enum : uint { FILE_READ_ONLY_VOLUME = 0x00080000 }

struct _FILE_NOTIFY_INFORMATION {
  DWORD NextEntryOffset;
  DWORD Action;
  DWORD FileNameLength;
  WCHAR FileName[1];
}
alias _FILE_NOTIFY_INFORMATION FILE_NOTIFY_INFORMATION;
alias _FILE_NOTIFY_INFORMATION* PFILE_NOTIFY_INFORMATION;

union _FILE_SEGMENT_ELEMENT {
  PVOID64 Buffer;
  ULONGLONG Alignment;
}
alias _FILE_SEGMENT_ELEMENT FILE_SEGMENT_ELEMENT;
alias _FILE_SEGMENT_ELEMENT* PFILE_SEGMENT_ELEMENT;

struct _REPARSE_GUID_DATA_BUFFER {
  DWORD ReparseTag;
  WORD ReparseDataLength;
  WORD Reserved;
  GUID ReparseGuid;
struct {
  BYTE DataBuffer[1];
}

}
alias _REPARSE_GUID_DATA_BUFFER REPARSE_GUID_DATA_BUFFER;
alias _REPARSE_GUID_DATA_BUFFER* PREPARSE_GUID_DATA_BUFFER;

// #define REPARSE_GUID_DATA_BUFFER_HEADER_SIZE FIELD_OFFSET(REPARSE_GUID_DATA_BUFFER, GenericReparseBuffer)

enum : uint { MAXIMUM_REPARSE_DATA_BUFFER_SIZE =  16 * 1024  }

enum : uint { IO_REPARSE_TAG_RESERVED_ZERO = 0 }
enum : uint { IO_REPARSE_TAG_RESERVED_ONE = 1 }

alias IO_REPARSE_TAG_RESERVED_ONE IO_REPARSE_TAG_RESERVED_RANGE;

// #define IsReparseTagMicrosoft(_tag) ( ((_tag) & 0x80000000) )

// #define IsReparseTagNameSurrogate(_tag) ( ((_tag) & 0x20000000) )

enum : uint { IO_REPARSE_TAG_MOUNT_POINT = 0xA0000003 }
enum : uint { IO_REPARSE_TAG_HSM = 0xC0000004 }
enum : uint { IO_REPARSE_TAG_SIS = 0x80000007 }
enum : uint { IO_REPARSE_TAG_FILTER_MANAGER = 0x8000000B }
enum : uint { IO_COMPLETION_MODIFY_STATE = 0x0002 }
enum : uint { IO_COMPLETION_ALL_ACCESS = STANDARD_RIGHTS_REQUIRED|SYNCHRONIZE|0x3 }
enum : uint { DUPLICATE_CLOSE_SOURCE = 0x00000001 }
enum : uint { DUPLICATE_SAME_ACCESS = 0x00000002 }

alias int _SYSTEM_POWER_STATE;
enum {
  PowerSystemUnspecified = 0,
  PowerSystemWorking = 1,
  PowerSystemSleeping1 = 2,
  PowerSystemSleeping2 = 3,
  PowerSystemSleeping3 = 4,
  PowerSystemHibernate = 5,
  PowerSystemShutdown = 6,
  PowerSystemMaximum = 7,
}
alias _SYSTEM_POWER_STATE SYSTEM_POWER_STATE;
alias _SYSTEM_POWER_STATE* PSYSTEM_POWER_STATE;

enum : uint { POWER_SYSTEM_MAXIMUM = 7 }

enum _4 {
  PowerActionNone = 0,
  PowerActionReserved,
  PowerActionSleep,
  PowerActionHibernate,
  PowerActionShutdown,
  PowerActionShutdownReset,
  PowerActionShutdownOff,
  PowerActionWarmEject,
}
alias _4 POWER_ACTION;
alias _4* PPOWER_ACTION;

alias int _DEVICE_POWER_STATE;
enum {
  PowerDeviceUnspecified = 0,
  PowerDeviceD0,
  PowerDeviceD1,
  PowerDeviceD2,
  PowerDeviceD3,
  PowerDeviceMaximum,
}
alias _DEVICE_POWER_STATE DEVICE_POWER_STATE;
alias _DEVICE_POWER_STATE* PDEVICE_POWER_STATE;

enum : DWORD { ES_SYSTEM_REQUIRED = 0x00000001 }
enum : DWORD { ES_DISPLAY_REQUIRED = 0x00000002 }
enum : DWORD { ES_USER_PRESENT = 0x00000004 }
enum : DWORD { ES_CONTINUOUS = 0x80000000 }

alias DWORD EXECUTION_STATE;

enum _5 {
  LT_DONT_CARE,
  LT_LOWEST_LATENCY,
}
alias _5 LATENCY_TIME;

enum : uint { PDCAP_D0_SUPPORTED = 0x00000001 }
enum : uint { PDCAP_D1_SUPPORTED = 0x00000002 }
enum : uint { PDCAP_D2_SUPPORTED = 0x00000004 }
enum : uint { PDCAP_D3_SUPPORTED = 0x00000008 }
enum : uint { PDCAP_WAKE_FROM_D0_SUPPORTED = 0x00000010 }
enum : uint { PDCAP_WAKE_FROM_D1_SUPPORTED = 0x00000020 }
enum : uint { PDCAP_WAKE_FROM_D2_SUPPORTED = 0x00000040 }
enum : uint { PDCAP_WAKE_FROM_D3_SUPPORTED = 0x00000080 }
enum : uint { PDCAP_WARM_EJECT_SUPPORTED = 0x00000100 }

struct CM_Power_Data_s {
  DWORD PD_Size;
  DEVICE_POWER_STATE PD_MostRecentPowerState;
  DWORD PD_Capabilities;
  DWORD PD_D1Latency;
  DWORD PD_D2Latency;
  DWORD PD_D3Latency;
  DEVICE_POWER_STATE PD_PowerStateMapping[POWER_SYSTEM_MAXIMUM];
  SYSTEM_POWER_STATE PD_DeepestSystemWake;
}
alias CM_Power_Data_s CM_POWER_DATA;
alias CM_Power_Data_s* PCM_POWER_DATA;

enum _6 {
  SystemPowerPolicyAc,
  SystemPowerPolicyDc,
  VerifySystemPolicyAc,
  VerifySystemPolicyDc,
  SystemPowerCapabilities,
  SystemBatteryState,
  SystemPowerStateHandler,
  ProcessorStateHandler,
  SystemPowerPolicyCurrent,
  AdministratorPowerPolicy,
  SystemReserveHiberFile,
  ProcessorInformation,
  SystemPowerInformation,
  ProcessorStateHandler2,
  LastWakeTime,
  LastSleepTime,
  SystemExecutionState,
  SystemPowerStateNotifyHandler,
  ProcessorPowerPolicyAc,
  ProcessorPowerPolicyDc,
  VerifyProcessorPowerPolicyAc,
  VerifyProcessorPowerPolicyDc,
  ProcessorPowerPolicyCurrent,
}
alias _6 POWER_INFORMATION_LEVEL;

struct _7 {
  DWORD Granularity;
  DWORD Capacity;
}
alias _7 BATTERY_REPORTING_SCALE;
alias _7* PBATTERY_REPORTING_SCALE;

struct _8 {
  POWER_ACTION Action;
  DWORD Flags;
  DWORD EventCode;
}
alias _8 POWER_ACTION_POLICY;
alias _8* PPOWER_ACTION_POLICY;

enum : uint { POWER_ACTION_QUERY_ALLOWED = 0x00000001 }
enum : uint { POWER_ACTION_UI_ALLOWED = 0x00000002 }
enum : uint { POWER_ACTION_OVERRIDE_APPS = 0x00000004 }
enum : uint { POWER_ACTION_LIGHTEST_FIRST = 0x10000000 }
enum : uint { POWER_ACTION_LOCK_CONSOLE = 0x20000000 }
enum : uint { POWER_ACTION_DISABLE_WAKES = 0x40000000 }
enum : uint { POWER_ACTION_CRITICAL = 0x80000000 }

enum : uint { POWER_LEVEL_USER_NOTIFY_TEXT = 0x00000001 }
enum : uint { POWER_LEVEL_USER_NOTIFY_SOUND = 0x00000002 }
enum : uint { POWER_LEVEL_USER_NOTIFY_EXEC = 0x00000004 }
enum : uint { POWER_USER_NOTIFY_BUTTON = 0x00000008 }
enum : uint { POWER_USER_NOTIFY_SHUTDOWN = 0x00000010 }
enum : uint { POWER_FORCE_TRIGGER_RESET = 0x80000000 }

struct _9 {
  BOOLEAN Enable;
  BYTE Spare[3];
  DWORD BatteryLevel;
  POWER_ACTION_POLICY PowerPolicy;
  SYSTEM_POWER_STATE MinSystemState;
}
alias _9 SYSTEM_POWER_LEVEL;
alias _9* PSYSTEM_POWER_LEVEL;

enum : uint { NUM_DISCHARGE_POLICIES = 4 }
enum : uint { DISCHARGE_POLICY_CRITICAL = 0 }
enum : uint { DISCHARGE_POLICY_LOW = 1 }

enum : uint { PO_THROTTLE_NONE = 0 }
enum : uint { PO_THROTTLE_CONSTANT = 1 }
enum : uint { PO_THROTTLE_DEGRADE = 2 }
enum : uint { PO_THROTTLE_ADAPTIVE = 3 }
enum : uint { PO_THROTTLE_MAXIMUM = 4 }

struct _SYSTEM_POWER_POLICY {
  DWORD Revision;

  POWER_ACTION_POLICY PowerButton;
  POWER_ACTION_POLICY SleepButton;
  POWER_ACTION_POLICY LidClose;
  SYSTEM_POWER_STATE LidOpenWake;
  DWORD Reserved;
  POWER_ACTION_POLICY Idle;
  DWORD IdleTimeout;
  BYTE IdleSensitivity;

  BYTE DynamicThrottle;
  BYTE Spare2[2];
  SYSTEM_POWER_STATE MinSleep;
  SYSTEM_POWER_STATE MaxSleep;
  SYSTEM_POWER_STATE ReducedLatencySleep;
  DWORD WinLogonFlags;
  DWORD Spare3;
  DWORD DozeS4Timeout;
  DWORD BroadcastCapacityResolution;
  SYSTEM_POWER_LEVEL DischargePolicy[NUM_DISCHARGE_POLICIES];
  DWORD VideoTimeout;
  BOOLEAN VideoDimDisplay;
  DWORD VideoReserved[3];
  DWORD SpindownTimeout;
  BOOLEAN OptimizeForPower;
  BYTE FanThrottleTolerance;
  BYTE ForcedThrottle;
  BYTE MinThrottle;
  POWER_ACTION_POLICY OverThrottled;
}
alias _SYSTEM_POWER_POLICY SYSTEM_POWER_POLICY;
alias _SYSTEM_POWER_POLICY* PSYSTEM_POWER_POLICY;

struct _PROCESSOR_POWER_POLICY_INFO {

  DWORD TimeCheck;
  DWORD DemoteLimit;
  DWORD PromoteLimit;

  BYTE DemotePercent;
  BYTE PromotePercent;
  BYTE Spare[2];
// DWORD                   AllowDemotion:1;
// DWORD                   AllowPromotion:1;
// DWORD                   Reserved:30;

}
alias _PROCESSOR_POWER_POLICY_INFO PROCESSOR_POWER_POLICY_INFO;
alias _PROCESSOR_POWER_POLICY_INFO* PPROCESSOR_POWER_POLICY_INFO;

struct _PROCESSOR_POWER_POLICY {
  DWORD Revision;

  BYTE DynamicThrottle;
  BYTE Spare[3];
  DWORD Reserved;

  DWORD PolicyCount;
  PROCESSOR_POWER_POLICY_INFO Policy[3];
}
alias _PROCESSOR_POWER_POLICY PROCESSOR_POWER_POLICY;
alias _PROCESSOR_POWER_POLICY* PPROCESSOR_POWER_POLICY;

struct _ADMINISTRATOR_POWER_POLICY {

  SYSTEM_POWER_STATE MinSleep;
  SYSTEM_POWER_STATE MaxSleep;
  DWORD MinVideoTimeout;
  DWORD MaxVideoTimeout;
  DWORD MinSpindownTimeout;
  DWORD MaxSpindownTimeout;
}
alias _ADMINISTRATOR_POWER_POLICY ADMINISTRATOR_POWER_POLICY;
alias _ADMINISTRATOR_POWER_POLICY* PADMINISTRATOR_POWER_POLICY;

struct _10 {

  BOOLEAN PowerButtonPresent;
  BOOLEAN SleepButtonPresent;
  BOOLEAN LidPresent;
  BOOLEAN SystemS1;
  BOOLEAN SystemS2;
  BOOLEAN SystemS3;
  BOOLEAN SystemS4;
  BOOLEAN SystemS5;
  BOOLEAN HiberFilePresent;
  BOOLEAN FullWake;
  BOOLEAN VideoDimPresent;
  BOOLEAN ApmPresent;
  BOOLEAN UpsPresent;
  BOOLEAN ThermalControl;
  BOOLEAN ProcessorThrottle;
  BYTE ProcessorMinThrottle;
  BYTE ProcessorMaxThrottle;
  BYTE spare2[4];
  BOOLEAN DiskSpinDown;
  BYTE spare3[8];
  BOOLEAN SystemBatteriesPresent;
  BOOLEAN BatteriesAreShortTerm;
  BATTERY_REPORTING_SCALE BatteryScale[3];
  SYSTEM_POWER_STATE AcOnLineWake;
  SYSTEM_POWER_STATE SoftLidWake;
  SYSTEM_POWER_STATE RtcWake;
  SYSTEM_POWER_STATE MinDeviceWakeState;
  SYSTEM_POWER_STATE DefaultLowLatencyWake;
}
alias _10 SYSTEM_POWER_CAPABILITIES;
alias _10* PSYSTEM_POWER_CAPABILITIES;

struct _11 {
  BOOLEAN AcOnLine;
  BOOLEAN BatteryPresent;
  BOOLEAN Charging;
  BOOLEAN Discharging;
  BOOLEAN Spare1[4];
  DWORD MaxCapacity;
  DWORD RemainingCapacity;
  DWORD Rate;
  DWORD EstimatedTime;
  DWORD DefaultAlert1;
  DWORD DefaultAlert2;
}
alias _11 SYSTEM_BATTERY_STATE;
alias _11* PSYSTEM_BATTERY_STATE;

// #ifndef _MAC

align(4):

enum : uint { IMAGE_DOS_SIGNATURE = 0x5A4D }
enum : uint { IMAGE_OS2_SIGNATURE = 0x454E }
enum : uint { IMAGE_OS2_SIGNATURE_LE = 0x454C }
enum : uint { IMAGE_VXD_SIGNATURE = 0x454C }
enum : uint { IMAGE_NT_SIGNATURE = 0x00004550 }

align(2):

// #else

// #...

// #...
// #...
// #...
// #...
// #endif

struct _IMAGE_DOS_HEADER {
  WORD e_magic;
  WORD e_cblp;
  WORD e_cp;
  WORD e_crlc;
  WORD e_cparhdr;
  WORD e_minalloc;
  WORD e_maxalloc;
  WORD e_ss;
  WORD e_sp;
  WORD e_csum;
  WORD e_ip;
  WORD e_cs;
  WORD e_lfarlc;
  WORD e_ovno;
  WORD e_res[4];
  WORD e_oemid;
  WORD e_oeminfo;
  WORD e_res2[10];
  LONG e_lfanew;
}
alias _IMAGE_DOS_HEADER IMAGE_DOS_HEADER;
alias _IMAGE_DOS_HEADER* PIMAGE_DOS_HEADER;

struct _IMAGE_OS2_HEADER {
  WORD ne_magic;
  CHAR ne_ver;
  CHAR ne_rev;
  WORD ne_enttab;
  WORD ne_cbenttab;
  LONG ne_crc;
  WORD ne_flags;
  WORD ne_autodata;
  WORD ne_heap;
  WORD ne_stack;
  LONG ne_csip;
  LONG ne_sssp;
  WORD ne_cseg;
  WORD ne_cmod;
  WORD ne_cbnrestab;
  WORD ne_segtab;
  WORD ne_rsrctab;
  WORD ne_restab;
  WORD ne_modtab;
  WORD ne_imptab;
  LONG ne_nrestab;
  WORD ne_cmovent;
  WORD ne_align;
  WORD ne_cres;
  BYTE ne_exetyp;
  BYTE ne_flagsothers;
  WORD ne_pretthunks;
  WORD ne_psegrefbytes;
  WORD ne_swaparea;
  WORD ne_expver;
}
alias _IMAGE_OS2_HEADER IMAGE_OS2_HEADER;
alias _IMAGE_OS2_HEADER* PIMAGE_OS2_HEADER;

struct _IMAGE_VXD_HEADER {
  WORD e32_magic;
  BYTE e32_border;
  BYTE e32_worder;
  DWORD e32_level;
  WORD e32_cpu;
  WORD e32_os;
  DWORD e32_ver;
  DWORD e32_mflags;
  DWORD e32_mpages;
  DWORD e32_startobj;
  DWORD e32_eip;
  DWORD e32_stackobj;
  DWORD e32_esp;
  DWORD e32_pagesize;
  DWORD e32_lastpagesize;
  DWORD e32_fixupsize;
  DWORD e32_fixupsum;
  DWORD e32_ldrsize;
  DWORD e32_ldrsum;
  DWORD e32_objtab;
  DWORD e32_objcnt;
  DWORD e32_objmap;
  DWORD e32_itermap;
  DWORD e32_rsrctab;
  DWORD e32_rsrccnt;
  DWORD e32_restab;
  DWORD e32_enttab;
  DWORD e32_dirtab;
  DWORD e32_dircnt;
  DWORD e32_fpagetab;
  DWORD e32_frectab;
  DWORD e32_impmod;
  DWORD e32_impmodcnt;
  DWORD e32_impproc;
  DWORD e32_pagesum;
  DWORD e32_datapage;
  DWORD e32_preload;
  DWORD e32_nrestab;
  DWORD e32_cbnrestab;
  DWORD e32_nressum;
  DWORD e32_autodata;
  DWORD e32_debuginfo;
  DWORD e32_debuglen;
  DWORD e32_instpreload;
  DWORD e32_instdemand;
  DWORD e32_heapsize;
  BYTE e32_res3[12];
  DWORD e32_winresoff;
  DWORD e32_winreslen;
  WORD e32_devid;
  WORD e32_ddkver;
}
alias _IMAGE_VXD_HEADER IMAGE_VXD_HEADER;
alias _IMAGE_VXD_HEADER* PIMAGE_VXD_HEADER;

// #ifndef _MAC
align:
// #endif

struct _IMAGE_FILE_HEADER {
  WORD Machine;
  WORD NumberOfSections;
  DWORD TimeDateStamp;
  DWORD PointerToSymbolTable;
  DWORD NumberOfSymbols;
  WORD SizeOfOptionalHeader;
  WORD Characteristics;
}
alias _IMAGE_FILE_HEADER IMAGE_FILE_HEADER;
alias _IMAGE_FILE_HEADER* PIMAGE_FILE_HEADER;

enum : uint { IMAGE_SIZEOF_FILE_HEADER = 20 }

enum : uint { IMAGE_FILE_RELOCS_STRIPPED = 0x0001 }
enum : uint { IMAGE_FILE_EXECUTABLE_IMAGE = 0x0002 }
enum : uint { IMAGE_FILE_LINE_NUMS_STRIPPED = 0x0004 }
enum : uint { IMAGE_FILE_LOCAL_SYMS_STRIPPED = 0x0008 }
enum : uint { IMAGE_FILE_AGGRESIVE_WS_TRIM = 0x0010 }
enum : uint { IMAGE_FILE_LARGE_ADDRESS_AWARE = 0x0020 }
enum : uint { IMAGE_FILE_BYTES_REVERSED_LO = 0x0080 }
enum : uint { IMAGE_FILE_32BIT_MACHINE = 0x0100 }
enum : uint { IMAGE_FILE_DEBUG_STRIPPED = 0x0200 }
enum : uint { IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP = 0x0400 }
enum : uint { IMAGE_FILE_NET_RUN_FROM_SWAP = 0x0800 }
enum : uint { IMAGE_FILE_SYSTEM = 0x1000 }
enum : uint { IMAGE_FILE_DLL = 0x2000 }
enum : uint { IMAGE_FILE_UP_SYSTEM_ONLY = 0x4000 }
enum : uint { IMAGE_FILE_BYTES_REVERSED_HI = 0x8000 }

enum : uint { IMAGE_FILE_MACHINE_UNKNOWN = 0 }
enum : uint { IMAGE_FILE_MACHINE_I386 = 0x014c }
enum : uint { IMAGE_FILE_MACHINE_R3000 = 0x0162 }
enum : uint { IMAGE_FILE_MACHINE_R4000 = 0x0166 }
enum : uint { IMAGE_FILE_MACHINE_R10000 = 0x0168 }
enum : uint { IMAGE_FILE_MACHINE_WCEMIPSV2 = 0x0169 }
enum : uint { IMAGE_FILE_MACHINE_ALPHA = 0x0184 }
enum : uint { IMAGE_FILE_MACHINE_SH3 = 0x01a2 }
enum : uint { IMAGE_FILE_MACHINE_SH3DSP = 0x01a3 }
enum : uint { IMAGE_FILE_MACHINE_SH3E = 0x01a4 }
enum : uint { IMAGE_FILE_MACHINE_SH4 = 0x01a6 }
enum : uint { IMAGE_FILE_MACHINE_SH5 = 0x01a8 }
enum : uint { IMAGE_FILE_MACHINE_ARM = 0x01c0 }
enum : uint { IMAGE_FILE_MACHINE_THUMB = 0x01c2 }
enum : uint { IMAGE_FILE_MACHINE_AM33 = 0x01d3 }
enum : uint { IMAGE_FILE_MACHINE_POWERPC = 0x01F0 }
enum : uint { IMAGE_FILE_MACHINE_POWERPCFP = 0x01f1 }
enum : uint { IMAGE_FILE_MACHINE_IA64 = 0x0200 }
enum : uint { IMAGE_FILE_MACHINE_MIPS16 = 0x0266 }
enum : uint { IMAGE_FILE_MACHINE_ALPHA64 = 0x0284 }
enum : uint { IMAGE_FILE_MACHINE_MIPSFPU = 0x0366 }
enum : uint { IMAGE_FILE_MACHINE_MIPSFPU16 = 0x0466 }
alias IMAGE_FILE_MACHINE_ALPHA64 IMAGE_FILE_MACHINE_AXP64;
enum : uint { IMAGE_FILE_MACHINE_TRICORE = 0x0520 }
enum : uint { IMAGE_FILE_MACHINE_CEF = 0x0CEF }
enum : uint { IMAGE_FILE_MACHINE_EBC = 0x0EBC }
enum : uint { IMAGE_FILE_MACHINE_AMD64 = 0x8664 }
enum : uint { IMAGE_FILE_MACHINE_M32R = 0x9041 }
enum : uint { IMAGE_FILE_MACHINE_CEE = 0xC0EE }

struct _IMAGE_DATA_DIRECTORY {
  DWORD VirtualAddress;
  DWORD Size;
}
alias _IMAGE_DATA_DIRECTORY IMAGE_DATA_DIRECTORY;
alias _IMAGE_DATA_DIRECTORY* PIMAGE_DATA_DIRECTORY;

enum : uint { IMAGE_NUMBEROF_DIRECTORY_ENTRIES = 16 }

struct _IMAGE_OPTIONAL_HEADER {

  WORD Magic;
  BYTE MajorLinkerVersion;
  BYTE MinorLinkerVersion;
  DWORD SizeOfCode;
  DWORD SizeOfInitializedData;
  DWORD SizeOfUninitializedData;
  DWORD AddressOfEntryPoint;
  DWORD BaseOfCode;
  DWORD BaseOfData;

  DWORD ImageBase;
  DWORD SectionAlignment;
  DWORD FileAlignment;
  WORD MajorOperatingSystemVersion;
  WORD MinorOperatingSystemVersion;
  WORD MajorImageVersion;
  WORD MinorImageVersion;
  WORD MajorSubsystemVersion;
  WORD MinorSubsystemVersion;
  DWORD Win32VersionValue;
  DWORD SizeOfImage;
  DWORD SizeOfHeaders;
  DWORD CheckSum;
  WORD Subsystem;
  WORD DllCharacteristics;
  DWORD SizeOfStackReserve;
  DWORD SizeOfStackCommit;
  DWORD SizeOfHeapReserve;
  DWORD SizeOfHeapCommit;
  DWORD LoaderFlags;
  DWORD NumberOfRvaAndSizes;
  IMAGE_DATA_DIRECTORY DataDirectory[IMAGE_NUMBEROF_DIRECTORY_ENTRIES];
}
alias _IMAGE_OPTIONAL_HEADER IMAGE_OPTIONAL_HEADER32;
alias _IMAGE_OPTIONAL_HEADER* PIMAGE_OPTIONAL_HEADER32;

struct _IMAGE_ROM_OPTIONAL_HEADER {
  WORD Magic;
  BYTE MajorLinkerVersion;
  BYTE MinorLinkerVersion;
  DWORD SizeOfCode;
  DWORD SizeOfInitializedData;
  DWORD SizeOfUninitializedData;
  DWORD AddressOfEntryPoint;
  DWORD BaseOfCode;
  DWORD BaseOfData;
  DWORD BaseOfBss;
  DWORD GprMask;
  DWORD CprMask[4];
  DWORD GpValue;
}
alias _IMAGE_ROM_OPTIONAL_HEADER IMAGE_ROM_OPTIONAL_HEADER;
alias _IMAGE_ROM_OPTIONAL_HEADER* PIMAGE_ROM_OPTIONAL_HEADER;

struct _IMAGE_OPTIONAL_HEADER64 {
  WORD Magic;
  BYTE MajorLinkerVersion;
  BYTE MinorLinkerVersion;
  DWORD SizeOfCode;
  DWORD SizeOfInitializedData;
  DWORD SizeOfUninitializedData;
  DWORD AddressOfEntryPoint;
  DWORD BaseOfCode;
  ULONGLONG ImageBase;
  DWORD SectionAlignment;
  DWORD FileAlignment;
  WORD MajorOperatingSystemVersion;
  WORD MinorOperatingSystemVersion;
  WORD MajorImageVersion;
  WORD MinorImageVersion;
  WORD MajorSubsystemVersion;
  WORD MinorSubsystemVersion;
  DWORD Win32VersionValue;
  DWORD SizeOfImage;
  DWORD SizeOfHeaders;
  DWORD CheckSum;
  WORD Subsystem;
  WORD DllCharacteristics;
  ULONGLONG SizeOfStackReserve;
  ULONGLONG SizeOfStackCommit;
  ULONGLONG SizeOfHeapReserve;
  ULONGLONG SizeOfHeapCommit;
  DWORD LoaderFlags;
  DWORD NumberOfRvaAndSizes;
  IMAGE_DATA_DIRECTORY DataDirectory[IMAGE_NUMBEROF_DIRECTORY_ENTRIES];
}
alias _IMAGE_OPTIONAL_HEADER64 IMAGE_OPTIONAL_HEADER64;
alias _IMAGE_OPTIONAL_HEADER64* PIMAGE_OPTIONAL_HEADER64;

enum : uint { IMAGE_SIZEOF_ROM_OPTIONAL_HEADER = 56 }
enum : uint { IMAGE_SIZEOF_STD_OPTIONAL_HEADER = 28 }
enum : uint { IMAGE_SIZEOF_NT_OPTIONAL32_HEADER = 224 }
enum : uint { IMAGE_SIZEOF_NT_OPTIONAL64_HEADER = 240 }

enum : uint { IMAGE_NT_OPTIONAL_HDR32_MAGIC = 0x10b }
enum : uint { IMAGE_NT_OPTIONAL_HDR64_MAGIC = 0x20b }
enum : uint { IMAGE_ROM_OPTIONAL_HDR_MAGIC = 0x107 }

// #ifdef _WIN64
// ...
// #...
// #...
// #else
alias IMAGE_OPTIONAL_HEADER32 IMAGE_OPTIONAL_HEADER;
alias PIMAGE_OPTIONAL_HEADER32 PIMAGE_OPTIONAL_HEADER;
alias IMAGE_SIZEOF_NT_OPTIONAL32_HEADER IMAGE_SIZEOF_NT_OPTIONAL_HEADER;
alias IMAGE_NT_OPTIONAL_HDR32_MAGIC IMAGE_NT_OPTIONAL_HDR_MAGIC;
// #endif

struct _IMAGE_NT_HEADERS64 {
  DWORD Signature;
  IMAGE_FILE_HEADER FileHeader;
  IMAGE_OPTIONAL_HEADER64 OptionalHeader;
}
alias _IMAGE_NT_HEADERS64 IMAGE_NT_HEADERS64;
alias _IMAGE_NT_HEADERS64* PIMAGE_NT_HEADERS64;

struct _IMAGE_NT_HEADERS {
  DWORD Signature;
  IMAGE_FILE_HEADER FileHeader;
  IMAGE_OPTIONAL_HEADER32 OptionalHeader;
}
alias _IMAGE_NT_HEADERS IMAGE_NT_HEADERS32;
alias _IMAGE_NT_HEADERS* PIMAGE_NT_HEADERS32;

struct _IMAGE_ROM_HEADERS {
  IMAGE_FILE_HEADER FileHeader;
  IMAGE_ROM_OPTIONAL_HEADER OptionalHeader;
}
alias _IMAGE_ROM_HEADERS IMAGE_ROM_HEADERS;
alias _IMAGE_ROM_HEADERS* PIMAGE_ROM_HEADERS;

// #ifdef _WIN64
// ...
// #else
alias IMAGE_NT_HEADERS32 IMAGE_NT_HEADERS;
alias PIMAGE_NT_HEADERS32 PIMAGE_NT_HEADERS;
// #endif

// #define IMAGE_FIRST_SECTION( ntheader ) ((PIMAGE_SECTION_HEADER) ((ULONG_PTR)ntheader + FIELD_OFFSET( IMAGE_NT_HEADERS, OptionalHeader ) + ((PIMAGE_NT_HEADERS)(ntheader))->FileHeader.SizeOfOptionalHeader ))

enum : uint { IMAGE_SUBSYSTEM_UNKNOWN = 0 }
enum : uint { IMAGE_SUBSYSTEM_NATIVE = 1 }
enum : uint { IMAGE_SUBSYSTEM_WINDOWS_GUI = 2 }
enum : uint { IMAGE_SUBSYSTEM_WINDOWS_CUI = 3 }
enum : uint { IMAGE_SUBSYSTEM_OS2_CUI = 5 }
enum : uint { IMAGE_SUBSYSTEM_POSIX_CUI = 7 }
enum : uint { IMAGE_SUBSYSTEM_NATIVE_WINDOWS = 8 }
enum : uint { IMAGE_SUBSYSTEM_WINDOWS_CE_GUI = 9 }
enum : uint { IMAGE_SUBSYSTEM_EFI_APPLICATION = 10 }
enum : uint { IMAGE_SUBSYSTEM_EFI_BOOT_SERVICE_DRIVER = 11 }
enum : uint { IMAGE_SUBSYSTEM_EFI_RUNTIME_DRIVER = 12 }
enum : uint { IMAGE_SUBSYSTEM_EFI_ROM = 13 }
enum : uint { IMAGE_SUBSYSTEM_XBOX = 14 }

enum : uint { IMAGE_DLLCHARACTERISTICS_NO_BIND = 0x0800 }

enum : uint { IMAGE_DLLCHARACTERISTICS_WDM_DRIVER = 0x2000 }

enum : uint { IMAGE_DLLCHARACTERISTICS_TERMINAL_SERVER_AWARE = 0x8000 }

enum : uint { IMAGE_DIRECTORY_ENTRY_EXPORT = 0 }
enum : uint { IMAGE_DIRECTORY_ENTRY_IMPORT = 1 }
enum : uint { IMAGE_DIRECTORY_ENTRY_RESOURCE = 2 }
enum : uint { IMAGE_DIRECTORY_ENTRY_EXCEPTION = 3 }
enum : uint { IMAGE_DIRECTORY_ENTRY_SECURITY = 4 }
enum : uint { IMAGE_DIRECTORY_ENTRY_BASERELOC = 5 }
enum : uint { IMAGE_DIRECTORY_ENTRY_DEBUG = 6 }

enum : uint { IMAGE_DIRECTORY_ENTRY_ARCHITECTURE = 7 }
enum : uint { IMAGE_DIRECTORY_ENTRY_GLOBALPTR = 8 }
enum : uint { IMAGE_DIRECTORY_ENTRY_TLS = 9 }
enum : uint { IMAGE_DIRECTORY_ENTRY_LOAD_CONFIG = 10 }
enum : uint { IMAGE_DIRECTORY_ENTRY_BOUND_IMPORT = 11 }
enum : uint { IMAGE_DIRECTORY_ENTRY_IAT = 12 }
enum : uint { IMAGE_DIRECTORY_ENTRY_DELAY_IMPORT = 13 }
enum : uint { IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR = 14 }

struct ANON_OBJECT_HEADER {
  WORD Sig1;
  WORD Sig2;
  WORD Version;
  WORD Machine;
  DWORD TimeDateStamp;
  CLSID ClassID;
  DWORD SizeOfData;
}

enum : uint { IMAGE_SIZEOF_SHORT_NAME = 8 }

struct _IMAGE_SECTION_HEADER {
  BYTE Name[IMAGE_SIZEOF_SHORT_NAME];
union {
  DWORD PhysicalAddress;
  DWORD VirtualSize;
}

  DWORD VirtualAddress;
  DWORD SizeOfRawData;
  DWORD PointerToRawData;
  DWORD PointerToRelocations;
  DWORD PointerToLinenumbers;
  WORD NumberOfRelocations;
  WORD NumberOfLinenumbers;
  DWORD Characteristics;
}
alias _IMAGE_SECTION_HEADER IMAGE_SECTION_HEADER;
alias _IMAGE_SECTION_HEADER* PIMAGE_SECTION_HEADER;

enum : uint { IMAGE_SIZEOF_SECTION_HEADER = 40 }

enum : uint { IMAGE_SCN_TYPE_NO_PAD = 0x00000008 }

enum : uint { IMAGE_SCN_CNT_CODE = 0x00000020 }
enum : uint { IMAGE_SCN_CNT_INITIALIZED_DATA = 0x00000040 }
enum : uint { IMAGE_SCN_CNT_UNINITIALIZED_DATA = 0x00000080 }

enum : uint { IMAGE_SCN_LNK_OTHER = 0x00000100 }
enum : uint { IMAGE_SCN_LNK_INFO = 0x00000200 }

enum : uint { IMAGE_SCN_LNK_REMOVE = 0x00000800 }
enum : uint { IMAGE_SCN_LNK_COMDAT = 0x00001000 }

enum : uint { IMAGE_SCN_NO_DEFER_SPEC_EXC = 0x00004000 }
enum : uint { IMAGE_SCN_GPREL = 0x00008000 }
enum : uint { IMAGE_SCN_MEM_FARDATA = 0x00008000 }

enum : uint { IMAGE_SCN_MEM_PURGEABLE = 0x00020000 }
enum : uint { IMAGE_SCN_MEM_16BIT = 0x00020000 }
enum : uint { IMAGE_SCN_MEM_LOCKED = 0x00040000 }
enum : uint { IMAGE_SCN_MEM_PRELOAD = 0x00080000 }

enum : uint { IMAGE_SCN_ALIGN_1BYTES = 0x00100000 }
enum : uint { IMAGE_SCN_ALIGN_2BYTES = 0x00200000 }
enum : uint { IMAGE_SCN_ALIGN_4BYTES = 0x00300000 }
enum : uint { IMAGE_SCN_ALIGN_8BYTES = 0x00400000 }
enum : uint { IMAGE_SCN_ALIGN_16BYTES = 0x00500000 }
enum : uint { IMAGE_SCN_ALIGN_32BYTES = 0x00600000 }
enum : uint { IMAGE_SCN_ALIGN_64BYTES = 0x00700000 }
enum : uint { IMAGE_SCN_ALIGN_128BYTES = 0x00800000 }
enum : uint { IMAGE_SCN_ALIGN_256BYTES = 0x00900000 }
enum : uint { IMAGE_SCN_ALIGN_512BYTES = 0x00A00000 }
enum : uint { IMAGE_SCN_ALIGN_1024BYTES = 0x00B00000 }
enum : uint { IMAGE_SCN_ALIGN_2048BYTES = 0x00C00000 }
enum : uint { IMAGE_SCN_ALIGN_4096BYTES = 0x00D00000 }
enum : uint { IMAGE_SCN_ALIGN_8192BYTES = 0x00E00000 }

enum : uint { IMAGE_SCN_ALIGN_MASK = 0x00F00000 }

enum : uint { IMAGE_SCN_LNK_NRELOC_OVFL = 0x01000000 }
enum : uint { IMAGE_SCN_MEM_DISCARDABLE = 0x02000000 }
enum : uint { IMAGE_SCN_MEM_NOT_CACHED = 0x04000000 }
enum : uint { IMAGE_SCN_MEM_NOT_PAGED = 0x08000000 }
enum : uint { IMAGE_SCN_MEM_SHARED = 0x10000000 }
enum : uint { IMAGE_SCN_MEM_EXECUTE = 0x20000000 }
enum : uint { IMAGE_SCN_MEM_READ = 0x40000000 }
enum : uint { IMAGE_SCN_MEM_WRITE = 0x80000000 }

enum : uint { IMAGE_SCN_SCALE_INDEX = 0x00000001 }

// #ifndef _MAC
align(2):
// #endif

struct _IMAGE_SYMBOL {
union {
  BYTE ShortName[8];
struct {
  DWORD Short;
  DWORD Long;
}

  DWORD LongName[2];
}

  DWORD Value;
  SHORT SectionNumber;
  WORD Type;
  BYTE StorageClass;
  BYTE NumberOfAuxSymbols;
}
alias _IMAGE_SYMBOL IMAGE_SYMBOL;

alias IMAGE_SYMBOL* PIMAGE_SYMBOL;

enum : uint { IMAGE_SIZEOF_SYMBOL = 18 }

enum : SHORT { IMAGE_SYM_UNDEFINED = 0 }
enum : SHORT { IMAGE_SYM_ABSOLUTE = -1 }
enum : SHORT { IMAGE_SYM_DEBUG = -2 }
enum : uint { IMAGE_SYM_SECTION_MAX = 0xFEFF }

enum : uint { IMAGE_SYM_TYPE_NULL = 0x0000 }
enum : uint { IMAGE_SYM_TYPE_VOID = 0x0001 }
enum : uint { IMAGE_SYM_TYPE_CHAR = 0x0002 }
enum : uint { IMAGE_SYM_TYPE_SHORT = 0x0003 }
enum : uint { IMAGE_SYM_TYPE_INT = 0x0004 }
enum : uint { IMAGE_SYM_TYPE_LONG = 0x0005 }
enum : uint { IMAGE_SYM_TYPE_FLOAT = 0x0006 }
enum : uint { IMAGE_SYM_TYPE_DOUBLE = 0x0007 }
enum : uint { IMAGE_SYM_TYPE_STRUCT = 0x0008 }
enum : uint { IMAGE_SYM_TYPE_UNION = 0x0009 }
enum : uint { IMAGE_SYM_TYPE_ENUM = 0x000A }
enum : uint { IMAGE_SYM_TYPE_MOE = 0x000B }
enum : uint { IMAGE_SYM_TYPE_BYTE = 0x000C }
enum : uint { IMAGE_SYM_TYPE_WORD = 0x000D }
enum : uint { IMAGE_SYM_TYPE_UINT = 0x000E }
enum : uint { IMAGE_SYM_TYPE_DWORD = 0x000F }
enum : uint { IMAGE_SYM_TYPE_PCODE = 0x8000 }

enum : uint { IMAGE_SYM_DTYPE_NULL = 0 }
enum : uint { IMAGE_SYM_DTYPE_POINTER = 1 }
enum : uint { IMAGE_SYM_DTYPE_FUNCTION = 2 }
enum : uint { IMAGE_SYM_DTYPE_ARRAY = 3 }

enum : BYTE { IMAGE_SYM_CLASS_END_OF_FUNCTION = cast(BYTE)-1 }
enum : uint { IMAGE_SYM_CLASS_NULL = 0x0000 }
enum : uint { IMAGE_SYM_CLASS_AUTOMATIC = 0x0001 }
enum : uint { IMAGE_SYM_CLASS_EXTERNAL = 0x0002 }
enum : uint { IMAGE_SYM_CLASS_STATIC = 0x0003 }
enum : uint { IMAGE_SYM_CLASS_REGISTER = 0x0004 }
enum : uint { IMAGE_SYM_CLASS_EXTERNAL_DEF = 0x0005 }
enum : uint { IMAGE_SYM_CLASS_LABEL = 0x0006 }
enum : uint { IMAGE_SYM_CLASS_UNDEFINED_LABEL = 0x0007 }
enum : uint { IMAGE_SYM_CLASS_MEMBER_OF_STRUCT = 0x0008 }
enum : uint { IMAGE_SYM_CLASS_ARGUMENT = 0x0009 }
enum : uint { IMAGE_SYM_CLASS_STRUCT_TAG = 0x000A }
enum : uint { IMAGE_SYM_CLASS_MEMBER_OF_UNION = 0x000B }
enum : uint { IMAGE_SYM_CLASS_UNION_TAG = 0x000C }
enum : uint { IMAGE_SYM_CLASS_TYPE_DEFINITION = 0x000D }
enum : uint { IMAGE_SYM_CLASS_UNDEFINED_STATIC = 0x000E }
enum : uint { IMAGE_SYM_CLASS_ENUM_TAG = 0x000F }
enum : uint { IMAGE_SYM_CLASS_MEMBER_OF_ENUM = 0x0010 }
enum : uint { IMAGE_SYM_CLASS_REGISTER_PARAM = 0x0011 }
enum : uint { IMAGE_SYM_CLASS_BIT_FIELD = 0x0012 }

enum : uint { IMAGE_SYM_CLASS_FAR_EXTERNAL = 0x0044 }

enum : uint { IMAGE_SYM_CLASS_BLOCK = 0x0064 }
enum : uint { IMAGE_SYM_CLASS_FUNCTION = 0x0065 }
enum : uint { IMAGE_SYM_CLASS_END_OF_STRUCT = 0x0066 }
enum : uint { IMAGE_SYM_CLASS_FILE = 0x0067 }

enum : uint { IMAGE_SYM_CLASS_SECTION = 0x0068 }
enum : uint { IMAGE_SYM_CLASS_WEAK_EXTERNAL = 0x0069 }

enum : uint { IMAGE_SYM_CLASS_CLR_TOKEN = 0x006B }

enum : uint { N_BTMASK = 0x000F }
enum : uint { N_TMASK = 0x0030 }
enum : uint { N_TMASK1 = 0x00C0 }
enum : uint { N_TMASK2 = 0x00F0 }
enum : uint { N_BTSHFT = 4 }
enum : uint { N_TSHIFT = 2 }

BYTE BTYPE(BYTE x){ return x & N_BTMASK; }

// #ifndef ISPTR
bit ISPTR(uint x){ return (x & N_TMASK) == (IMAGE_SYM_DTYPE_POINTER << N_BTSHFT); }
// #endif

// #ifndef ISFCN
bit ISFCN(uint x){ return (x & N_TMASK) == (IMAGE_SYM_DTYPE_FUNCTION << N_BTSHFT); }
// #endif

// #ifndef ISARY
bit ISARY(uint x){ return (x & N_TMASK) == (IMAGE_SYM_DTYPE_ARRAY << N_BTSHFT); }
// #endif

// #ifndef ISTAG
bit ISTAG(uint x){ return x == IMAGE_SYM_CLASS_STRUCT_TAG || x == IMAGE_SYM_CLASS_UNION_TAG || x == IMAGE_SYM_CLASS_ENUM_TAG; }
// #endif

// #ifndef INCREF
uint INCREF(uint x){ return ((x&~N_BTMASK)<<N_TSHIFT)|(IMAGE_SYM_DTYPE_POINTER<<N_BTSHFT)|(x&N_BTMASK); }
// #endif
// #ifndef DECREF
uint DECREF(uint x){ return ((x >>> N_TSHIFT) & ~N_BTMASK)|(x & N_BTMASK); }
// #endif

union _IMAGE_AUX_SYMBOL {
struct {
  DWORD TagIndex;
union {
struct {
  WORD Linenumber;
  WORD Size;
}

  DWORD TotalSize;
}

union {
struct {
  DWORD PointerToLinenumber;
  DWORD PointerToNextFunction;
}

struct {
  WORD Dimension[4];
}

}

  WORD TvIndex;
}

struct {
  BYTE Name[IMAGE_SIZEOF_SYMBOL];
}

struct {
  DWORD Length;
  WORD NumberOfRelocations;
  WORD NumberOfLinenumbers;
  DWORD CheckSum;
  SHORT Number;
  BYTE Selection;
}

}
alias _IMAGE_AUX_SYMBOL IMAGE_AUX_SYMBOL;

alias IMAGE_AUX_SYMBOL* PIMAGE_AUX_SYMBOL;

enum : uint { IMAGE_SIZEOF_AUX_SYMBOL = 18 }

alias int IMAGE_AUX_SYMBOL_TYPE;
enum {
  IMAGE_AUX_SYMBOL_TYPE_TOKEN_DEF = 1,
}

align(2):

struct IMAGE_AUX_SYMBOL_TOKEN_DEF {
  BYTE bAuxType;
  BYTE bReserved;
  DWORD SymbolTableIndex;
  BYTE rgbReserved[12];
}

alias IMAGE_AUX_SYMBOL_TOKEN_DEF* PIMAGE_AUX_SYMBOL_TOKEN_DEF;

align:

enum : uint { IMAGE_COMDAT_SELECT_NODUPLICATES = 1 }
enum : uint { IMAGE_COMDAT_SELECT_ANY = 2 }
enum : uint { IMAGE_COMDAT_SELECT_SAME_SIZE = 3 }
enum : uint { IMAGE_COMDAT_SELECT_EXACT_MATCH = 4 }
enum : uint { IMAGE_COMDAT_SELECT_ASSOCIATIVE = 5 }
enum : uint { IMAGE_COMDAT_SELECT_LARGEST = 6 }
enum : uint { IMAGE_COMDAT_SELECT_NEWEST = 7 }

enum : uint { IMAGE_WEAK_EXTERN_SEARCH_NOLIBRARY = 1 }
enum : uint { IMAGE_WEAK_EXTERN_SEARCH_LIBRARY = 2 }
enum : uint { IMAGE_WEAK_EXTERN_SEARCH_ALIAS = 3 }

struct _IMAGE_RELOCATION {
union {
  DWORD VirtualAddress;
  DWORD RelocCount;
}

  DWORD SymbolTableIndex;
  WORD Type;
}
alias _IMAGE_RELOCATION IMAGE_RELOCATION;

alias IMAGE_RELOCATION* PIMAGE_RELOCATION;

enum : uint { IMAGE_SIZEOF_RELOCATION = 10 }

enum : uint { IMAGE_REL_I386_ABSOLUTE = 0x0000 }
enum : uint { IMAGE_REL_I386_DIR16 = 0x0001 }
enum : uint { IMAGE_REL_I386_REL16 = 0x0002 }
enum : uint { IMAGE_REL_I386_DIR32 = 0x0006 }
enum : uint { IMAGE_REL_I386_DIR32NB = 0x0007 }
enum : uint { IMAGE_REL_I386_SEG12 = 0x0009 }
enum : uint { IMAGE_REL_I386_SECTION = 0x000A }
enum : uint { IMAGE_REL_I386_SECREL = 0x000B }
enum : uint { IMAGE_REL_I386_TOKEN = 0x000C }
enum : uint { IMAGE_REL_I386_SECREL7 = 0x000D }
enum : uint { IMAGE_REL_I386_REL32 = 0x0014 }

enum : uint { IMAGE_REL_MIPS_ABSOLUTE = 0x0000 }
enum : uint { IMAGE_REL_MIPS_REFHALF = 0x0001 }
enum : uint { IMAGE_REL_MIPS_REFWORD = 0x0002 }
enum : uint { IMAGE_REL_MIPS_JMPADDR = 0x0003 }
enum : uint { IMAGE_REL_MIPS_REFHI = 0x0004 }
enum : uint { IMAGE_REL_MIPS_REFLO = 0x0005 }
enum : uint { IMAGE_REL_MIPS_GPREL = 0x0006 }
enum : uint { IMAGE_REL_MIPS_LITERAL = 0x0007 }
enum : uint { IMAGE_REL_MIPS_SECTION = 0x000A }
enum : uint { IMAGE_REL_MIPS_SECREL = 0x000B }
enum : uint { IMAGE_REL_MIPS_SECRELLO = 0x000C }
enum : uint { IMAGE_REL_MIPS_SECRELHI = 0x000D }
enum : uint { IMAGE_REL_MIPS_TOKEN = 0x000E }
enum : uint { IMAGE_REL_MIPS_JMPADDR16 = 0x0010 }
enum : uint { IMAGE_REL_MIPS_REFWORDNB = 0x0022 }
enum : uint { IMAGE_REL_MIPS_PAIR = 0x0025 }

enum : uint { IMAGE_REL_ALPHA_ABSOLUTE = 0x0000 }
enum : uint { IMAGE_REL_ALPHA_REFLONG = 0x0001 }
enum : uint { IMAGE_REL_ALPHA_REFQUAD = 0x0002 }
enum : uint { IMAGE_REL_ALPHA_GPREL32 = 0x0003 }
enum : uint { IMAGE_REL_ALPHA_LITERAL = 0x0004 }
enum : uint { IMAGE_REL_ALPHA_LITUSE = 0x0005 }
enum : uint { IMAGE_REL_ALPHA_GPDISP = 0x0006 }
enum : uint { IMAGE_REL_ALPHA_BRADDR = 0x0007 }
enum : uint { IMAGE_REL_ALPHA_HINT = 0x0008 }
enum : uint { IMAGE_REL_ALPHA_INLINE_REFLONG = 0x0009 }
enum : uint { IMAGE_REL_ALPHA_REFHI = 0x000A }
enum : uint { IMAGE_REL_ALPHA_REFLO = 0x000B }
enum : uint { IMAGE_REL_ALPHA_PAIR = 0x000C }
enum : uint { IMAGE_REL_ALPHA_MATCH = 0x000D }
enum : uint { IMAGE_REL_ALPHA_SECTION = 0x000E }
enum : uint { IMAGE_REL_ALPHA_SECREL = 0x000F }
enum : uint { IMAGE_REL_ALPHA_REFLONGNB = 0x0010 }
enum : uint { IMAGE_REL_ALPHA_SECRELLO = 0x0011 }
enum : uint { IMAGE_REL_ALPHA_SECRELHI = 0x0012 }
enum : uint { IMAGE_REL_ALPHA_REFQ3 = 0x0013 }
enum : uint { IMAGE_REL_ALPHA_REFQ2 = 0x0014 }
enum : uint { IMAGE_REL_ALPHA_REFQ1 = 0x0015 }
enum : uint { IMAGE_REL_ALPHA_GPRELLO = 0x0016 }
enum : uint { IMAGE_REL_ALPHA_GPRELHI = 0x0017 }

enum : uint { IMAGE_REL_PPC_ABSOLUTE = 0x0000 }
enum : uint { IMAGE_REL_PPC_ADDR64 = 0x0001 }
enum : uint { IMAGE_REL_PPC_ADDR32 = 0x0002 }
enum : uint { IMAGE_REL_PPC_ADDR24 = 0x0003 }
enum : uint { IMAGE_REL_PPC_ADDR16 = 0x0004 }
enum : uint { IMAGE_REL_PPC_ADDR14 = 0x0005 }
enum : uint { IMAGE_REL_PPC_REL24 = 0x0006 }
enum : uint { IMAGE_REL_PPC_REL14 = 0x0007 }
enum : uint { IMAGE_REL_PPC_TOCREL16 = 0x0008 }
enum : uint { IMAGE_REL_PPC_TOCREL14 = 0x0009 }

enum : uint { IMAGE_REL_PPC_ADDR32NB = 0x000A }
enum : uint { IMAGE_REL_PPC_SECREL = 0x000B }
enum : uint { IMAGE_REL_PPC_SECTION = 0x000C }
enum : uint { IMAGE_REL_PPC_IFGLUE = 0x000D }
enum : uint { IMAGE_REL_PPC_IMGLUE = 0x000E }
enum : uint { IMAGE_REL_PPC_SECREL16 = 0x000F }
enum : uint { IMAGE_REL_PPC_REFHI = 0x0010 }
enum : uint { IMAGE_REL_PPC_REFLO = 0x0011 }
enum : uint { IMAGE_REL_PPC_PAIR = 0x0012 }
enum : uint { IMAGE_REL_PPC_SECRELLO = 0x0013 }
enum : uint { IMAGE_REL_PPC_SECRELHI = 0x0014 }
enum : uint { IMAGE_REL_PPC_GPREL = 0x0015 }
enum : uint { IMAGE_REL_PPC_TOKEN = 0x0016 }

enum : uint { IMAGE_REL_PPC_TYPEMASK = 0x00FF }

enum : uint { IMAGE_REL_PPC_NEG = 0x0100 }
enum : uint { IMAGE_REL_PPC_BRTAKEN = 0x0200 }
enum : uint { IMAGE_REL_PPC_BRNTAKEN = 0x0400 }
enum : uint { IMAGE_REL_PPC_TOCDEFN = 0x0800 }

enum : uint { IMAGE_REL_SH3_ABSOLUTE = 0x0000 }
enum : uint { IMAGE_REL_SH3_DIRECT16 = 0x0001 }
enum : uint { IMAGE_REL_SH3_DIRECT32 = 0x0002 }
enum : uint { IMAGE_REL_SH3_DIRECT8 = 0x0003 }
enum : uint { IMAGE_REL_SH3_DIRECT8_WORD = 0x0004 }
enum : uint { IMAGE_REL_SH3_DIRECT8_LONG = 0x0005 }
enum : uint { IMAGE_REL_SH3_DIRECT4 = 0x0006 }
enum : uint { IMAGE_REL_SH3_DIRECT4_WORD = 0x0007 }
enum : uint { IMAGE_REL_SH3_DIRECT4_LONG = 0x0008 }
enum : uint { IMAGE_REL_SH3_PCREL8_WORD = 0x0009 }
enum : uint { IMAGE_REL_SH3_PCREL8_LONG = 0x000A }
enum : uint { IMAGE_REL_SH3_PCREL12_WORD = 0x000B }
enum : uint { IMAGE_REL_SH3_STARTOF_SECTION = 0x000C }
enum : uint { IMAGE_REL_SH3_SIZEOF_SECTION = 0x000D }
enum : uint { IMAGE_REL_SH3_SECTION = 0x000E }
enum : uint { IMAGE_REL_SH3_SECREL = 0x000F }
enum : uint { IMAGE_REL_SH3_DIRECT32_NB = 0x0010 }
enum : uint { IMAGE_REL_SH3_GPREL4_LONG = 0x0011 }
enum : uint { IMAGE_REL_SH3_TOKEN = 0x0012 }

enum : uint { IMAGE_REL_ARM_ABSOLUTE = 0x0000 }
enum : uint { IMAGE_REL_ARM_ADDR32 = 0x0001 }
enum : uint { IMAGE_REL_ARM_ADDR32NB = 0x0002 }
enum : uint { IMAGE_REL_ARM_BRANCH24 = 0x0003 }
enum : uint { IMAGE_REL_ARM_BRANCH11 = 0x0004 }
enum : uint { IMAGE_REL_ARM_TOKEN = 0x0005 }
enum : uint { IMAGE_REL_ARM_GPREL12 = 0x0006 }
enum : uint { IMAGE_REL_ARM_GPREL7 = 0x0007 }
enum : uint { IMAGE_REL_ARM_BLX24 = 0x0008 }
enum : uint { IMAGE_REL_ARM_BLX11 = 0x0009 }
enum : uint { IMAGE_REL_ARM_SECTION = 0x000E }
enum : uint { IMAGE_REL_ARM_SECREL = 0x000F }

enum : uint { IMAGE_REL_AM_ABSOLUTE = 0x0000 }
enum : uint { IMAGE_REL_AM_ADDR32 = 0x0001 }
enum : uint { IMAGE_REL_AM_ADDR32NB = 0x0002 }
enum : uint { IMAGE_REL_AM_CALL32 = 0x0003 }
enum : uint { IMAGE_REL_AM_FUNCINFO = 0x0004 }
enum : uint { IMAGE_REL_AM_REL32_1 = 0x0005 }
enum : uint { IMAGE_REL_AM_REL32_2 = 0x0006 }
enum : uint { IMAGE_REL_AM_SECREL = 0x0007 }
enum : uint { IMAGE_REL_AM_SECTION = 0x0008 }
enum : uint { IMAGE_REL_AM_TOKEN = 0x0009 }

enum : uint { IMAGE_REL_AMD64_ABSOLUTE = 0x0000 }
enum : uint { IMAGE_REL_AMD64_ADDR64 = 0x0001 }
enum : uint { IMAGE_REL_AMD64_ADDR32 = 0x0002 }
enum : uint { IMAGE_REL_AMD64_ADDR32NB = 0x0003 }
enum : uint { IMAGE_REL_AMD64_REL32 = 0x0004 }
enum : uint { IMAGE_REL_AMD64_REL32_1 = 0x0005 }
enum : uint { IMAGE_REL_AMD64_REL32_2 = 0x0006 }
enum : uint { IMAGE_REL_AMD64_REL32_3 = 0x0007 }
enum : uint { IMAGE_REL_AMD64_REL32_4 = 0x0008 }
enum : uint { IMAGE_REL_AMD64_REL32_5 = 0x0009 }
enum : uint { IMAGE_REL_AMD64_SECTION = 0x000A }
enum : uint { IMAGE_REL_AMD64_SECREL = 0x000B }
enum : uint { IMAGE_REL_AMD64_SECREL7 = 0x000C }
enum : uint { IMAGE_REL_AMD64_TOKEN = 0x000D }

enum : uint { IMAGE_REL_IA64_ABSOLUTE = 0x0000 }
enum : uint { IMAGE_REL_IA64_IMM14 = 0x0001 }
enum : uint { IMAGE_REL_IA64_IMM22 = 0x0002 }
enum : uint { IMAGE_REL_IA64_IMM64 = 0x0003 }
enum : uint { IMAGE_REL_IA64_DIR32 = 0x0004 }
enum : uint { IMAGE_REL_IA64_DIR64 = 0x0005 }
enum : uint { IMAGE_REL_IA64_PCREL21B = 0x0006 }
enum : uint { IMAGE_REL_IA64_PCREL21M = 0x0007 }
enum : uint { IMAGE_REL_IA64_PCREL21F = 0x0008 }
enum : uint { IMAGE_REL_IA64_GPREL22 = 0x0009 }
enum : uint { IMAGE_REL_IA64_LTOFF22 = 0x000A }
enum : uint { IMAGE_REL_IA64_SECTION = 0x000B }
enum : uint { IMAGE_REL_IA64_SECREL22 = 0x000C }
enum : uint { IMAGE_REL_IA64_SECREL64I = 0x000D }
enum : uint { IMAGE_REL_IA64_SECREL32 = 0x000E }

enum : uint { IMAGE_REL_IA64_DIR32NB = 0x0010 }
enum : uint { IMAGE_REL_IA64_SREL14 = 0x0011 }
enum : uint { IMAGE_REL_IA64_SREL22 = 0x0012 }
enum : uint { IMAGE_REL_IA64_SREL32 = 0x0013 }
enum : uint { IMAGE_REL_IA64_UREL32 = 0x0014 }
enum : uint { IMAGE_REL_IA64_PCREL60X = 0x0015 }
enum : uint { IMAGE_REL_IA64_PCREL60B = 0x0016 }
enum : uint { IMAGE_REL_IA64_PCREL60F = 0x0017 }
enum : uint { IMAGE_REL_IA64_PCREL60I = 0x0018 }
enum : uint { IMAGE_REL_IA64_PCREL60M = 0x0019 }
enum : uint { IMAGE_REL_IA64_IMMGPREL64 = 0x001A }
enum : uint { IMAGE_REL_IA64_TOKEN = 0x001B }
enum : uint { IMAGE_REL_IA64_GPREL32 = 0x001C }
enum : uint { IMAGE_REL_IA64_ADDEND = 0x001F }

enum : uint { IMAGE_REL_CEF_ABSOLUTE = 0x0000 }
enum : uint { IMAGE_REL_CEF_ADDR32 = 0x0001 }
enum : uint { IMAGE_REL_CEF_ADDR64 = 0x0002 }
enum : uint { IMAGE_REL_CEF_ADDR32NB = 0x0003 }
enum : uint { IMAGE_REL_CEF_SECTION = 0x0004 }
enum : uint { IMAGE_REL_CEF_SECREL = 0x0005 }
enum : uint { IMAGE_REL_CEF_TOKEN = 0x0006 }

enum : uint { IMAGE_REL_CEE_ABSOLUTE = 0x0000 }
enum : uint { IMAGE_REL_CEE_ADDR32 = 0x0001 }
enum : uint { IMAGE_REL_CEE_ADDR64 = 0x0002 }
enum : uint { IMAGE_REL_CEE_ADDR32NB = 0x0003 }
enum : uint { IMAGE_REL_CEE_SECTION = 0x0004 }
enum : uint { IMAGE_REL_CEE_SECREL = 0x0005 }
enum : uint { IMAGE_REL_CEE_TOKEN = 0x0006 }

enum : uint { IMAGE_REL_M32R_ABSOLUTE = 0x0000 }
enum : uint { IMAGE_REL_M32R_ADDR32 = 0x0001 }
enum : uint { IMAGE_REL_M32R_ADDR32NB = 0x0002 }
enum : uint { IMAGE_REL_M32R_ADDR24 = 0x0003 }
enum : uint { IMAGE_REL_M32R_GPREL16 = 0x0004 }
enum : uint { IMAGE_REL_M32R_PCREL24 = 0x0005 }
enum : uint { IMAGE_REL_M32R_PCREL16 = 0x0006 }
enum : uint { IMAGE_REL_M32R_PCREL8 = 0x0007 }
enum : uint { IMAGE_REL_M32R_REFHALF = 0x0008 }
enum : uint { IMAGE_REL_M32R_REFHI = 0x0009 }
enum : uint { IMAGE_REL_M32R_REFLO = 0x000A }
enum : uint { IMAGE_REL_M32R_PAIR = 0x000B }
enum : uint { IMAGE_REL_M32R_SECTION = 0x000C }
enum : uint { IMAGE_REL_M32R_SECREL32 = 0x000D }
enum : uint { IMAGE_REL_M32R_TOKEN = 0x000E }

// #define EXT_IMM64(Value, Address, Size, InstPos, ValPos) Value |= (((ULONGLONG)((*(Address) >> InstPos) & (((ULONGLONG)1 << Size) - 1))) << ValPos)

// #define INS_IMM64(Value, Address, Size, InstPos, ValPos) *(PDWORD)Address = (*(PDWORD)Address & ~(((1 << Size) - 1) << InstPos)) | ((DWORD)((((ULONGLONG)Value >> ValPos) & (((ULONGLONG)1 << Size) - 1))) << InstPos)

enum : uint { EMARCH_ENC_I17_IMM7B_INST_WORD_X = 3 }
enum : uint { EMARCH_ENC_I17_IMM7B_SIZE_X = 7 }
enum : uint { EMARCH_ENC_I17_IMM7B_INST_WORD_POS_X = 4 }
enum : uint { EMARCH_ENC_I17_IMM7B_VAL_POS_X = 0 }

enum : uint { EMARCH_ENC_I17_IMM9D_INST_WORD_X = 3 }
enum : uint { EMARCH_ENC_I17_IMM9D_SIZE_X = 9 }
enum : uint { EMARCH_ENC_I17_IMM9D_INST_WORD_POS_X = 18 }
enum : uint { EMARCH_ENC_I17_IMM9D_VAL_POS_X = 7 }

enum : uint { EMARCH_ENC_I17_IMM5C_INST_WORD_X = 3 }
enum : uint { EMARCH_ENC_I17_IMM5C_SIZE_X = 5 }
enum : uint { EMARCH_ENC_I17_IMM5C_INST_WORD_POS_X = 13 }
enum : uint { EMARCH_ENC_I17_IMM5C_VAL_POS_X = 16 }

enum : uint { EMARCH_ENC_I17_IC_INST_WORD_X = 3 }
enum : uint { EMARCH_ENC_I17_IC_SIZE_X = 1 }
enum : uint { EMARCH_ENC_I17_IC_INST_WORD_POS_X = 12 }
enum : uint { EMARCH_ENC_I17_IC_VAL_POS_X = 21 }

enum : uint { EMARCH_ENC_I17_IMM41a_INST_WORD_X = 1 }
enum : uint { EMARCH_ENC_I17_IMM41a_SIZE_X = 10 }
enum : uint { EMARCH_ENC_I17_IMM41a_INST_WORD_POS_X = 14 }
enum : uint { EMARCH_ENC_I17_IMM41a_VAL_POS_X = 22 }

enum : uint { EMARCH_ENC_I17_IMM41b_INST_WORD_X = 1 }
enum : uint { EMARCH_ENC_I17_IMM41b_SIZE_X = 8 }
enum : uint { EMARCH_ENC_I17_IMM41b_INST_WORD_POS_X = 24 }
enum : uint { EMARCH_ENC_I17_IMM41b_VAL_POS_X = 32 }

enum : uint { EMARCH_ENC_I17_IMM41c_INST_WORD_X = 2 }
enum : uint { EMARCH_ENC_I17_IMM41c_SIZE_X = 23 }
enum : uint { EMARCH_ENC_I17_IMM41c_INST_WORD_POS_X = 0 }
enum : uint { EMARCH_ENC_I17_IMM41c_VAL_POS_X = 40 }

enum : uint { EMARCH_ENC_I17_SIGN_INST_WORD_X = 3 }
enum : uint { EMARCH_ENC_I17_SIGN_SIZE_X = 1 }
enum : uint { EMARCH_ENC_I17_SIGN_INST_WORD_POS_X = 27 }
enum : uint { EMARCH_ENC_I17_SIGN_VAL_POS_X = 63 }

struct _IMAGE_LINENUMBER {
union {
  DWORD SymbolTableIndex;
  DWORD VirtualAddress;
}

  WORD Linenumber;
}
alias _IMAGE_LINENUMBER IMAGE_LINENUMBER;

alias IMAGE_LINENUMBER* PIMAGE_LINENUMBER;

enum : uint { IMAGE_SIZEOF_LINENUMBER = 6 }

// #ifndef _MAC
align:
// #endif

struct _IMAGE_BASE_RELOCATION {
  DWORD VirtualAddress;
  DWORD SizeOfBlock;
}
alias _IMAGE_BASE_RELOCATION IMAGE_BASE_RELOCATION;

alias IMAGE_BASE_RELOCATION* PIMAGE_BASE_RELOCATION;

enum : uint { IMAGE_SIZEOF_BASE_RELOCATION = 8 }

enum : uint { IMAGE_REL_BASED_ABSOLUTE = 0 }
enum : uint { IMAGE_REL_BASED_HIGH = 1 }
enum : uint { IMAGE_REL_BASED_LOW = 2 }
enum : uint { IMAGE_REL_BASED_HIGHLOW = 3 }
enum : uint { IMAGE_REL_BASED_HIGHADJ = 4 }
enum : uint { IMAGE_REL_BASED_MIPS_JMPADDR = 5 }
enum : uint { IMAGE_REL_BASED_MIPS_JMPADDR16 = 9 }
enum : uint { IMAGE_REL_BASED_IA64_IMM64 = 9 }
enum : uint { IMAGE_REL_BASED_DIR64 = 10 }

enum : uint { IMAGE_ARCHIVE_START_SIZE = 8 }
const char[] IMAGE_ARCHIVE_START = "!<arch>\n";
const char[] IMAGE_ARCHIVE_END = "`\n";
const char[] IMAGE_ARCHIVE_PAD = "\n";
const char[] IMAGE_ARCHIVE_LINKER_MEMBER = "/ ";
const char[] IMAGE_ARCHIVE_LONGNAMES_MEMBER = "// ";

struct _IMAGE_ARCHIVE_MEMBER_HEADER {
  BYTE Name[16];
  BYTE Date[12];
  BYTE UserID[6];
  BYTE GroupID[6];
  BYTE Mode[8];
  BYTE Size[10];
  BYTE EndHeader[2];
}
alias _IMAGE_ARCHIVE_MEMBER_HEADER IMAGE_ARCHIVE_MEMBER_HEADER;
alias _IMAGE_ARCHIVE_MEMBER_HEADER* PIMAGE_ARCHIVE_MEMBER_HEADER;

enum : uint { IMAGE_SIZEOF_ARCHIVE_MEMBER_HDR = 60 }

struct _IMAGE_EXPORT_DIRECTORY {
  DWORD Characteristics;
  DWORD TimeDateStamp;
  WORD MajorVersion;
  WORD MinorVersion;
  DWORD Name;
  DWORD Base;
  DWORD NumberOfFunctions;
  DWORD NumberOfNames;
  DWORD AddressOfFunctions;
  DWORD AddressOfNames;
  DWORD AddressOfNameOrdinals;
}
alias _IMAGE_EXPORT_DIRECTORY IMAGE_EXPORT_DIRECTORY;
alias _IMAGE_EXPORT_DIRECTORY* PIMAGE_EXPORT_DIRECTORY;

struct _IMAGE_IMPORT_BY_NAME {
  WORD Hint;
  BYTE Name[1];
}
alias _IMAGE_IMPORT_BY_NAME IMAGE_IMPORT_BY_NAME;
alias _IMAGE_IMPORT_BY_NAME* PIMAGE_IMPORT_BY_NAME;

align(8):

struct _IMAGE_THUNK_DATA64 {
union {
  ULONGLONG ForwarderString;
  ULONGLONG Function;
  ULONGLONG Ordinal;
  ULONGLONG AddressOfData;
}

}
alias _IMAGE_THUNK_DATA64 IMAGE_THUNK_DATA64;

alias IMAGE_THUNK_DATA64* PIMAGE_THUNK_DATA64;

align:

struct _IMAGE_THUNK_DATA32 {
union {
  DWORD ForwarderString;
  DWORD Function;
  DWORD Ordinal;
  DWORD AddressOfData;
}

}
alias _IMAGE_THUNK_DATA32 IMAGE_THUNK_DATA32;

alias IMAGE_THUNK_DATA32* PIMAGE_THUNK_DATA32;

const ulong IMAGE_ORDINAL_FLAG64 = 0x8000000000000000;
enum : uint { IMAGE_ORDINAL_FLAG32 = 0x80000000 }
ulong IMAGE_ORDINAL64(ulong Ordinal){ return Ordinal & 0xffff; }
uint IMAGE_ORDINAL32(uint Ordinal){ return Ordinal & 0xffff; }
bit IMAGE_SNAP_BY_ORDINAL64(ulong Ordinal){ return (Ordinal & IMAGE_ORDINAL_FLAG64) != 0; }
bit IMAGE_SNAP_BY_ORDINAL32(uint Ordinal){ return (Ordinal & IMAGE_ORDINAL_FLAG32) != 0; }

extern(Windows) alias VOID function( PVOID DllHandle, DWORD Reason, PVOID Reserved ) PIMAGE_TLS_CALLBACK;

struct _IMAGE_TLS_DIRECTORY64 {
  ULONGLONG StartAddressOfRawData;
  ULONGLONG EndAddressOfRawData;
  ULONGLONG AddressOfIndex;
  ULONGLONG AddressOfCallBacks;
  DWORD SizeOfZeroFill;
  DWORD Characteristics;
}
alias _IMAGE_TLS_DIRECTORY64 IMAGE_TLS_DIRECTORY64;

alias IMAGE_TLS_DIRECTORY64* PIMAGE_TLS_DIRECTORY64;

struct _IMAGE_TLS_DIRECTORY32 {
  DWORD StartAddressOfRawData;
  DWORD EndAddressOfRawData;
  DWORD AddressOfIndex;
  DWORD AddressOfCallBacks;
  DWORD SizeOfZeroFill;
  DWORD Characteristics;
}
alias _IMAGE_TLS_DIRECTORY32 IMAGE_TLS_DIRECTORY32;

alias IMAGE_TLS_DIRECTORY32* PIMAGE_TLS_DIRECTORY32;

// #ifdef _WIN64
// #...
// #...
// ...
// #...
// ...
// #else
alias IMAGE_ORDINAL_FLAG32 IMAGE_ORDINAL_FLAG;
alias IMAGE_ORDINAL32 IMAGE_ORDINAL;
alias IMAGE_THUNK_DATA32 IMAGE_THUNK_DATA;
alias PIMAGE_THUNK_DATA32 PIMAGE_THUNK_DATA;
alias IMAGE_SNAP_BY_ORDINAL32 IMAGE_SNAP_BY_ORDINAL;
alias IMAGE_TLS_DIRECTORY32 IMAGE_TLS_DIRECTORY;
alias PIMAGE_TLS_DIRECTORY32 PIMAGE_TLS_DIRECTORY;
// #endif

struct _IMAGE_IMPORT_DESCRIPTOR {
union {
  DWORD Characteristics;
  DWORD OriginalFirstThunk;
}

  DWORD TimeDateStamp;

  DWORD ForwarderChain;
  DWORD Name;
  DWORD FirstThunk;
}
alias _IMAGE_IMPORT_DESCRIPTOR IMAGE_IMPORT_DESCRIPTOR;

alias IMAGE_IMPORT_DESCRIPTOR* PIMAGE_IMPORT_DESCRIPTOR;

struct _IMAGE_BOUND_IMPORT_DESCRIPTOR {
  DWORD TimeDateStamp;
  WORD OffsetModuleName;
  WORD NumberOfModuleForwarderRefs;
}
alias _IMAGE_BOUND_IMPORT_DESCRIPTOR IMAGE_BOUND_IMPORT_DESCRIPTOR;
alias _IMAGE_BOUND_IMPORT_DESCRIPTOR* PIMAGE_BOUND_IMPORT_DESCRIPTOR;

struct _IMAGE_BOUND_FORWARDER_REF {
  DWORD TimeDateStamp;
  WORD OffsetModuleName;
  WORD Reserved;
}
alias _IMAGE_BOUND_FORWARDER_REF IMAGE_BOUND_FORWARDER_REF;
alias _IMAGE_BOUND_FORWARDER_REF* PIMAGE_BOUND_FORWARDER_REF;

struct _IMAGE_RESOURCE_DIRECTORY {
  DWORD Characteristics;
  DWORD TimeDateStamp;
  WORD MajorVersion;
  WORD MinorVersion;
  WORD NumberOfNamedEntries;
  WORD NumberOfIdEntries;
}
alias _IMAGE_RESOURCE_DIRECTORY IMAGE_RESOURCE_DIRECTORY;
alias _IMAGE_RESOURCE_DIRECTORY* PIMAGE_RESOURCE_DIRECTORY;

enum : uint { IMAGE_RESOURCE_NAME_IS_STRING = 0x80000000 }
enum : uint { IMAGE_RESOURCE_DATA_IS_DIRECTORY = 0x80000000 }

struct _IMAGE_RESOURCE_DIRECTORY_ENTRY {
union {
struct {
// DWORD NameOffset:31;
// DWORD NameIsString:1;
}

  DWORD Name;
  WORD Id;
}

union {
  DWORD OffsetToData;
struct {
// DWORD   OffsetToDirectory:31;
// DWORD   DataIsDirectory:1;
}

}

}
alias _IMAGE_RESOURCE_DIRECTORY_ENTRY IMAGE_RESOURCE_DIRECTORY_ENTRY;
alias _IMAGE_RESOURCE_DIRECTORY_ENTRY* PIMAGE_RESOURCE_DIRECTORY_ENTRY;

struct _IMAGE_RESOURCE_DIRECTORY_STRING {
  WORD Length;
  CHAR NameString[ 1 ];
}
alias _IMAGE_RESOURCE_DIRECTORY_STRING IMAGE_RESOURCE_DIRECTORY_STRING;
alias _IMAGE_RESOURCE_DIRECTORY_STRING* PIMAGE_RESOURCE_DIRECTORY_STRING;

struct _IMAGE_RESOURCE_DIR_STRING_U {
  WORD Length;
  WCHAR NameString[ 1 ];
}
alias _IMAGE_RESOURCE_DIR_STRING_U IMAGE_RESOURCE_DIR_STRING_U;
alias _IMAGE_RESOURCE_DIR_STRING_U* PIMAGE_RESOURCE_DIR_STRING_U;

struct _IMAGE_RESOURCE_DATA_ENTRY {
  DWORD OffsetToData;
  DWORD Size;
  DWORD CodePage;
  DWORD Reserved;
}
alias _IMAGE_RESOURCE_DATA_ENTRY IMAGE_RESOURCE_DATA_ENTRY;
alias _IMAGE_RESOURCE_DATA_ENTRY* PIMAGE_RESOURCE_DATA_ENTRY;

struct _12 {
  DWORD Characteristics;
  DWORD TimeDateStamp;
  WORD MajorVersion;
  WORD MinorVersion;
  DWORD GlobalFlagsClear;
  DWORD GlobalFlagsSet;
  DWORD CriticalSectionDefaultTimeout;
  DWORD DeCommitFreeBlockThreshold;
  DWORD DeCommitTotalFreeThreshold;
  DWORD LockPrefixTable;
  DWORD MaximumAllocationSize;
  DWORD VirtualMemoryThreshold;
  DWORD ProcessHeapFlags;
  DWORD ProcessAffinityMask;
  WORD CSDVersion;
  WORD Reserved1;
  DWORD EditList;
  DWORD Reserved[ 1 ];
}
alias _12 IMAGE_LOAD_CONFIG_DIRECTORY32;
alias _12* PIMAGE_LOAD_CONFIG_DIRECTORY32;

struct _13 {
  DWORD Characteristics;
  DWORD TimeDateStamp;
  WORD MajorVersion;
  WORD MinorVersion;
  DWORD GlobalFlagsClear;
  DWORD GlobalFlagsSet;
  DWORD CriticalSectionDefaultTimeout;
  ULONGLONG DeCommitFreeBlockThreshold;
  ULONGLONG DeCommitTotalFreeThreshold;
  ULONGLONG LockPrefixTable;
  ULONGLONG MaximumAllocationSize;
  ULONGLONG VirtualMemoryThreshold;
  ULONGLONG ProcessAffinityMask;
  DWORD ProcessHeapFlags;
  WORD CSDVersion;
  WORD Reserved1;
  ULONGLONG EditList;
  DWORD Reserved[ 2 ];
}
alias _13 IMAGE_LOAD_CONFIG_DIRECTORY64;
alias _13* PIMAGE_LOAD_CONFIG_DIRECTORY64;

// #ifdef _WIN64
// ...
// #else
alias IMAGE_LOAD_CONFIG_DIRECTORY32 IMAGE_LOAD_CONFIG_DIRECTORY;
alias PIMAGE_LOAD_CONFIG_DIRECTORY32 PIMAGE_LOAD_CONFIG_DIRECTORY;
// #endif

struct _IMAGE_CE_RUNTIME_FUNCTION_ENTRY {
  DWORD FuncStart;
// DWORD PrologLen : 8;
// DWORD FuncLen : 22;
// DWORD ThirtyTwoBit : 1;
// DWORD ExceptionFlag : 1;
}
alias _IMAGE_CE_RUNTIME_FUNCTION_ENTRY IMAGE_CE_RUNTIME_FUNCTION_ENTRY;
alias _IMAGE_CE_RUNTIME_FUNCTION_ENTRY* PIMAGE_CE_RUNTIME_FUNCTION_ENTRY;

struct _IMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY {
  ULONGLONG BeginAddress;
  ULONGLONG EndAddress;
  ULONGLONG ExceptionHandler;
  ULONGLONG HandlerData;
  ULONGLONG PrologEndAddress;
}
alias _IMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY IMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY;
alias _IMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY* PIMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY;

struct _IMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY {
  DWORD BeginAddress;
  DWORD EndAddress;
  DWORD ExceptionHandler;
  DWORD HandlerData;
  DWORD PrologEndAddress;
}
alias _IMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY IMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY;
alias _IMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY* PIMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY;

struct _IMAGE_RUNTIME_FUNCTION_ENTRY {
  DWORD BeginAddress;
  DWORD EndAddress;
  DWORD UnwindInfoAddress;
}
alias _IMAGE_RUNTIME_FUNCTION_ENTRY* _PIMAGE_RUNTIME_FUNCTION_ENTRY;

alias _IMAGE_RUNTIME_FUNCTION_ENTRY IMAGE_IA64_RUNTIME_FUNCTION_ENTRY;
alias _PIMAGE_RUNTIME_FUNCTION_ENTRY PIMAGE_IA64_RUNTIME_FUNCTION_ENTRY;

// #if defined(_AXP64_)

// ...

// #elif defined(_ALPHA_)

// ...

// #else

alias _IMAGE_RUNTIME_FUNCTION_ENTRY IMAGE_RUNTIME_FUNCTION_ENTRY;
alias _PIMAGE_RUNTIME_FUNCTION_ENTRY PIMAGE_RUNTIME_FUNCTION_ENTRY;

// #endif

struct _IMAGE_DEBUG_DIRECTORY {
  DWORD Characteristics;
  DWORD TimeDateStamp;
  WORD MajorVersion;
  WORD MinorVersion;
  DWORD Type;
  DWORD SizeOfData;
  DWORD AddressOfRawData;
  DWORD PointerToRawData;
}
alias _IMAGE_DEBUG_DIRECTORY IMAGE_DEBUG_DIRECTORY;
alias _IMAGE_DEBUG_DIRECTORY* PIMAGE_DEBUG_DIRECTORY;

enum : uint { IMAGE_DEBUG_TYPE_UNKNOWN = 0 }
enum : uint { IMAGE_DEBUG_TYPE_COFF = 1 }
enum : uint { IMAGE_DEBUG_TYPE_CODEVIEW = 2 }
enum : uint { IMAGE_DEBUG_TYPE_FPO = 3 }
enum : uint { IMAGE_DEBUG_TYPE_MISC = 4 }
enum : uint { IMAGE_DEBUG_TYPE_EXCEPTION = 5 }
enum : uint { IMAGE_DEBUG_TYPE_FIXUP = 6 }
enum : uint { IMAGE_DEBUG_TYPE_OMAP_TO_SRC = 7 }
enum : uint { IMAGE_DEBUG_TYPE_OMAP_FROM_SRC = 8 }
enum : uint { IMAGE_DEBUG_TYPE_BORLAND = 9 }
enum : uint { IMAGE_DEBUG_TYPE_RESERVED10 = 10 }
enum : uint { IMAGE_DEBUG_TYPE_CLSID = 11 }

struct _IMAGE_COFF_SYMBOLS_HEADER {
  DWORD NumberOfSymbols;
  DWORD LvaToFirstSymbol;
  DWORD NumberOfLinenumbers;
  DWORD LvaToFirstLinenumber;
  DWORD RvaToFirstByteOfCode;
  DWORD RvaToLastByteOfCode;
  DWORD RvaToFirstByteOfData;
  DWORD RvaToLastByteOfData;
}
alias _IMAGE_COFF_SYMBOLS_HEADER IMAGE_COFF_SYMBOLS_HEADER;
alias _IMAGE_COFF_SYMBOLS_HEADER* PIMAGE_COFF_SYMBOLS_HEADER;

enum : uint { FRAME_FPO = 0 }
enum : uint { FRAME_TRAP = 1 }
enum : uint { FRAME_TSS = 2 }
enum : uint { FRAME_NONFPO = 3 }

struct _FPO_DATA {
  DWORD ulOffStart;
  DWORD cbProcSize;
  DWORD cdwLocals;
  WORD cdwParams;
// WORD        cbProlog : 8;
// WORD        cbRegs   : 3;
// WORD        fHasSEH  : 1;
// WORD        fUseBP   : 1;
// WORD        reserved : 1;
// WORD        cbFrame  : 2;
}
alias _FPO_DATA FPO_DATA;
alias _FPO_DATA* PFPO_DATA;

enum : uint { SIZEOF_RFPO_DATA = 16 }

enum : uint { IMAGE_DEBUG_MISC_EXENAME = 1 }

struct _IMAGE_DEBUG_MISC {
  DWORD DataType;
  DWORD Length;

  BOOLEAN Unicode;
  BYTE Reserved[ 3 ];
  BYTE Data[ 1 ];
}
alias _IMAGE_DEBUG_MISC IMAGE_DEBUG_MISC;
alias _IMAGE_DEBUG_MISC* PIMAGE_DEBUG_MISC;

struct _IMAGE_FUNCTION_ENTRY {
  DWORD StartingAddress;
  DWORD EndingAddress;
  DWORD EndOfPrologue;
}
alias _IMAGE_FUNCTION_ENTRY IMAGE_FUNCTION_ENTRY;
alias _IMAGE_FUNCTION_ENTRY* PIMAGE_FUNCTION_ENTRY;

struct _IMAGE_FUNCTION_ENTRY64 {
  ULONGLONG StartingAddress;
  ULONGLONG EndingAddress;
union {
  ULONGLONG EndOfPrologue;
  ULONGLONG UnwindInfoAddress;
}

}
alias _IMAGE_FUNCTION_ENTRY64 IMAGE_FUNCTION_ENTRY64;
alias _IMAGE_FUNCTION_ENTRY64* PIMAGE_FUNCTION_ENTRY64;

struct _IMAGE_SEPARATE_DEBUG_HEADER {
  WORD Signature;
  WORD Flags;
  WORD Machine;
  WORD Characteristics;
  DWORD TimeDateStamp;
  DWORD CheckSum;
  DWORD ImageBase;
  DWORD SizeOfImage;
  DWORD NumberOfSections;
  DWORD ExportedNamesSize;
  DWORD DebugDirectorySize;
  DWORD SectionAlignment;
  DWORD Reserved[2];
}
alias _IMAGE_SEPARATE_DEBUG_HEADER IMAGE_SEPARATE_DEBUG_HEADER;
alias _IMAGE_SEPARATE_DEBUG_HEADER* PIMAGE_SEPARATE_DEBUG_HEADER;

struct _NON_PAGED_DEBUG_INFO {
  WORD Signature;
  WORD Flags;
  DWORD Size;
  WORD Machine;
  WORD Characteristics;
  DWORD TimeDateStamp;
  DWORD CheckSum;
  DWORD SizeOfImage;
  ULONGLONG ImageBase;

}
alias _NON_PAGED_DEBUG_INFO NON_PAGED_DEBUG_INFO;
alias _NON_PAGED_DEBUG_INFO* PNON_PAGED_DEBUG_INFO;

// #ifndef _MAC
enum : uint { IMAGE_SEPARATE_DEBUG_SIGNATURE = 0x4944 }
enum : uint { NON_PAGED_DEBUG_SIGNATURE = 0x494E }
// #else
// #...
// #...
// #endif

enum : uint { IMAGE_SEPARATE_DEBUG_FLAGS_MASK = 0x8000 }
enum : uint { IMAGE_SEPARATE_DEBUG_MISMATCH = 0x8000 }

struct _ImageArchitectureHeader {
// unsigned int AmaskValue: 1;

// int :7;
// unsigned int AmaskShift: 8;
// int :16;
  DWORD FirstEntryRVA;
}
alias _ImageArchitectureHeader IMAGE_ARCHITECTURE_HEADER;
alias _ImageArchitectureHeader* PIMAGE_ARCHITECTURE_HEADER;

struct _ImageArchitectureEntry {
  DWORD FixupInstRVA;
  DWORD NewInst;
}
alias _ImageArchitectureEntry IMAGE_ARCHITECTURE_ENTRY;
alias _ImageArchitectureEntry* PIMAGE_ARCHITECTURE_ENTRY;

align:

enum : uint { IMPORT_OBJECT_HDR_SIG2 = 0xffff }

struct IMPORT_OBJECT_HEADER {
  WORD Sig1;
  WORD Sig2;
  WORD Version;
  WORD Machine;
  DWORD TimeDateStamp;
  DWORD SizeOfData;

union {
  WORD Ordinal;
  WORD Hint;
}

// WORD    Type : 2;
// WORD    NameType : 3;
// WORD    Reserved : 11;
}

alias int IMPORT_OBJECT_TYPE;
enum {
  IMPORT_OBJECT_CODE = 0,
  IMPORT_OBJECT_DATA = 1,
  IMPORT_OBJECT_CONST = 2,
}

alias int IMPORT_OBJECT_NAME_TYPE;
enum {
  IMPORT_OBJECT_ORDINAL = 0,
  IMPORT_OBJECT_NAME = 1,
  IMPORT_OBJECT_NAME_NO_PREFIX = 2,
  IMPORT_OBJECT_NAME_UNDECORATE = 3,

}

// #ifndef __IMAGE_COR20_HEADER_DEFINED__
// #define __IMAGE_COR20_HEADER_DEFINED__

alias int ReplacesCorHdrNumericDefines;
enum {

  COMIMAGE_FLAGS_ILONLY = 0x00000001,
  COMIMAGE_FLAGS_32BITREQUIRED = 0x00000002,
  COMIMAGE_FLAGS_IL_LIBRARY = 0x00000004,
  COMIMAGE_FLAGS_TRACKDEBUGDATA = 0x00010000,

  COR_VERSION_MAJOR_V2 = 2,
  COR_VERSION_MAJOR = COR_VERSION_MAJOR_V2,
  COR_VERSION_MINOR = 0,
  COR_DELETED_NAME_LENGTH = 8,
  COR_VTABLEGAP_NAME_LENGTH = 8,

  NATIVE_TYPE_MAX_CB = 1,
  COR_ILMETHOD_SECT_SMALL_MAX_DATASIZE = 0xFF,

  IMAGE_COR_MIH_METHODRVA = 0x01,
  IMAGE_COR_MIH_EHRVA = 0x02,
  IMAGE_COR_MIH_BASICBLOCK = 0x08,

  COR_VTABLE_32BIT = 0x01,
  COR_VTABLE_64BIT = 0x02,
  COR_VTABLE_FROM_UNMANAGED = 0x04,
  COR_VTABLE_CALL_MOST_DERIVED = 0x10,

  IMAGE_COR_EATJ_THUNK_SIZE = 32,

  MAX_CLASS_NAME = 1024,
  MAX_PACKAGE_NAME = 1024,
}

struct IMAGE_COR20_HEADER {

  DWORD cb;
  WORD MajorRuntimeVersion;
  WORD MinorRuntimeVersion;
  IMAGE_DATA_DIRECTORY MetaData;
  DWORD Flags;
  DWORD EntryPointToken;
  IMAGE_DATA_DIRECTORY Resources;
  IMAGE_DATA_DIRECTORY StrongNameSignature;
  IMAGE_DATA_DIRECTORY CodeManagerTable;
  IMAGE_DATA_DIRECTORY VTableFixups;
  IMAGE_DATA_DIRECTORY ExportAddressTableJumps;
  IMAGE_DATA_DIRECTORY ManagedNativeHeader;
}
alias IMAGE_COR20_HEADER* PIMAGE_COR20_HEADER;

// #endif // __IMAGE_COR20_HEADER_DEFINED__

// #ifdef _MAC
// #ifndef _INC_STRING
// #...
// #endif /* _INC_STRING */
// #else
// #include <string.h>
// #endif // _MAC

// #ifndef _SLIST_HEADER_
// #define _SLIST_HEADER_

alias SINGLE_LIST_ENTRY SLIST_ENTRY;
alias _SINGLE_LIST_ENTRY _SLIST_ENTRY;
alias PSINGLE_LIST_ENTRY PSLIST_ENTRY;

// #if defined(_WIN64)

// ...

// ...

// #else

union _SLIST_HEADER {
  ULONGLONG Alignment;
struct {
  SLIST_ENTRY Next;
  WORD Depth;
  WORD Sequence;
}

}
alias _SLIST_HEADER SLIST_HEADER;
alias _SLIST_HEADER* PSLIST_HEADER;

// #endif

// #endif

extern(Windows) export VOID RtlInitializeSListHead(
  PSLIST_HEADER ListHead);

extern(Windows) export PSLIST_ENTRY RtlFirstEntrySList(
  SLIST_HEADER *ListHead);

extern(Windows) export PSLIST_ENTRY RtlInterlockedPopEntrySList(
  PSLIST_HEADER ListHead);

extern(Windows) export PSLIST_ENTRY RtlInterlockedPushEntrySList(
  PSLIST_HEADER ListHead,
  PSLIST_ENTRY ListEntry);

extern(Windows) export PSLIST_ENTRY RtlInterlockedFlushSList(
  PSLIST_HEADER ListHead);

extern(Windows) export WORD RtlQueryDepthSList(
  PSLIST_HEADER ListHead);

enum : uint { HEAP_NO_SERIALIZE = 0x00000001 }
enum : uint { HEAP_GROWABLE = 0x00000002 }
enum : uint { HEAP_GENERATE_EXCEPTIONS = 0x00000004 }
enum : uint { HEAP_ZERO_MEMORY = 0x00000008 }
enum : uint { HEAP_REALLOC_IN_PLACE_ONLY = 0x00000010 }
enum : uint { HEAP_TAIL_CHECKING_ENABLED = 0x00000020 }
enum : uint { HEAP_FREE_CHECKING_ENABLED = 0x00000040 }
enum : uint { HEAP_DISABLE_COALESCE_ON_FREE = 0x00000080 }
enum : uint { HEAP_CREATE_ALIGN_16 = 0x00010000 }
enum : uint { HEAP_CREATE_ENABLE_TRACING = 0x00020000 }
enum : uint { HEAP_MAXIMUM_TAG = 0x0FFF }
enum : uint { HEAP_PSEUDO_TAG_FLAG = 0x8000 }
enum : uint { HEAP_TAG_SHIFT = 18 }
uint HEAP_MAKE_TAG_FLAGS(uint b, uint o){ return b + (o << 18); }

enum : uint { IS_TEXT_UNICODE_ASCII16 = 0x0001 }
enum : uint { IS_TEXT_UNICODE_REVERSE_ASCII16 = 0x0010 }

enum : uint { IS_TEXT_UNICODE_STATISTICS = 0x0002 }
enum : uint { IS_TEXT_UNICODE_REVERSE_STATISTICS = 0x0020 }

enum : uint { IS_TEXT_UNICODE_CONTROLS = 0x0004 }
enum : uint { IS_TEXT_UNICODE_REVERSE_CONTROLS = 0x0040 }

enum : uint { IS_TEXT_UNICODE_SIGNATURE = 0x0008 }
enum : uint { IS_TEXT_UNICODE_REVERSE_SIGNATURE = 0x0080 }

enum : uint { IS_TEXT_UNICODE_ILLEGAL_CHARS = 0x0100 }
enum : uint { IS_TEXT_UNICODE_ODD_LENGTH = 0x0200 }
enum : uint { IS_TEXT_UNICODE_DBCS_LEADBYTE = 0x0400 }
enum : uint { IS_TEXT_UNICODE_NULL_BYTES = 0x1000 }

enum : uint { IS_TEXT_UNICODE_UNICODE_MASK = 0x000F }
enum : uint { IS_TEXT_UNICODE_REVERSE_MASK = 0x00F0 }
enum : uint { IS_TEXT_UNICODE_NOT_UNICODE_MASK = 0x0F00 }
enum : uint { IS_TEXT_UNICODE_NOT_ASCII_MASK = 0xF000 }

enum : uint { COMPRESSION_FORMAT_NONE = 0x0000 }
enum : uint { COMPRESSION_FORMAT_DEFAULT = 0x0001 }
enum : uint { COMPRESSION_FORMAT_LZNT1 = 0x0002 }
enum : uint { COMPRESSION_ENGINE_STANDARD = 0x0000 }
enum : uint { COMPRESSION_ENGINE_MAXIMUM = 0x0100 }
enum : uint { COMPRESSION_ENGINE_HIBER = 0x0200 }

extern(Windows) export SIZE_T RtlCompareMemory(
  VOID *Source1,
  VOID *Source2,
  SIZE_T Length);

// #if defined(_M_AMD64) || defined(_M_IA64)

// #...
// ...

// ...

// #if !defined(_M_AMD64)

// ...

// #endif

// ...

// ...

// ...

// #else

bit RtlEqualMemory(void* x, void* y, uint len){ return memcmp(x, y, len) == 0; }
void RtlMoveMemory(void* d, void* s, uint len){ memmove(d, s, len); }
void RtlCopyMemory(void* d, void* s, uint len){ memcpy(d, s, len); }
void RtlFillMemory(void* d, uint len, ubyte f){ memset(d, f, len); }
void RtlZeroMemory(void* d, uint len){ memset(d, 0, len); }

// #endif

struct _MESSAGE_RESOURCE_ENTRY {
  WORD Length;
  WORD Flags;
  BYTE Text[ 1 ];
}
alias _MESSAGE_RESOURCE_ENTRY MESSAGE_RESOURCE_ENTRY;
alias _MESSAGE_RESOURCE_ENTRY* PMESSAGE_RESOURCE_ENTRY;

enum : uint { MESSAGE_RESOURCE_UNICODE = 0x0001 }

struct _MESSAGE_RESOURCE_BLOCK {
  DWORD LowId;
  DWORD HighId;
  DWORD OffsetToEntries;
}
alias _MESSAGE_RESOURCE_BLOCK MESSAGE_RESOURCE_BLOCK;
alias _MESSAGE_RESOURCE_BLOCK* PMESSAGE_RESOURCE_BLOCK;

struct _MESSAGE_RESOURCE_DATA {
  DWORD NumberOfBlocks;
  MESSAGE_RESOURCE_BLOCK Blocks[ 1 ];
}
alias _MESSAGE_RESOURCE_DATA MESSAGE_RESOURCE_DATA;
alias _MESSAGE_RESOURCE_DATA* PMESSAGE_RESOURCE_DATA;

struct _OSVERSIONINFOA {
  DWORD dwOSVersionInfoSize;
  DWORD dwMajorVersion;
  DWORD dwMinorVersion;
  DWORD dwBuildNumber;
  DWORD dwPlatformId;
  CHAR szCSDVersion[ 128 ];
}
alias _OSVERSIONINFOA OSVERSIONINFOA;
alias _OSVERSIONINFOA* POSVERSIONINFOA;
alias _OSVERSIONINFOA* LPOSVERSIONINFOA;

struct _OSVERSIONINFOW {
  DWORD dwOSVersionInfoSize;
  DWORD dwMajorVersion;
  DWORD dwMinorVersion;
  DWORD dwBuildNumber;
  DWORD dwPlatformId;
  WCHAR szCSDVersion[ 128 ];
}
alias _OSVERSIONINFOW OSVERSIONINFOW;
alias _OSVERSIONINFOW* POSVERSIONINFOW;
alias _OSVERSIONINFOW* LPOSVERSIONINFOW;
alias _OSVERSIONINFOW RTL_OSVERSIONINFOW;
alias _OSVERSIONINFOW* PRTL_OSVERSIONINFOW;

// #ifdef UNICODE
alias OSVERSIONINFOW OSVERSIONINFO;
alias POSVERSIONINFOW POSVERSIONINFO;
alias LPOSVERSIONINFOW LPOSVERSIONINFO;
// #else
// ...
// #endif // UNICODE

struct _OSVERSIONINFOEXA {
  DWORD dwOSVersionInfoSize;
  DWORD dwMajorVersion;
  DWORD dwMinorVersion;
  DWORD dwBuildNumber;
  DWORD dwPlatformId;
  CHAR szCSDVersion[ 128 ];
  WORD wServicePackMajor;
  WORD wServicePackMinor;
  WORD wSuiteMask;
  BYTE wProductType;
  BYTE wReserved;
}
alias _OSVERSIONINFOEXA OSVERSIONINFOEXA;
alias _OSVERSIONINFOEXA* POSVERSIONINFOEXA;
alias _OSVERSIONINFOEXA* LPOSVERSIONINFOEXA;

struct _OSVERSIONINFOEXW {
  DWORD dwOSVersionInfoSize;
  DWORD dwMajorVersion;
  DWORD dwMinorVersion;
  DWORD dwBuildNumber;
  DWORD dwPlatformId;
  WCHAR szCSDVersion[ 128 ];
  WORD wServicePackMajor;
  WORD wServicePackMinor;
  WORD wSuiteMask;
  BYTE wProductType;
  BYTE wReserved;
}
alias _OSVERSIONINFOEXW OSVERSIONINFOEXW;
alias _OSVERSIONINFOEXW* POSVERSIONINFOEXW;
alias _OSVERSIONINFOEXW* LPOSVERSIONINFOEXW;
alias _OSVERSIONINFOEXW RTL_OSVERSIONINFOEXW;
alias _OSVERSIONINFOEXW* PRTL_OSVERSIONINFOEXW;

// #ifdef UNICODE
alias OSVERSIONINFOEXW OSVERSIONINFOEX;
alias POSVERSIONINFOEXW POSVERSIONINFOEX;
alias LPOSVERSIONINFOEXW LPOSVERSIONINFOEX;
// #else
// ...
// #endif // UNICODE

enum : uint { VER_EQUAL = 1 }
enum : uint { VER_GREATER = 2 }
enum : uint { VER_GREATER_EQUAL = 3 }
enum : uint { VER_LESS = 4 }
enum : uint { VER_LESS_EQUAL = 5 }
enum : uint { VER_AND = 6 }
enum : uint { VER_OR = 7 }

enum : uint { VER_CONDITION_MASK = 7 }
enum : uint { VER_NUM_BITS_PER_CONDITION_MASK = 3 }

enum : uint { VER_MINORVERSION = 0x0000001 }
enum : uint { VER_MAJORVERSION = 0x0000002 }
enum : uint { VER_BUILDNUMBER = 0x0000004 }
enum : uint { VER_PLATFORMID = 0x0000008 }
enum : uint { VER_SERVICEPACKMINOR = 0x0000010 }
enum : uint { VER_SERVICEPACKMAJOR = 0x0000020 }
enum : uint { VER_SUITENAME = 0x0000040 }
enum : uint { VER_PRODUCT_TYPE = 0x0000080 }

enum : uint { VER_NT_WORKSTATION = 0x0000001 }
enum : uint { VER_NT_DOMAIN_CONTROLLER = 0x0000002 }
enum : uint { VER_NT_SERVER = 0x0000003 }

enum : uint { VER_PLATFORM_WIN32s = 0 }
enum : uint { VER_PLATFORM_WIN32_WINDOWS = 1 }
enum : uint { VER_PLATFORM_WIN32_NT = 2 }

// #define VER_SET_CONDITION(_m_,_t_,_c_) ((_m_)=VerSetConditionMask((_m_),(_t_),(_c_)))

extern(Windows) export ULONGLONG VerSetConditionMask(
  ULONGLONG ConditionMask,
  DWORD TypeMask,
  BYTE Condition);

struct _RTL_CRITICAL_SECTION_DEBUG {
  WORD Type;
  WORD CreatorBackTraceIndex;
  _RTL_CRITICAL_SECTION *CriticalSection;
  LIST_ENTRY ProcessLocksList;
  DWORD EntryCount;
  DWORD ContentionCount;
  DWORD Spare[ 2 ];
}
alias _RTL_CRITICAL_SECTION_DEBUG RTL_CRITICAL_SECTION_DEBUG;
alias _RTL_CRITICAL_SECTION_DEBUG* PRTL_CRITICAL_SECTION_DEBUG;
alias _RTL_CRITICAL_SECTION_DEBUG RTL_RESOURCE_DEBUG;
alias _RTL_CRITICAL_SECTION_DEBUG* PRTL_RESOURCE_DEBUG;

enum : uint { RTL_CRITSECT_TYPE = 0 }
enum : uint { RTL_RESOURCE_TYPE = 1 }

struct _RTL_CRITICAL_SECTION {
  PRTL_CRITICAL_SECTION_DEBUG DebugInfo;

  LONG LockCount;
  LONG RecursionCount;
  HANDLE OwningThread;
  HANDLE LockSemaphore;
  ULONG_PTR SpinCount;
}
alias _RTL_CRITICAL_SECTION RTL_CRITICAL_SECTION;
alias _RTL_CRITICAL_SECTION* PRTL_CRITICAL_SECTION;

extern(Windows) alias VOID function( PWSTR DllName, PVOID DllBase, SIZE_T DllSize, PVOID Reserved ) RTL_VERIFIER_DLL_LOAD_CALLBACK;

extern(Windows) alias VOID function( PWSTR DllName, PVOID DllBase, SIZE_T DllSize, PVOID Reserved ) RTL_VERIFIER_DLL_UNLOAD_CALLBACK;

struct _RTL_VERIFIER_THUNK_DESCRIPTOR {

  PCHAR ThunkName;
  PVOID ThunkOldAddress;
  PVOID ThunkNewAddress;
}
alias _RTL_VERIFIER_THUNK_DESCRIPTOR RTL_VERIFIER_THUNK_DESCRIPTOR;
alias _RTL_VERIFIER_THUNK_DESCRIPTOR* PRTL_VERIFIER_THUNK_DESCRIPTOR;

struct _RTL_VERIFIER_DLL_DESCRIPTOR {

  PWCHAR DllName;
  DWORD DllFlags;
  PVOID DllAddress;
  PRTL_VERIFIER_THUNK_DESCRIPTOR DllThunks;
}
alias _RTL_VERIFIER_DLL_DESCRIPTOR RTL_VERIFIER_DLL_DESCRIPTOR;
alias _RTL_VERIFIER_DLL_DESCRIPTOR* PRTL_VERIFIER_DLL_DESCRIPTOR;

struct _RTL_VERIFIER_PROVIDER_DESCRIPTOR {

  DWORD Length;
  PRTL_VERIFIER_DLL_DESCRIPTOR ProviderDlls;
  RTL_VERIFIER_DLL_LOAD_CALLBACK ProviderDllLoadCallback;
  RTL_VERIFIER_DLL_UNLOAD_CALLBACK ProviderDllUnloadCallback;

  PWSTR VerifierImage;
  DWORD VerifierFlags;
  DWORD VerifierDebug;
}
alias _RTL_VERIFIER_PROVIDER_DESCRIPTOR RTL_VERIFIER_PROVIDER_DESCRIPTOR;
alias _RTL_VERIFIER_PROVIDER_DESCRIPTOR* PRTL_VERIFIER_PROVIDER_DESCRIPTOR;

enum : uint { RTL_VRF_FLG_FULL_PAGE_HEAP = 0x0001 }
enum : uint { RTL_VRF_FLG_LOCK_CHECKS = 0x0002 }
enum : uint { RTL_VRF_FLG_HANDLE_CHECKS = 0x0004 }
enum : uint { RTL_VRF_FLG_STACK_CHECKS = 0x0008 }
enum : uint { RTL_VRF_FLG_APPCOMPAT_CHECKS = 0x0010 }

enum : uint { APPLICATION_VERIFIER_INTERNAL_ERROR = 0x80000000 }
enum : uint { APPLICATION_VERIFIER_INTERNAL_WARNING = 0x40000000 }
enum : uint { APPLICATION_VERIFIER_NO_BREAK = 0x20000000 }
enum : uint { APPLICATION_VERIFIER_RESERVED_BIT_28 = 0x10000000 }

enum : uint { APPLICATION_VERIFIER_UNKNOWN_ERROR = 0x0001 }
enum : uint { APPLICATION_VERIFIER_ACCESS_VIOLATION = 0x0002 }
enum : uint { APPLICATION_VERIFIER_UNSYNCHRONIZED_ACCESS = 0x0003 }
enum : uint { APPLICATION_VERIFIER_EXTREME_SIZE_REQUEST = 0x0004 }
enum : uint { APPLICATION_VERIFIER_BAD_HEAP_HANDLE = 0x0005 }
enum : uint { APPLICATION_VERIFIER_SWITCHED_HEAP_HANDLE = 0x0006 }
enum : uint { APPLICATION_VERIFIER_DOUBLE_FREE = 0x0007 }
enum : uint { APPLICATION_VERIFIER_CORRUPTED_HEAP_BLOCK = 0x0008 }
enum : uint { APPLICATION_VERIFIER_DESTROY_PROCESS_HEAP = 0x0009 }
enum : uint { APPLICATION_VERIFIER_UNEXPECTED_EXCEPTION = 0x000A }
enum : uint { APPLICATION_VERIFIER_STACK_OVERFLOW = 0x000B }

enum : uint { APPLICATION_VERIFIER_TERMINATE_THREAD_CALL = 0x0100 }

enum : uint { APPLICATION_VERIFIER_EXIT_THREAD_OWNS_LOCK = 0x0200 }
enum : uint { APPLICATION_VERIFIER_LOCK_IN_UNLOADED_DLL = 0x0201 }
enum : uint { APPLICATION_VERIFIER_LOCK_IN_FREED_HEAP = 0x0202 }
enum : uint { APPLICATION_VERIFIER_LOCK_DOUBLE_INITIALIZE = 0x0203 }
enum : uint { APPLICATION_VERIFIER_LOCK_IN_FREED_MEMORY = 0x0204 }
enum : uint { APPLICATION_VERIFIER_LOCK_CORRUPTED = 0x0205 }
enum : uint { APPLICATION_VERIFIER_LOCK_INVALID_OWNER = 0x0206 }
enum : uint { APPLICATION_VERIFIER_LOCK_INVALID_RECURSION_COUNT = 0x0207 }
enum : uint { APPLICATION_VERIFIER_LOCK_INVALID_LOCK_COUNT = 0x0208 }
enum : uint { APPLICATION_VERIFIER_LOCK_OVER_RELEASED = 0x0209 }
enum : uint { APPLICATION_VERIFIER_LOCK_NOT_INITIALIZED = 0x0210 }

enum : uint { APPLICATION_VERIFIER_INVALID_HANDLE = 0x0300 }

// #define VERIFIER_STOP(Code, Msg, P1, S1, P2, S2, P3, S3, P4, S4) { RtlApplicationVerifierStop ((Code), (Msg), (ULONG_PTR)(P1),(S1), (ULONG_PTR)(P2),(S2), (ULONG_PTR)(P3),(S3), (ULONG_PTR)(P4),(S4)); }

extern(Windows) export VOID RtlApplicationVerifierStop(
  ULONG_PTR Code,
  PCHAR Message,
  ULONG_PTR Param1, PCHAR Description1,
  ULONG_PTR Param2, PCHAR Description2,
  ULONG_PTR Param3, PCHAR Description3,
  ULONG_PTR Param4, PCHAR Description4);

extern(Windows) alias LONG function(  _EXCEPTION_POINTERS *ExceptionInfo ) PVECTORED_EXCEPTION_HANDLER;
enum : uint { SEF_DACL_AUTO_INHERIT = 0x01 }
enum : uint { SEF_SACL_AUTO_INHERIT = 0x02 }
enum : uint { SEF_DEFAULT_DESCRIPTOR_FOR_OBJECT = 0x04 }
enum : uint { SEF_AVOID_PRIVILEGE_CHECK = 0x08 }
enum : uint { SEF_AVOID_OWNER_CHECK = 0x10 }
enum : uint { SEF_DEFAULT_OWNER_FROM_PARENT = 0x20 }
enum : uint { SEF_DEFAULT_GROUP_FROM_PARENT = 0x40 }

alias int _HEAP_INFORMATION_CLASS;
enum {

  HeapCompatibilityInformation,

}
alias _HEAP_INFORMATION_CLASS HEAP_INFORMATION_CLASS;

extern(Windows) export DWORD RtlSetHeapInformation(
  PVOID HeapHandle,
  HEAP_INFORMATION_CLASS HeapInformationClass,
  PVOID HeapInformation ,
  SIZE_T HeapInformationLength );

extern(Windows) export DWORD RtlQueryHeapInformation(
  PVOID HeapHandle,
  HEAP_INFORMATION_CLASS HeapInformationClass,
  PVOID HeapInformation ,
  SIZE_T HeapInformationLength ,
  PSIZE_T ReturnLength );

enum : uint { WT_EXECUTEDEFAULT = 0x00000000 }
enum : uint { WT_EXECUTEINIOTHREAD = 0x00000001 }
enum : uint { WT_EXECUTEINUITHREAD = 0x00000002 }
enum : uint { WT_EXECUTEINWAITTHREAD = 0x00000004 }
enum : uint { WT_EXECUTEONLYONCE = 0x00000008 }
enum : uint { WT_EXECUTEINTIMERTHREAD = 0x00000020 }
enum : uint { WT_EXECUTELONGFUNCTION = 0x00000010 }
enum : uint { WT_EXECUTEINPERSISTENTIOTHREAD = 0x00000040 }
enum : uint { WT_EXECUTEINPERSISTENTTHREAD = 0x00000080 }
// #define WT_SET_MAX_THREADPOOL_THREADS(Flags, Limit) ((Flags) |= (Limit)<<16)
extern(Windows) alias VOID function(PVOID, BOOLEAN ) WAITORTIMERCALLBACKFUNC;
extern(Windows) alias VOID function(PVOID ) WORKERCALLBACKFUNC;
extern(Windows) alias VOID function(DWORD , PVOID, PVOID) APC_CALLBACK_FUNCTION;
enum : uint { WT_EXECUTEINLONGTHREAD = 0x00000010 }
enum : uint { WT_EXECUTEDELETEWAIT = 0x00000008 }

alias int _ACTIVATION_CONTEXT_INFO_CLASS;
enum {
  ActivationContextBasicInformation = 1,
  ActivationContextDetailedInformation = 2,
  AssemblyDetailedInformationInActivationContext = 3,
  FileInformationInAssemblyOfAssemblyInActivationContext = 4,
  MaxActivationContextInfoClass,

  AssemblyDetailedInformationInActivationContxt = 3,
  FileInformationInAssemblyOfAssemblyInActivationContxt = 4,
}
alias _ACTIVATION_CONTEXT_INFO_CLASS ACTIVATION_CONTEXT_INFO_CLASS;

alias ACTIVATION_CONTEXT_INFO_CLASS ACTIVATIONCONTEXTINFOCLASS;

struct _ACTIVATION_CONTEXT_QUERY_INDEX {
  DWORD ulAssemblyIndex;
  DWORD ulFileIndexInAssembly;
}
alias _ACTIVATION_CONTEXT_QUERY_INDEX ACTIVATION_CONTEXT_QUERY_INDEX;
alias _ACTIVATION_CONTEXT_QUERY_INDEX* PACTIVATION_CONTEXT_QUERY_INDEX;

alias _ACTIVATION_CONTEXT_QUERY_INDEX* PCACTIVATION_CONTEXT_QUERY_INDEX;

enum : uint { ACTIVATION_CONTEXT_PATH_TYPE_NONE = 1 }
enum : uint { ACTIVATION_CONTEXT_PATH_TYPE_WIN32_FILE = 2 }
enum : uint { ACTIVATION_CONTEXT_PATH_TYPE_URL = 3 }
enum : uint { ACTIVATION_CONTEXT_PATH_TYPE_ASSEMBLYREF = 4 }

struct _ASSEMBLY_FILE_DETAILED_INFORMATION {
  DWORD ulFlags;
  DWORD ulFilenameLength;
  DWORD ulPathLength;
  PCWSTR lpFileName;
  PCWSTR lpFilePath;
}
alias _ASSEMBLY_FILE_DETAILED_INFORMATION ASSEMBLY_FILE_DETAILED_INFORMATION;
alias _ASSEMBLY_FILE_DETAILED_INFORMATION* PASSEMBLY_FILE_DETAILED_INFORMATION;

alias ASSEMBLY_FILE_DETAILED_INFORMATION* PCASSEMBLY_FILE_DETAILED_INFORMATION;

alias _ASSEMBLY_FILE_DETAILED_INFORMATION _ASSEMBLY_DLL_REDIRECTION_DETAILED_INFORMATION;
alias ASSEMBLY_FILE_DETAILED_INFORMATION ASSEMBLY_DLL_REDIRECTION_DETAILED_INFORMATION;
alias PASSEMBLY_FILE_DETAILED_INFORMATION PASSEMBLY_DLL_REDIRECTION_DETAILED_INFORMATION;
alias PCASSEMBLY_FILE_DETAILED_INFORMATION PCASSEMBLY_DLL_REDIRECTION_DETAILED_INFORMATION;

struct _ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION {
  DWORD ulFlags;
  DWORD ulEncodedAssemblyIdentityLength;
  DWORD ulManifestPathType;
  DWORD ulManifestPathLength;
  LARGE_INTEGER liManifestLastWriteTime;
  DWORD ulPolicyPathType;
  DWORD ulPolicyPathLength;
  LARGE_INTEGER liPolicyLastWriteTime;
  DWORD ulMetadataSatelliteRosterIndex;
  DWORD ulManifestVersionMajor;
  DWORD ulManifestVersionMinor;
  DWORD ulPolicyVersionMajor;
  DWORD ulPolicyVersionMinor;
  DWORD ulAssemblyDirectoryNameLength;

  PCWSTR lpAssemblyEncodedAssemblyIdentity;
  PCWSTR lpAssemblyManifestPath;
  PCWSTR lpAssemblyPolicyPath;
  PCWSTR lpAssemblyDirectoryName;
  DWORD ulFileCount;
}
alias _ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION;
alias _ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION* PACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION;

alias _ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION* PCACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION;

struct _ACTIVATION_CONTEXT_DETAILED_INFORMATION {
  DWORD dwFlags;
  DWORD ulFormatVersion;
  DWORD ulAssemblyCount;
  DWORD ulRootManifestPathType;
  DWORD ulRootManifestPathChars;
  DWORD ulRootConfigurationPathType;
  DWORD ulRootConfigurationPathChars;
  DWORD ulAppDirPathType;
  DWORD ulAppDirPathChars;
  PCWSTR lpRootManifestPath;
  PCWSTR lpRootConfigurationPath;
  PCWSTR lpAppDirPath;
}
alias _ACTIVATION_CONTEXT_DETAILED_INFORMATION ACTIVATION_CONTEXT_DETAILED_INFORMATION;
alias _ACTIVATION_CONTEXT_DETAILED_INFORMATION* PACTIVATION_CONTEXT_DETAILED_INFORMATION;

alias _ACTIVATION_CONTEXT_DETAILED_INFORMATION* PCACTIVATION_CONTEXT_DETAILED_INFORMATION;

enum : uint { DLL_PROCESS_ATTACH = 1 }
enum : uint { DLL_THREAD_ATTACH = 2 }
enum : uint { DLL_THREAD_DETACH = 3 }
enum : uint { DLL_PROCESS_DETACH = 0 }
enum : uint { DLL_PROCESS_VERIFIER = 4 }

enum : uint { EVENTLOG_SEQUENTIAL_READ = 0x0001 }
enum : uint { EVENTLOG_SEEK_READ = 0x0002 }
enum : uint { EVENTLOG_FORWARDS_READ = 0x0004 }
enum : uint { EVENTLOG_BACKWARDS_READ = 0x0008 }

enum : uint { EVENTLOG_SUCCESS = 0x0000 }
enum : uint { EVENTLOG_ERROR_TYPE = 0x0001 }
enum : uint { EVENTLOG_WARNING_TYPE = 0x0002 }
enum : uint { EVENTLOG_INFORMATION_TYPE = 0x0004 }
enum : uint { EVENTLOG_AUDIT_SUCCESS = 0x0008 }
enum : uint { EVENTLOG_AUDIT_FAILURE = 0x0010 }

enum : uint { EVENTLOG_START_PAIRED_EVENT = 0x0001 }
enum : uint { EVENTLOG_END_PAIRED_EVENT = 0x0002 }
enum : uint { EVENTLOG_END_ALL_PAIRED_EVENTS = 0x0004 }
enum : uint { EVENTLOG_PAIRED_EVENT_ACTIVE = 0x0008 }
enum : uint { EVENTLOG_PAIRED_EVENT_INACTIVE = 0x0010 }

struct _EVENTLOGRECORD {
  DWORD Length;
  DWORD Reserved;
  DWORD RecordNumber;
  DWORD TimeGenerated;
  DWORD TimeWritten;
  DWORD EventID;
  WORD EventType;
  WORD NumStrings;
  WORD EventCategory;
  WORD ReservedFlags;
  DWORD ClosingRecordNumber;
  DWORD StringOffset;
  DWORD UserSidLength;
  DWORD UserSidOffset;
  DWORD DataLength;
  DWORD DataOffset;

}
alias _EVENTLOGRECORD EVENTLOGRECORD;
alias _EVENTLOGRECORD* PEVENTLOGRECORD;

enum : uint { MAXLOGICALLOGNAMESIZE = 256 }

// #if _MSC_VER >= 1200
// #pragma warning(push)
// #endif
// #pragma warning(disable : 4200)
struct _EVENTSFORLOGFILE {
  DWORD ulSize;
  WCHAR szLogicalLogFile[MAXLOGICALLOGNAMESIZE];
  DWORD ulNumRecords;
  EVENTLOGRECORD pEventLogRecords[];
}
alias _EVENTSFORLOGFILE EVENTSFORLOGFILE;
alias _EVENTSFORLOGFILE* PEVENTSFORLOGFILE;

struct _PACKEDEVENTINFO {
  DWORD ulSize;
  DWORD ulNumEventsForLogFile;
  DWORD ulOffsets[];
}
alias _PACKEDEVENTINFO PACKEDEVENTINFO;
alias _PACKEDEVENTINFO* PPACKEDEVENTINFO;

// #if _MSC_VER >= 1200
// #pragma warning(pop)
// #else
// #...
// #endif

enum : uint { KEY_QUERY_VALUE = 0x0001 }
enum : uint { KEY_SET_VALUE = 0x0002 }
enum : uint { KEY_CREATE_SUB_KEY = 0x0004 }
enum : uint { KEY_ENUMERATE_SUB_KEYS = 0x0008 }
enum : uint { KEY_NOTIFY = 0x0010 }
enum : uint { KEY_CREATE_LINK = 0x0020 }
enum : uint { KEY_WOW64_32KEY = 0x0200 }
enum : uint { KEY_WOW64_64KEY = 0x0100 }
enum : uint { KEY_WOW64_RES = 0x0300 }

enum : uint { KEY_READ = (STANDARD_RIGHTS_READ | KEY_QUERY_VALUE | KEY_ENUMERATE_SUB_KEYS | KEY_NOTIFY) & (~SYNCHRONIZE) }

enum : uint { KEY_WRITE = (STANDARD_RIGHTS_WRITE | KEY_SET_VALUE | KEY_CREATE_SUB_KEY) & (~SYNCHRONIZE) }

enum : uint { KEY_EXECUTE = KEY_READ & ~SYNCHRONIZE }

enum : uint { KEY_ALL_ACCESS = (STANDARD_RIGHTS_ALL | KEY_QUERY_VALUE | KEY_SET_VALUE | KEY_CREATE_SUB_KEY | KEY_ENUMERATE_SUB_KEYS | KEY_NOTIFY | KEY_CREATE_LINK) & (~SYNCHRONIZE) }

enum : uint { REG_OPTION_RESERVED = 0x00000000 }

enum : uint { REG_OPTION_NON_VOLATILE = 0x00000000 }

enum : uint { REG_OPTION_VOLATILE = 0x00000001 }

enum : uint { REG_OPTION_CREATE_LINK = 0x00000002 }

enum : uint { REG_OPTION_BACKUP_RESTORE = 0x00000004 }

enum : uint { REG_OPTION_OPEN_LINK = 0x00000008 }

enum : uint { REG_LEGAL_OPTION = REG_OPTION_RESERVED | REG_OPTION_NON_VOLATILE | REG_OPTION_VOLATILE | REG_OPTION_CREATE_LINK | REG_OPTION_BACKUP_RESTORE | REG_OPTION_OPEN_LINK }

enum : uint { REG_CREATED_NEW_KEY = 0x00000001 }
enum : uint { REG_OPENED_EXISTING_KEY = 0x00000002 }

enum : uint { REG_STANDARD_FORMAT = 1 }
enum : uint { REG_LATEST_FORMAT = 2 }
enum : uint { REG_NO_COMPRESSION = 4 }

enum : uint { REG_WHOLE_HIVE_VOLATILE = 0x00000001 }
enum : uint { REG_REFRESH_HIVE = 0x00000002 }
enum : uint { REG_NO_LAZY_FLUSH = 0x00000004 }
enum : uint { REG_FORCE_RESTORE = 0x00000008 }

enum : uint { REG_NOTIFY_CHANGE_NAME = 0x00000001 }
enum : uint { REG_NOTIFY_CHANGE_ATTRIBUTES = 0x00000002 }
enum : uint { REG_NOTIFY_CHANGE_LAST_SET = 0x00000004 }
enum : uint { REG_NOTIFY_CHANGE_SECURITY = 0x00000008 }

enum : uint { REG_LEGAL_CHANGE_FILTER = REG_NOTIFY_CHANGE_NAME | REG_NOTIFY_CHANGE_ATTRIBUTES | REG_NOTIFY_CHANGE_LAST_SET | REG_NOTIFY_CHANGE_SECURITY }

enum : uint { REG_NONE = 0 }
enum : uint { REG_SZ = 1 }
enum : uint { REG_EXPAND_SZ = 2 }

enum : uint { REG_BINARY = 3 }
enum : uint { REG_DWORD = 4 }
enum : uint { REG_DWORD_LITTLE_ENDIAN = 4 }
enum : uint { REG_DWORD_BIG_ENDIAN = 5 }
enum : uint { REG_LINK = 6 }
enum : uint { REG_MULTI_SZ = 7 }
enum : uint { REG_RESOURCE_LIST = 8 }
enum : uint { REG_FULL_RESOURCE_DESCRIPTOR = 9 }
enum : uint { REG_RESOURCE_REQUIREMENTS_LIST = 10 }
enum : uint { REG_QWORD = 11 }
enum : uint { REG_QWORD_LITTLE_ENDIAN = 11 }

enum : uint { SERVICE_KERNEL_DRIVER = 0x00000001 }
enum : uint { SERVICE_FILE_SYSTEM_DRIVER = 0x00000002 }
enum : uint { SERVICE_ADAPTER = 0x00000004 }
enum : uint { SERVICE_RECOGNIZER_DRIVER = 0x00000008 }

enum : uint { SERVICE_DRIVER = SERVICE_KERNEL_DRIVER | SERVICE_FILE_SYSTEM_DRIVER | SERVICE_RECOGNIZER_DRIVER }

enum : uint { SERVICE_WIN32_OWN_PROCESS = 0x00000010 }
enum : uint { SERVICE_WIN32_SHARE_PROCESS = 0x00000020 }
enum : uint { SERVICE_WIN32 = SERVICE_WIN32_OWN_PROCESS | SERVICE_WIN32_SHARE_PROCESS }

enum : uint { SERVICE_INTERACTIVE_PROCESS = 0x00000100 }

enum : uint { SERVICE_TYPE_ALL = SERVICE_WIN32 | SERVICE_ADAPTER | SERVICE_DRIVER | SERVICE_INTERACTIVE_PROCESS }

enum : uint { SERVICE_BOOT_START = 0x00000000 }
enum : uint { SERVICE_SYSTEM_START = 0x00000001 }
enum : uint { SERVICE_AUTO_START = 0x00000002 }
enum : uint { SERVICE_DEMAND_START = 0x00000003 }
enum : uint { SERVICE_DISABLED = 0x00000004 }

enum : uint { SERVICE_ERROR_IGNORE = 0x00000000 }
enum : uint { SERVICE_ERROR_NORMAL = 0x00000001 }
enum : uint { SERVICE_ERROR_SEVERE = 0x00000002 }
enum : uint { SERVICE_ERROR_CRITICAL = 0x00000003 }

alias int _CM_SERVICE_NODE_TYPE;
enum {
  DriverType = SERVICE_KERNEL_DRIVER,
  FileSystemType = SERVICE_FILE_SYSTEM_DRIVER,
  Win32ServiceOwnProcess = SERVICE_WIN32_OWN_PROCESS,
  Win32ServiceShareProcess = SERVICE_WIN32_SHARE_PROCESS,
  AdapterType = SERVICE_ADAPTER,
  RecognizerType = SERVICE_RECOGNIZER_DRIVER,
}
alias _CM_SERVICE_NODE_TYPE SERVICE_NODE_TYPE;

alias int _CM_SERVICE_LOAD_TYPE;
enum {
  BootLoad = SERVICE_BOOT_START,
  SystemLoad = SERVICE_SYSTEM_START,
  AutoLoad = SERVICE_AUTO_START,
  DemandLoad = SERVICE_DEMAND_START,
  DisableLoad = SERVICE_DISABLED,
}
alias _CM_SERVICE_LOAD_TYPE SERVICE_LOAD_TYPE;

alias int _CM_ERROR_CONTROL_TYPE;
enum {
  IgnoreError = SERVICE_ERROR_IGNORE,
  NormalError = SERVICE_ERROR_NORMAL,
  SevereError = SERVICE_ERROR_SEVERE,
  CriticalError = SERVICE_ERROR_CRITICAL,
}
alias _CM_ERROR_CONTROL_TYPE SERVICE_ERROR_TYPE;

enum : uint { TAPE_ERASE_SHORT = 0 }
enum : uint { TAPE_ERASE_LONG = 1 }

struct _TAPE_ERASE {
  DWORD Type;
  BOOLEAN Immediate;
}
alias _TAPE_ERASE TAPE_ERASE;
alias _TAPE_ERASE* PTAPE_ERASE;

enum : uint { TAPE_LOAD = 0 }
enum : uint { TAPE_UNLOAD = 1 }
enum : uint { TAPE_TENSION = 2 }
enum : uint { TAPE_LOCK = 3 }
enum : uint { TAPE_UNLOCK = 4 }
enum : uint { TAPE_FORMAT = 5 }

struct _TAPE_PREPARE {
  DWORD Operation;
  BOOLEAN Immediate;
}
alias _TAPE_PREPARE TAPE_PREPARE;
alias _TAPE_PREPARE* PTAPE_PREPARE;

enum : uint { TAPE_SETMARKS = 0 }
enum : uint { TAPE_FILEMARKS = 1 }
enum : uint { TAPE_SHORT_FILEMARKS = 2 }
enum : uint { TAPE_LONG_FILEMARKS = 3 }

struct _TAPE_WRITE_MARKS {
  DWORD Type;
  DWORD Count;
  BOOLEAN Immediate;
}
alias _TAPE_WRITE_MARKS TAPE_WRITE_MARKS;
alias _TAPE_WRITE_MARKS* PTAPE_WRITE_MARKS;

enum : uint { TAPE_ABSOLUTE_POSITION = 0 }
enum : uint { TAPE_LOGICAL_POSITION = 1 }
enum : uint { TAPE_PSEUDO_LOGICAL_POSITION = 2 }

struct _TAPE_GET_POSITION {
  DWORD Type;
  DWORD Partition;
  LARGE_INTEGER Offset;
}
alias _TAPE_GET_POSITION TAPE_GET_POSITION;
alias _TAPE_GET_POSITION* PTAPE_GET_POSITION;

enum : uint { TAPE_REWIND = 0 }
enum : uint { TAPE_ABSOLUTE_BLOCK = 1 }
enum : uint { TAPE_LOGICAL_BLOCK = 2 }
enum : uint { TAPE_PSEUDO_LOGICAL_BLOCK = 3 }
enum : uint { TAPE_SPACE_END_OF_DATA = 4 }
enum : uint { TAPE_SPACE_RELATIVE_BLOCKS = 5 }
enum : uint { TAPE_SPACE_FILEMARKS = 6 }
enum : uint { TAPE_SPACE_SEQUENTIAL_FMKS = 7 }
enum : uint { TAPE_SPACE_SETMARKS = 8 }
enum : uint { TAPE_SPACE_SEQUENTIAL_SMKS = 9 }

struct _TAPE_SET_POSITION {
  DWORD Method;
  DWORD Partition;
  LARGE_INTEGER Offset;
  BOOLEAN Immediate;
}
alias _TAPE_SET_POSITION TAPE_SET_POSITION;
alias _TAPE_SET_POSITION* PTAPE_SET_POSITION;

enum : uint { TAPE_DRIVE_FIXED = 0x00000001 }
enum : uint { TAPE_DRIVE_SELECT = 0x00000002 }
enum : uint { TAPE_DRIVE_INITIATOR = 0x00000004 }

enum : uint { TAPE_DRIVE_ERASE_SHORT = 0x00000010 }
enum : uint { TAPE_DRIVE_ERASE_LONG = 0x00000020 }
enum : uint { TAPE_DRIVE_ERASE_BOP_ONLY = 0x00000040 }
enum : uint { TAPE_DRIVE_ERASE_IMMEDIATE = 0x00000080 }

enum : uint { TAPE_DRIVE_TAPE_CAPACITY = 0x00000100 }
enum : uint { TAPE_DRIVE_TAPE_REMAINING = 0x00000200 }
enum : uint { TAPE_DRIVE_FIXED_BLOCK = 0x00000400 }
enum : uint { TAPE_DRIVE_VARIABLE_BLOCK = 0x00000800 }

enum : uint { TAPE_DRIVE_WRITE_PROTECT = 0x00001000 }
enum : uint { TAPE_DRIVE_EOT_WZ_SIZE = 0x00002000 }

enum : uint { TAPE_DRIVE_ECC = 0x00010000 }
enum : uint { TAPE_DRIVE_COMPRESSION = 0x00020000 }
enum : uint { TAPE_DRIVE_PADDING = 0x00040000 }
enum : uint { TAPE_DRIVE_REPORT_SMKS = 0x00080000 }

enum : uint { TAPE_DRIVE_GET_ABSOLUTE_BLK = 0x00100000 }
enum : uint { TAPE_DRIVE_GET_LOGICAL_BLK = 0x00200000 }
enum : uint { TAPE_DRIVE_SET_EOT_WZ_SIZE = 0x00400000 }

enum : uint { TAPE_DRIVE_EJECT_MEDIA = 0x01000000 }
enum : uint { TAPE_DRIVE_CLEAN_REQUESTS = 0x02000000 }
enum : uint { TAPE_DRIVE_SET_CMP_BOP_ONLY = 0x04000000 }

enum : uint { TAPE_DRIVE_RESERVED_BIT = 0x80000000 }

enum : uint { TAPE_DRIVE_LOAD_UNLOAD = 0x80000001 }
enum : uint { TAPE_DRIVE_TENSION = 0x80000002 }
enum : uint { TAPE_DRIVE_LOCK_UNLOCK = 0x80000004 }
enum : uint { TAPE_DRIVE_REWIND_IMMEDIATE = 0x80000008 }

enum : uint { TAPE_DRIVE_SET_BLOCK_SIZE = 0x80000010 }
enum : uint { TAPE_DRIVE_LOAD_UNLD_IMMED = 0x80000020 }
enum : uint { TAPE_DRIVE_TENSION_IMMED = 0x80000040 }
enum : uint { TAPE_DRIVE_LOCK_UNLK_IMMED = 0x80000080 }

enum : uint { TAPE_DRIVE_SET_ECC = 0x80000100 }
enum : uint { TAPE_DRIVE_SET_COMPRESSION = 0x80000200 }
enum : uint { TAPE_DRIVE_SET_PADDING = 0x80000400 }
enum : uint { TAPE_DRIVE_SET_REPORT_SMKS = 0x80000800 }

enum : uint { TAPE_DRIVE_ABSOLUTE_BLK = 0x80001000 }
enum : uint { TAPE_DRIVE_ABS_BLK_IMMED = 0x80002000 }
enum : uint { TAPE_DRIVE_LOGICAL_BLK = 0x80004000 }
enum : uint { TAPE_DRIVE_LOG_BLK_IMMED = 0x80008000 }

enum : uint { TAPE_DRIVE_END_OF_DATA = 0x80010000 }
enum : uint { TAPE_DRIVE_RELATIVE_BLKS = 0x80020000 }
enum : uint { TAPE_DRIVE_FILEMARKS = 0x80040000 }
enum : uint { TAPE_DRIVE_SEQUENTIAL_FMKS = 0x80080000 }

enum : uint { TAPE_DRIVE_SETMARKS = 0x80100000 }
enum : uint { TAPE_DRIVE_SEQUENTIAL_SMKS = 0x80200000 }
enum : uint { TAPE_DRIVE_REVERSE_POSITION = 0x80400000 }
enum : uint { TAPE_DRIVE_SPACE_IMMEDIATE = 0x80800000 }

enum : uint { TAPE_DRIVE_WRITE_SETMARKS = 0x81000000 }
enum : uint { TAPE_DRIVE_WRITE_FILEMARKS = 0x82000000 }
enum : uint { TAPE_DRIVE_WRITE_SHORT_FMKS = 0x84000000 }
enum : uint { TAPE_DRIVE_WRITE_LONG_FMKS = 0x88000000 }

enum : uint { TAPE_DRIVE_WRITE_MARK_IMMED = 0x90000000 }
enum : uint { TAPE_DRIVE_FORMAT = 0xA0000000 }
enum : uint { TAPE_DRIVE_FORMAT_IMMEDIATE = 0xC0000000 }
enum : uint { TAPE_DRIVE_HIGH_FEATURES = 0x80000000 }

struct _TAPE_GET_DRIVE_PARAMETERS {
  BOOLEAN ECC;
  BOOLEAN Compression;
  BOOLEAN DataPadding;
  BOOLEAN ReportSetmarks;
  DWORD DefaultBlockSize;
  DWORD MaximumBlockSize;
  DWORD MinimumBlockSize;
  DWORD MaximumPartitionCount;
  DWORD FeaturesLow;
  DWORD FeaturesHigh;
  DWORD EOTWarningZoneSize;
}
alias _TAPE_GET_DRIVE_PARAMETERS TAPE_GET_DRIVE_PARAMETERS;
alias _TAPE_GET_DRIVE_PARAMETERS* PTAPE_GET_DRIVE_PARAMETERS;

struct _TAPE_SET_DRIVE_PARAMETERS {
  BOOLEAN ECC;
  BOOLEAN Compression;
  BOOLEAN DataPadding;
  BOOLEAN ReportSetmarks;
  DWORD EOTWarningZoneSize;
}
alias _TAPE_SET_DRIVE_PARAMETERS TAPE_SET_DRIVE_PARAMETERS;
alias _TAPE_SET_DRIVE_PARAMETERS* PTAPE_SET_DRIVE_PARAMETERS;

struct _TAPE_GET_MEDIA_PARAMETERS {
  LARGE_INTEGER Capacity;
  LARGE_INTEGER Remaining;
  DWORD BlockSize;
  DWORD PartitionCount;
  BOOLEAN WriteProtected;
}
alias _TAPE_GET_MEDIA_PARAMETERS TAPE_GET_MEDIA_PARAMETERS;
alias _TAPE_GET_MEDIA_PARAMETERS* PTAPE_GET_MEDIA_PARAMETERS;

struct _TAPE_SET_MEDIA_PARAMETERS {
  DWORD BlockSize;
}
alias _TAPE_SET_MEDIA_PARAMETERS TAPE_SET_MEDIA_PARAMETERS;
alias _TAPE_SET_MEDIA_PARAMETERS* PTAPE_SET_MEDIA_PARAMETERS;

enum : uint { TAPE_FIXED_PARTITIONS = 0 }
enum : uint { TAPE_SELECT_PARTITIONS = 1 }
enum : uint { TAPE_INITIATOR_PARTITIONS = 2 }

struct _TAPE_CREATE_PARTITION {
  DWORD Method;
  DWORD Count;
  DWORD Size;
}
alias _TAPE_CREATE_PARTITION TAPE_CREATE_PARTITION;
alias _TAPE_CREATE_PARTITION* PTAPE_CREATE_PARTITION;

enum : uint { TAPE_QUERY_DRIVE_PARAMETERS = 0 }
enum : uint { TAPE_QUERY_MEDIA_CAPACITY = 1 }
enum : uint { TAPE_CHECK_FOR_DRIVE_PROBLEM = 2 }
enum : uint { TAPE_QUERY_IO_ERROR_DATA = 3 }
enum : uint { TAPE_QUERY_DEVICE_ERROR_DATA = 4 }

struct _TAPE_WMI_OPERATIONS {
  DWORD Method;
  DWORD DataBufferSize;
  PVOID DataBuffer;
}
alias _TAPE_WMI_OPERATIONS TAPE_WMI_OPERATIONS;
alias _TAPE_WMI_OPERATIONS* PTAPE_WMI_OPERATIONS;

alias int _TAPE_DRIVE_PROBLEM_TYPE;
enum {
  TapeDriveProblemNone,
  TapeDriveReadWriteWarning,
  TapeDriveReadWriteError,
  TapeDriveReadWarning,
  TapeDriveWriteWarning,
  TapeDriveReadError,
  TapeDriveWriteError,
  TapeDriveHardwareError,
  TapeDriveUnsupportedMedia,
  TapeDriveScsiConnectionError,
  TapeDriveTimetoClean,
  TapeDriveCleanDriveNow,
  TapeDriveMediaLifeExpired,
  TapeDriveSnappedTape,
}
alias _TAPE_DRIVE_PROBLEM_TYPE TAPE_DRIVE_PROBLEM_TYPE;

// #if defined(_M_AMD64) && !defined(__midl)

// ...

// ...

// ...

// ...

// ...

// ...

// #endif // _M_AMD64 && !defined(__midl)

// #if (_WIN32_WINNT > 0x0500) || (_WIN32_FUSION >= 0x0100) || ISOLATION_AWARE_ENABLED // winnt_only
enum : uint { ACTIVATION_CONTEXT_SECTION_ASSEMBLY_INFORMATION = 1 }
enum : uint { ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION = 2 }
enum : uint { ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION = 3 }
enum : uint { ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION = 4 }
enum : uint { ACTIVATION_CONTEXT_SECTION_COM_INTERFACE_REDIRECTION = 5 }
enum : uint { ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION = 6 }
enum : uint { ACTIVATION_CONTEXT_SECTION_COM_PROGID_REDIRECTION = 7 }
enum : uint { ACTIVATION_CONTEXT_SECTION_GLOBAL_OBJECT_RENAME_TABLE = 8 }
// #endif // winnt_only

// #ifdef __cplusplus
// }
// #endif

// #endif /* _WINNT_ */

