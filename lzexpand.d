// Converted from w32api\lzexpand.h

module win32.lzexpand;
import win32.windef;
import win32.winbase;

enum : LONG {
	LZERROR_BADINHANDLE  = -1,
	LZERROR_BADOUTHANDLE = -2,
	LZERROR_READ         = -3,
	LZERROR_WRITE        = -4,
	LZERROR_GLOBALLOC    = -5,
	LZERROR_GLOBLOCK     = -6,
	LZERROR_BADVALUE     = -7,
	LZERROR_UNKNOWNALG   = -8
}

extern (Windows):
deprecated {
LONG CopyLZFile(INT,INT);
void LZDone();
INT LZStart();
}
INT GetExpandedNameA(LPSTR,LPSTR);
INT GetExpandedNameW(LPWSTR,LPWSTR);
void LZClose(INT);
LONG LZCopy(INT,INT);
INT LZInit(INT);
INT LZOpenFileA(LPSTR,LPOFSTRUCT,WORD);
INT LZOpenFileW(LPWSTR,LPOFSTRUCT,WORD);
INT LZRead(INT,LPSTR,INT);
LONG LZSeek(INT,LONG,INT);

version(Unicode) {

alias GetExpandedNameW GetExpandedName;
alias LZOpenFileW LZOpenFile;

} else {

alias GetExpandedNameA GetExpandedName;
alias LZOpenFileA LZOpenFile;

}
