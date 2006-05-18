module win32.lmuse;
import win32.lmuseflg;
private import win32.lmcons;
private import win32.windef;

const USE_LOCAL_PARMNUM=1;
const USE_REMOTE_PARMNUM=2;
const USE_PASSWORD_PARMNUM=3;
const USE_ASGTYPE_PARMNUM=4;
const USE_USERNAME_PARMNUM=5;
const USE_DOMAINNAME_PARMNUM=6;
const USE_OK=0;
const USE_PAUSED=1;
const USE_SESSLOST=2;
const USE_DISCONN=2;
const USE_NETERR=3;
const USE_CONN=4;
const USE_RECONN=5;
const DWORD USE_WILDCARD= -1;
const USE_DISKDEV=0;
const USE_SPOOLDEV=1;
const USE_CHARDEV=2;
const USE_IPC=3;

struct USE_INFO_0{
	LPWSTR ui0_local;
	LPWSTR ui0_remote;
}
alias USE_INFO_0* PUSE_INFO_0, LPUSE_INFO_0;

struct USE_INFO_1{
	LPWSTR ui1_local;
	LPWSTR ui1_remote;
	LPWSTR ui1_password;
	DWORD ui1_status;
	DWORD ui1_asg_type;
	DWORD ui1_refcount;
	DWORD ui1_usecount;
}
alias USE_INFO_1* PUSE_INFO_1, LPUSE_INFO_1;

struct USE_INFO_2{
	LPWSTR ui2_local;
	LPWSTR ui2_remote;
	LPWSTR ui2_password;
	DWORD ui2_status;
	DWORD ui2_asg_type;
	DWORD ui2_refcount;
	DWORD ui2_usecount;
	LPWSTR ui2_username;
	LPWSTR ui2_domainname;
}
alias USE_INFO_2* PUSE_INFO_2, LPUSE_INFO_2;

extern (Windows) {
NET_API_STATUS NetUseAdd(LPWSTR,DWORD,PBYTE,PDWORD);
NET_API_STATUS NetUseDel(LPWSTR,LPWSTR,DWORD);
NET_API_STATUS NetUseEnum(LPWSTR,DWORD,PBYTE*,DWORD,PDWORD,PDWORD,PDWORD);
NET_API_STATUS NetUseGetInfo(LPWSTR,LPWSTR,DWORD,PBYTE*);
}
