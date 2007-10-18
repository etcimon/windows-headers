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

########################################

win32.lib : $(OBJECTS)
	$(LIB) -c -p32 $@ $^

%.obj : %.d
	$(DC) $^ -c $(DFLAGS)

clean :
	del win32.lib *.obj

.PHONY : clean
