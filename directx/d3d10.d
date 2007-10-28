module win32.directx.d3d10;

private import win32.windows;

public import win32.directx.d3d10misc;
public import win32.directx.dxgi;

pragma(lib, "d3d10.lib");

const D3D10_SDK_VERSION	= 29;

interface ID3D10Device : IUnknown {
	// todo...
}

extern(Windows) export HRESULT D3D10CreateDeviceAndSwapChain(
	IDXGIAdapter pAdapter,
	D3D10_DRIVER_TYPE DriverType,
	HMODULE Software,
	UINT Flags,
	UINT SDKVersion,
	DXGI_SWAP_CHAIN_DESC *pSwapChainDesc,
	IDXGISwapChain *ppSwapChain,    
	ID3D10Device *ppDevice);
