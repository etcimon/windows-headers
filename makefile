# Makefile for the Windows API project
# Uses GNU Make-specific extensions

DC := dmd.exe
LIB := lib.exe

DFLAGS := -inline -I.. -O -release -w
#DFLAGS := -debug -g -I.. -unittest -w

DFLAGS += -version=Unicode -version=WindowsVista

########################################

SOURCES := $(wildcard *.d)
OBJECTS := $(SOURCES:.d=.obj)

LIBS := directx
LIBRARIES := $(patsubst %,lib/%.lib,$(LIBS))

########################################

win32.lib : $(OBJECTS) $(LIBRARIES)
	$(LIB) -c -p32 $@ $^

%.obj : %.d
	$(DC) $^ -c $(DFLAGS)

lib/%.lib : lib
	$(MAKE) -C $*
	move "$*\$*.lib" "$@"

lib :
	mkdir lib

clean :
	del win32.lib *.obj

cleanall : clean
	del lib\*.lib
	rmdir lib
	for %%f in ($(LIBS)) do ($(MAKE) -C %%f cleanall)

.PHONY : clean cleanall
