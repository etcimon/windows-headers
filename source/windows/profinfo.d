/***********************************************************************\
*                                  profinfo.d                           *
*                                                                       *
*                       Windows API header module                       *
*                                                                       *
*                 Translated from MinGW Windows headers                 *
*                                                                       *
*                       Placed into public domain                       *
\***********************************************************************/
module windows.profinfo;

private import windows.windef;

struct PROFILEINFO {
  DWORD  dwSize;
  DWORD  dwFlags;
  LPWSTR lpUserName;
  LPWSTR lpProfilePath;
  LPWSTR lpDefaultPath;
  LPWSTR lpServerName;
  LPWSTR lpPolicyPath;
  HANDLE hProfile;
} 
alias PROFILEINFO* LPPROFILEINFOW;

enum : DWORD {
    PT_TEMPORARY = 0x00000001,
    PT_ROAMING = 0x00000002,
    PT_MANDATORY = 0x00000004
}

extern (Windows) {
    BOOL LoadUserProfileW(HANDLE hToken, LPPROFILEINFOW lpProfileInfo);
    BOOL UnloadUserProfile(HANDLE hToken, HANDLE hprofile);
    BOOL GetProfileType(DWORD* dwFlags);
}

alias LoadUserProfileW LoadUserProfile;

