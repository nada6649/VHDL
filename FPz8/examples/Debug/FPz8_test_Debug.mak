SHELL = cmd.exe

#
# ZDS II Make File - FPz8_test project, Debug configuration
#
# Generated by: ZDS II - Z8 Encore! Family 5.2.2 (Build 15082502)
#   IDE component: d:5.2.0:13120401
#   Install Path: C:\Program Files (x86)\ZiLOG\ZDSII_Z8Encore!_5.2.2\
#

RM = del

ZDS = C:\PROGRA~2\ZiLOG\ZDSII_~1.2
BIN = $(ZDS)\bin
# ZDS include base directory
INCLUDE = C:\PROGRA~2\ZiLOG\ZDSII_~1.2\include
# intermediate files directory
WORKDIR = C:\Users\Fabio\Documents\Eletronica\vhdl\fpz8\c\Debug

CC = @$(BIN)\eZ8cc
AS = @$(BIN)\eZ8asm
LD = @$(BIN)\eZ8link
AR = @$(BIN)\eZ8lib

CFLAGS =  \
-bfpack:tight -fastcall -const:RAM -define:_Z8F1621  \
-define:_Z8ENCORE_XP_64XX_SERIES -define:_Z8ENCORE_F642X  \
-genprintf -NOkeepasm -keeplst -NOlist -listinc -model:S -optlink  \
-promote -regvar:8 -reduceopt  \
-stdinc:"..;C:\PROGRA~2\ZiLOG\ZDSII_~1.2\include\std;C:\PROGRA~2\ZiLOG\ZDSII_~1.2\include\zilog;C:\PROGRA~2\ZiLOG\ZDSII_~1.2\include\zilog\Z8ENCO~2"  \
-usrinc:"..;" -expmac -debug -NOrevaa -cpu:Z8F1621  \
-asmsw:"   \
	-define:_Z8F1621=1 -define:_Z8ENCORE_XP_64XX_SERIES=1  \
	-define:_Z8ENCORE_F642X=1  \
	-include:"..;C:\PROGRA~2\ZiLOG\ZDSII_~1.2\include\std;C:\PROGRA~2\ZiLOG\ZDSII_~1.2\include\zilog;C:\PROGRA~2\ZiLOG\ZDSII_~1.2\include\zilog\Z8ENCO~2"  \
	-list -NOlistmac -pagelen:56 -pagewidth:80 -quiet -sdiopt -warn  \
	-debug -NOigcase -NOrevaa -cpu:Z8F1621"

ASFLAGS =  \
-define:_Z8F1621=1 -define:_Z8ENCORE_XP_64XX_SERIES=1  \
-define:_Z8ENCORE_F642X=1  \
-include:"..;C:\PROGRA~2\ZiLOG\ZDSII_~1.2\include\std;C:\PROGRA~2\ZiLOG\ZDSII_~1.2\include\zilog;C:\PROGRA~2\ZiLOG\ZDSII_~1.2\include\zilog\Z8ENCO~2"  \
-list -NOlistmac -name -pagelen:56 -pagewidth:80 -quiet -sdiopt  \
-warn -debug -NOigcase -NOrevaa -cpu:Z8F1621

LDFLAGS = @.\FPz8_test_Debug.linkcmd
OUTDIR = C:\Users\Fabio\Documents\Eletronica\vhdl\fpz8\c\Debug

build: FPz8_test

buildall: clean FPz8_test

relink: deltarget FPz8_test

deltarget: 
	@if exist $(WORKDIR)\FPz8_test.lod  \
            $(RM) $(WORKDIR)\FPz8_test.lod
	@if exist $(WORKDIR)\FPz8_test.hex  \
            $(RM) $(WORKDIR)\FPz8_test.hex
	@if exist $(WORKDIR)\FPz8_test.map  \
            $(RM) $(WORKDIR)\FPz8_test.map

clean: 
	@if exist $(WORKDIR)\FPz8_test.lod  \
            $(RM) $(WORKDIR)\FPz8_test.lod
	@if exist $(WORKDIR)\FPz8_test.hex  \
            $(RM) $(WORKDIR)\FPz8_test.hex
	@if exist $(WORKDIR)\FPz8_test.map  \
            $(RM) $(WORKDIR)\FPz8_test.map
	@if exist $(WORKDIR)\test.obj  \
            $(RM) $(WORKDIR)\test.obj

# pre-4.11.0 compatibility
rebuildall: buildall 

LIBS = 

OBJS =  \
            $(WORKDIR)\test.obj

FPz8_test: $(OBJS)
	 $(LD) $(LDFLAGS)

$(WORKDIR)\test.obj :  \
            C:\Users\Fabio\DOCUME~1\ELETRO~1\vhdl\fpz8\c\test.c  \
            $(INCLUDE)\zilog\defines.h  \
            $(INCLUDE)\zilog\dmadefs.h  \
            $(INCLUDE)\zilog\gpio.h  \
            $(INCLUDE)\zilog\uart.h  \
            $(INCLUDE)\zilog\uartdefs.h  \
            $(INCLUDE)\zilog\Z8ENCO~2\ez8f1622.h  \
            $(INCLUDE)\zilog\ez8.h
	 $(CC) $(CFLAGS) C:\Users\Fabio\DOCUME~1\ELETRO~1\vhdl\fpz8\c\test.c
