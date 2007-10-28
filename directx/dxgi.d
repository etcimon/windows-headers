module win32.directx.dxgi;

private import win32.windows;

public import win32.directx.dxgitype;

enum {
	DXGI_USAGE_SHADER_INPUT			= 0b00_00010000,
	DXGI_USAGE_RENDER_TARGET_OUTPUT	= 0b00_00100000,
	DXGI_USAGE_BACK_BUFFER			= 0b00_01000000,
	DXGI_USAGE_SHARED				= 0b00_10000000,
	DXGI_USAGE_READ_ONLY			= 0b01_00000000,
	DXGI_USAGE_DISCARD_ON_PRESENT	= 0b10_00000000,
}
alias UINT DXGI_USAGE;

enum DXGI_SWAP_EFFECT {
	DXGI_SWAP_EFFECT_DISCARD	= 0,
	DXGI_SWAP_EFFECT_SEQUENTIAL	= 1
}

struct DXGI_SWAP_CHAIN_DESC {
	DXGI_MODE_DESC BufferDesc;
	DXGI_SAMPLE_DESC SampleDesc;
	DXGI_USAGE BufferUsage;
	UINT BufferCount;
	HWND OutputWindow;
	BOOL Windowed;
	DXGI_SWAP_EFFECT SwapEffect;
	UINT Flags;
}

interface IDXGIObject : IUnknown {
	// todo...
}

interface IDXGIAdapter : IDXGIObject {
	// todo...
}

interface IDXGIDeviceSubObject : IDXGIObject {
	// todo...
}

interface IDXGISwapChain : IDXGIDeviceSubObject {
	// todo...
}

