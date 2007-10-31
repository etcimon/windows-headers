# Makefile for the DirectX tree of the Windows API project
# Uses GNU Make-specific extensions

DC := dmd.exe
LIB := lib.exe

DFLAGS := -inline -I../.. -O -release -w
#DFLAGS := -debug -g -I../.. -unittest -w

DFLAGS += -version=Unicode -version=WindowsVista

########################################

SOURCES := $(wildcard *.d)
OBJECTS := $(SOURCES:.d=.obj)

########################################

directx.lib : $(OBJECTS)
	$(LIB) -c -p32 $@ $^

%.obj : %.d
	$(DC) $^ -c $(DFLAGS)

clean :
	-del directx.lib *.obj

cleanall : clean
	
.PHONY : clean cleanall
