/***********************************************************************\
*                                 rpc.d                                 *
*                                                                       *
*                       Windows API header module                       *
*                                                                       *
*                 Translated from MinGW Windows headers                 *
*                                                                       *
*                       Placed into public domain                       *
\***********************************************************************/
module windows.rpc;
nothrow:
/* Moved to rpcdecp (duplicate definition).
	typedef void *I_RPC_HANDLE;
	alias long RPC_STATUS;
	// Moved to rpcdce:
	RpcImpersonateClient
	RpcRevertToSelf
*/

public import windows.unknwn;
public import windows.rpcdce;  // also pulls in rpcdcep
public import windows.rpcnsi;
public import windows.rpcnterr;
public import windows.winerror;

alias MIDL_user_allocate midl_user_allocate;
alias MIDL_user_free midl_user_free;

extern (Windows) {
	int I_RpcMapWin32Status(RPC_STATUS);
}
