module win32.objidl;

import win32.objfwd;
pragma(msg, "objidl.d : Not yet converted!");

// So that objbase will compile.
struct MULTI_QI {}
struct SNB {}
struct BIND_OPTS {}
struct SOLE_AUTHENTICATION_SERVICE {}
struct  COSERVERINFO {}

// so that ole2 will compile.
alias short CLIPFORMAT;
alias void * LPFORMATETC;
alias void * LPOLECLIENTSITE;
alias void * LPDROPTARGET;
alias void * LPOLEOBJECT;
alias void * LPOLEADVISEHOLDER;
alias int HOLEMENU;
alias void * LPDROPSOURCE;
alias void * LPOLEMENUGROUPWIDTHS;
alias void * LPMSG;
alias void * LPENUMOLEVERB;
alias void * LPSTGMEDIUM;
alias void * LPOLEINPLACEFRAME;
alias void * LPOLEINPLACEACTIVEOBJECT;
alias void * LPOLEINPLACEFRAMEINFO;
struct DVTARGETDEVICE {}
