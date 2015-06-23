# windows-headers
windows.h for D projects

Simply include it as a dependency in your dub.json and use the following version tag:

`Unicode`, `WindowsVista`

e.g.

`"versions": ["Unicode", "WindowsVista"]`

also available:
`Windows10`, `Windows8_1`, `Windows8`, `Windows7`, `WindowsNTonly`, `WindowsXP`, `Windows2003`

It is recommended to compile with` --arch=x86_64` to use mscoff (the windows linker). You can add `"dflags-windows-x86": ["-m32mscoff"]` to your application's dub.json and compile with the `--arch=x86` dub option to force the windows linker on x86 applications. However, you must compile the 32mscoff druntime/phobos libraries manually and place them in `C:\D\dmd2\windows\lib32mscoff`. You can compile them by using `BUILD=32mscoff` in `win64.mak` and changing the library paths to 32 bit windows kits. 

Your copy of DMD must be installed with visual studio on the computer to have the microsoft linker automatically configured. This configuration is located in `C:\D\dmd2\windows\bin\sc.ini` by default.

If you compile with optlink OMF (the DMD linker used by default on x86 builds) you will need to convert the missing DLL headers into OMF import libraries manually, using [implib](http://www.digitalmars.com/ctg/implib.html).
