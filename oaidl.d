module win32.oaidl;

pragma(msg, "oaidl.d : Not yet converted!");

private import win32.unknwn;

interface IDispatch : public IUnknown {}

interface ITypeInfo : public IUnknown {}
alias ITypeInfo *LPTYPEINFO;

struct VARIANT {}

typedef LONG DISPID;

struct DISPPARAMS {}

struct EXCEPINFO {}