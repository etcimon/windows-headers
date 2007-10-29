/***********************************************************************\
*                                 d3d10.d                              * 
*                                                                      * 
*                       Windows API header module                      * 
*                                                                      * 
*                       Placed into public domain                      * 
\***********************************************************************/
module win32.directx.d3d10;

private import win32.windows;

public import win32.directx.dxgitype;
public import win32.directx.dxgi;
public import win32.directx.d3d10misc;

pragma(lib, "d3d10.lib");

const D3D10_SDK_VERSION	= 29;

interface ID3D10Device : IUnknown {
/+
	extern(Windows) :
	void VSSetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D10Buffer* ppConstantBuffers);
	void PSSetShaderResources(UINT StartSlot, UINT NumViews, ID3D10ShaderResourceView* ppShaderResourceViews);
	void PSSetShader(ID3D10PixelShader pPixelShader);
	void PSSetSamplers(UINT StartSlot, UINT NumSamplers, ID3D10SamplerState* ppSamplers);
	void VSSetShader(ID3D10VertexShader pVertexShader);
	void DrawIndexed(UINT IndexCount, UINT StartIndexLocation, INT BaseVertexLocation);
	void Draw(UINT VertexCount, UINT StartVertexLocation);
	void PSSetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D10Buffer* ppConstantBuffers);
	void IASetInputLayout(ID3D10InputLayout pInputLayout);
	void IASetVertexBuffers(UINT StartSlot, UINT NumBuffers, ID3D10Buffer* ppVertexBuffers, UINT* pStrides, UINT* pOffsets);
	void IASetIndexBuffer(ID3D10Buffer pIndexBuffer, DXGI_FORMAT Format, UINT Offset);
	void DrawIndexedInstanced(UINT IndexCountPerInstance, UINT InstanceCount, UINT StartIndexLocation, INT BaseVertexLocation, UINT StartInstanceLocation);
	void DrawInstanced(UINT VertexCountPerInstance, UINT InstanceCount, UINT StartVertexLocation, UINT StartInstanceLocation);
	void GSSetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D10Buffer* ppConstantBuffers);
	void GSSetShader(ID3D10GeometryShader pShader);
	void IASetPrimitiveTopology(D3D10_PRIMITIVE_TOPOLOGY Topology);
	void VSSetShaderResources(UINT StartSlot, UINT NumViews, ID3D10ShaderResourceView* ppShaderResourceViews);
	void VSSetSamplers(UINT StartSlot, UINT NumSamplers, ID3D10SamplerState* ppSamplers);
	void SetPredication(ID3D10Predicate pPredicate, BOOL PredicateValue);
	void GSSetShaderResources(UINT StartSlot, UINT NumViews, ID3D10ShaderResourceView* ppShaderResourceViews);
	void GSSetSamplers(UINT StartSlot, UINT NumSamplers, ID3D10SamplerState* ppSamplers);
	void OMSetRenderTargets(UINT NumViews, ID3D10RenderTargetView* ppRenderTargetViews, ID3D10DepthStencilView pDepthStencilView);
	void OMSetBlendState(ID3D10BlendState pBlendState, FLOAT[4] BlendFactor, UINT SampleMask);
	void OMSetDepthStencilState(ID3D10DepthStencilState pDepthStencilState, UINT StencilRef);
	void SOSetTargets(UINT NumBuffers, ID3D10Buffer* ppSOTargets, UINT* pOffsets);
	void DrawAuto();
	void RSSetState(ID3D10RasterizerState pRasterizerState);
	void RSSetViewports(UINT NumViewports, D3D10_VIEWPORT* pViewports);
	void RSSetScissorRects(UINT NumRects, D3D10_RECT* pRects);
	void CopySubresourceRegion(ID3D10Resource pDstResource, UINT DstSubresource, UINT DstX, UINT DstY, UINT DstZ, ID3D10Resource pSrcResource, UINT SrcSubresource, D3D10_BOX* pSrcBox);
	void CopyResource(ID3D10Resource pDstResource, ID3D10Resource pSrcResource);
	void UpdateSubresource(ID3D10Resource pDstResource, UINT DstSubresource, D3D10_BOX* pDstBox, void* pSrcData, UINT SrcRowPitch, UINT SrcDepthPitch);
	void ClearRenderTargetView(ID3D10RenderTargetView pRenderTargetView, FLOAT[4] ColorRGBA);
	void ClearDepthStencilView(ID3D10DepthStencilView pDepthStencilView, UINT ClearFlags, FLOAT Depth, UINT8 Stencil);
	void GenerateMips(ID3D10ShaderResourceView pShaderResourceView);
	void ResolveSubresource(ID3D10Resource pDstResource, UINT DstSubresource, ID3D10Resource pSrcResource, UINT SrcSubresource, DXGI_FORMAT Format);
	void VSGetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D10Buffer* ppConstantBuffers);
	void PSGetShaderResources(UINT StartSlot, UINT NumViews, ID3D10ShaderResourceView* ppShaderResourceViews);
	void PSGetShader(ID3D10PixelShader* ppPixelShader);
	void PSGetSamplers(UINT StartSlot, UINT NumSamplers, ID3D10SamplerState* ppSamplers);
	void VSGetShader(ID3D10VertexShader* ppVertexShader);
	void PSGetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D10Buffer* ppConstantBuffers);
	void IAGetInputLayout(ID3D10InputLayout* ppInputLayout);
	void IAGetVertexBuffers(UINT StartSlot, UINT NumBuffers, ID3D10Buffer* ppVertexBuffers, UINT* pStrides, UINT* pOffsets);
	void IAGetIndexBuffer(ID3D10Buffer* pIndexBuffer, DXGI_FORMAT* Format, UINT* Offset);
	void GSGetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D10Buffer* ppConstantBuffers);
	void GSGetShader(ID3D10GeometryShader* ppGeometryShader);
	void IAGetPrimitiveTopology(D3D10_PRIMITIVE_TOPOLOGY* pTopology);
	void VSGetShaderResources(UINT StartSlot, UINT NumViews, ID3D10ShaderResourceView* ppShaderResourceViews);
	void VSGetSamplers(UINT StartSlot, UINT NumSamplers, ID3D10SamplerState* ppSamplers);
	void GetPredication(ID3D10Predicate* ppPredicate, BOOL* pPredicateValue);
	void GSGetShaderResources(UINT StartSlot, UINT NumViews, ID3D10ShaderResourceView* ppShaderResourceViews);
	void GSGetSamplers(UINT StartSlot, UINT NumSamplers, ID3D10SamplerState* ppSamplers);
	void OMGetRenderTargets(UINT NumViews, ID3D10RenderTargetView* ppRenderTargetViews, ID3D10DepthStencilView* ppDepthStencilView);
	void OMGetBlendState(ID3D10BlendState* ppBlendState, FLOAT BlendFactor[ 4 ], UINT* pSampleMask);
	void OMGetDepthStencilState(ID3D10DepthStencilState* ppDepthStencilState, UINT* pStencilRef);
	void SOGetTargets(UINT NumBuffers, ID3D10Buffer* ppSOTargets, UINT* pOffsets);
	void RSGetState(ID3D10RasterizerState* ppRasterizerState);
	void RSGetViewports(UINT* NumViewports, D3D10_VIEWPORT* pViewports);
	void RSGetScissorRects(UINT* NumRects, D3D10_RECT* pRects);
	HRESULT GetDeviceRemovedReason();
	HRESULT SetExceptionMode(UINT RaiseFlags);
	UINT GetExceptionMode();
	HRESULT GetPrivateData(REFGUID guid, UINT* pDataSize, void* pData);
	HRESULT SetPrivateData(REFGUID guid, UINT DataSize, void* pData);
	HRESULT SetPrivateDataInterface(REFGUID guid, IUnknown pData);
	void ClearState();
	void Flush();
	HRESULT CreateBuffer(D3D10_BUFFER_DESC* pDesc, D3D10_SUBRESOURCE_DATA* pInitialData, ID3D10Buffer* ppBuffer);
	HRESULT CreateTexture1D(D3D10_TEXTURE1D_DESC* pDesc, D3D10_SUBRESOURCE_DATA* pInitialData, ID3D10Texture1D* ppTexture1D);
	HRESULT CreateTexture2D(D3D10_TEXTURE2D_DESC* pDesc, D3D10_SUBRESOURCE_DATA* pInitialData, ID3D10Texture2D* ppTexture2D);
	HRESULT CreateTexture3D(D3D10_TEXTURE3D_DESC* pDesc, D3D10_SUBRESOURCE_DATA* pInitialData, ID3D10Texture3D* ppTexture3D);
	HRESULT CreateShaderResourceView(ID3D10Resource pResource, D3D10_SHADER_RESOURCE_VIEW_DESC* pDesc, ID3D10ShaderResourceView* ppSRView);
	HRESULT CreateRenderTargetView(ID3D10Resource pResource, D3D10_RENDER_TARGET_VIEW_DESC* pDesc, ID3D10RenderTargetView* ppRTView);
	HRESULT CreateDepthStencilView(ID3D10Resource pResource, D3D10_DEPTH_STENCIL_VIEW_DESC* pDesc, ID3D10DepthStencilView* ppDepthStencilView);
	HRESULT CreateInputLayout(D3D10_INPUT_ELEMENT_DESC* pInputElementDescs, UINT NumElements, void* pShaderBytecodeWithInputSignature, SIZE_T BytecodeLength, ID3D10InputLayout* ppInputLayout);
	HRESULT CreateVertexShader(void* pShaderBytecode, SIZE_T BytecodeLength, ID3D10VertexShader* ppVertexShader);
	HRESULT CreateGeometryShader(void* pShaderBytecode, SIZE_T BytecodeLength, ID3D10GeometryShader* ppGeometryShader);
	HRESULT CreateGeometryShaderWithStreamOutput(void* pShaderBytecode, SIZE_T BytecodeLength, D3D10_SO_DECLARATION_ENTRY* pSODeclaration, UINT NumEntries, UINT OutputStreamStride, ID3D10GeometryShader* ppGeometryShader);
	HRESULT CreatePixelShader(void* pShaderBytecode, SIZE_T BytecodeLength, ID3D10PixelShader* ppPixelShader);
	HRESULT CreateBlendState(D3D10_BLEND_DESC* pBlendStateDesc, ID3D10BlendState* ppBlendState);
	HRESULT CreateDepthStencilState(D3D10_DEPTH_STENCIL_DESC* pDepthStencilDesc, ID3D10DepthStencilState* ppDepthStencilState);
	HRESULT CreateRasterizerState(D3D10_RASTERIZER_DESC* pRasterizerDesc, ID3D10RasterizerState* ppRasterizerState);
	HRESULT CreateSamplerState(D3D10_SAMPLER_DESC* pSamplerDesc, ID3D10SamplerState* ppSamplerState);
	HRESULT CreateQuery(D3D10_QUERY_DESC* pQueryDesc, ID3D10Query* ppQuery);
	HRESULT CreatePredicate(D3D10_QUERY_DESC* pPredicateDesc, ID3D10Predicate* ppPredicate);
	HRESULT CreateCounter(D3D10_COUNTER_DESC* pCounterDesc, ID3D10Counter* ppCounter);
	HRESULT CheckFormatSupport(DXGI_FORMAT Format, UINT* pFormatSupport);
	HRESULT CheckMultisampleQualityLevels(DXGI_FORMAT Format, UINT SampleCount, UINT* pNumQualityLevels);
	void CheckCounterInfo(D3D10_COUNTER_INFO* pCounterInfo);
	HRESULT CheckCounter(D3D10_COUNTER_DESC* pDesc, D3D10_COUNTER_TYPE* pType, UINT* pActiveCounters, LPSTR szName, UINT* pNameLength, LPSTR szUnits, UINT* pUnitsLength, LPSTR szDescription, UINT* pDescriptionLength);
	UINT GetCreationFlags();
	HRESULT OpenSharedResource(HANDLE hResource, REFIID ReturnedInterface, void** ppResource);
	void SetTextFilterSize(UINT Width, UINT Height);
	void GetTextFilterSize(UINT* pWidth, UINT* pHeight);
