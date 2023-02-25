# windows-headers
windows.h for D projects

Simply include it as a dependency in your dub.json and use the following version tag:

`Unicode`, `WindowsVista`

e.g.

`"versions": ["Unicode", "WindowsVista"]`

also available:
`Windows10`, `Windows8_1`, `Windows8`, `Windows7`, `WindowsNTonly`, `WindowsXP`, `Windows2003`

You can compile with` --arch=x86_64` to use mscoff (the msvc linker) on windows 64, or for x86_32 you can use `--arch=x86_mscoff` dub option to force the dmd to use the msvc linker.

Your copy of DMD must be installed with visual studio on the computer to have the microsoft linker automatically configured. This configuration is located in `C:\D\dmd2\windows\bin\sc.ini` by default.

If you compile with optlink OMF (the DMD linker) you will need to convert the missing DLL headers into OMF import libraries manually, using [implib](http://www.digitalmars.com/ctg/implib.html).
