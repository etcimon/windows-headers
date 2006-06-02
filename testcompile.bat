dmd -I.. -c all.d
@if errorlevel 1 goto abort
dmd -I.. -c -version=Windows98 all.d
@if errorlevel 1 goto abort
dmd -I.. -c -version=WindowsME all.d
@if errorlevel 1 goto abort
dmd -I.. -c -version=WindowsNTonly all.d
@if errorlevel 1 goto abort
dmd -I.. -c -version=Windows2000 all.d
@if errorlevel 1 goto abort
dmd -I.. -c -version=Windows98 -version=Windows2000 all.d
@if errorlevel 1 goto abort
dmd -I.. -c -version=WindowsME -version=Windows2000 all.d
@if errorlevel 1 goto abort
dmd -I.. -c -version=WindowsNTonly -version=Windows2000 all.d
@if errorlevel 1 goto abort
dmd -I.. -c -version=WindowsXP all.d
@if errorlevel 1 goto abort
dmd -I.. -c -version=Windows2003 all.d
@if errorlevel 1 goto abort
dmd -I.. -c -version=Win32_Winsock2 all.d
:abort
