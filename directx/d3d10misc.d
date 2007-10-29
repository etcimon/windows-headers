/***********************************************************************\
*                               d3d10misc.d                             *
*                                                                       *
*                       Windows API header module                       *
*                                                                       *
*                       Placed into public domain                       *
\***********************************************************************/
module win32.directx.d3d10misc;

private import win32.windows;

private import win32.directx.dxgi;
private import win32.directx.d3d10;

extern (C) const GUID IID_ID3D10Blob = {0x8ba5fb08, 0x5195, 0x40e2, [0xac, 0x58, 0x0d, 0x98, 0x9c, 0x3a, 0x01, 0x02]};

interface ID3D10Blob : IUnknown {
	extern(Windows) :
	LPVOID GetBufferPointer();
	SIZE_T GetBufferSize();
}

enum D3D10_DRIVER_TYPE {
	D3D10_DRIVER_TYPE_HARDWARE  = 0,
	D3D10_DRIVER_TYPE_REFERENCE = 1,
	D3D10_DRIVER_TYPE_NULL      = 2,
	D3D10_DRIVER_TYPE_SOFTWARE  = 3
}

extern (C) const GUID GUID_DeviceType = {0xd722fb4d, 0x7a68, 0x437a, [0xb2, 0x0c, 0x58, 0x04, 0xee, 0x24, 0x94, 0xa6]};

extern(Windows) {

	HRESULT D3D10CreateDevice(
		IDXGIAdapter pAdapter,
		D3D10_DRIVER_TYPE DriverType,
		HMODULE Software,
		UINT Flags,
		UINT SDKVersion,
		ID3D10Device* ppDevice);

	HRESULT D3D10CreateDeviceAndSwapChain(
		IDXGIAdapter pAdapter,
		D3D10_DRIVER_TYPE DriverType,
		HMODULE Software,
		UINT Flags,
		UINT SDKVersion,
		DXGI_SWAP_CHAIN_DESC* pSwapChainDesc,
		IDXGISwapChain* ppSwapChain,    
		ID3D10Device* ppDevice);

	HRESULT D3D10CreateBlob(
		SIZE_T NumBytes,
		ID3D10Blob* ppBuffer);
	
}