+/
}

extern(C) const GUID IID_ID3D10DeviceChild			= {0x9B7E4C00, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]};
extern(C) const GUID IID_ID3D10DepthStencilState	= {0x2B4B1CC8, 0xA4AD, 0x41f8, [0x83, 0x22, 0xCA, 0x86, 0xFC, 0x3E, 0xC6, 0x75]};
extern(C) const GUID IID_ID3D10BlendState			= {0xEDAD8D19, 0x8A35, 0x4d6d, [0x85, 0x66, 0x2E, 0xA2, 0x76, 0xCD, 0xE1, 0x61]};
extern(C) const GUID IID_ID3D10RasterizerState		= {0xA2A07292, 0x89AF, 0x4345, [0xBE, 0x2E, 0xC5, 0x3D, 0x9F, 0xBB, 0x6E, 0x9F]};
extern(C) const GUID IID_ID3D10Resource				= {0x9B7E4C01, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]};
extern(C) const GUID IID_ID3D10Buffer				= {0x9B7E4C02, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]};
extern(C) const GUID IID_ID3D10Texture1D			= {0x9B7E4C03, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]};
extern(C) const GUID IID_ID3D10Texture2D			= {0x9B7E4C04, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]};
extern(C) const GUID IID_ID3D10Texture3D			= {0x9B7E4C05, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]};
extern(C) const GUID IID_ID3D10View					= {0xC902B03F, 0x60A7, 0x49BA, [0x99, 0x36, 0x2A, 0x3A, 0xB3, 0x7A, 0x7E, 0x33]};
extern(C) const GUID IID_ID3D10ShaderResourceView	= {0x9B7E4C07, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]};
extern(C) const GUID IID_ID3D10RenderTargetView		= {0x9B7E4C08, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]};
extern(C) const GUID IID_ID3D10DepthStencilView		= {0x9B7E4C09, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]};
extern(C) const GUID IID_ID3D10VertexShader			= {0x9B7E4C0A, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]};
extern(C) const GUID IID_ID3D10GeometryShader		= {0x6316BE88, 0x54CD, 0x4040, [0xAB, 0x44, 0x20, 0x46, 0x1B, 0xC8, 0x1F, 0x68]};
extern(C) const GUID IID_ID3D10PixelShader			= {0x4968B601, 0x9D00, 0x4cde, [0x83, 0x46, 0x8E, 0x7F, 0x67, 0x58, 0x19, 0xB6]};
extern(C) const GUID IID_ID3D10InputLayout			= {0x9B7E4C0B, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]};
extern(C) const GUID IID_ID3D10SamplerState			= {0x9B7E4C0C, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]};
extern(C) const GUID IID_ID3D10Asynchronous			= {0x9B7E4C0D, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]};
extern(C) const GUID IID_ID3D10Query				= {0x9B7E4C0E, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]};
extern(C) const GUID IID_ID3D10Predicate			= {0x9B7E4C10, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]};
extern(C) const GUID IID_ID3D10Counter				= {0x9B7E4C11, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]};
extern(C) const GUID IID_ID3D10Device				= {0x9B7E4C0F, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]};
extern(C) const GUID IID_ID3D10Multithread			= {0x9B7E4E00, 0x342C, 0x4106, [0xA1, 0x9F, 0x4F, 0x27, 0x04, 0xF6, 0x89, 0xF0]};

