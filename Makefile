AS=sdasz80
CC=sdcc
CCFLAGS=-V -mz80 --code-loc 0x0138 --data-loc 0 --no-std-crt0
OBJCOPY=objcopy

INCLUDEDIR=include
LIBDIR=lib
SRCDIR=src

OBJECTS=runtime.s conio.s cpc/cpc_fw_km.s cpc/cpc_fw_scr.s cpc/cpc_fw_txt.s
SOURCES=main.c
BINARY=main.bin

.PHONY: all

all: $(OBJECTS) $(SOURCES)

%.s:
	$(AS) -o $(notdir $(@:.s=.rel)) $(LIBDIR)/$@

$(SOURCES):
	$(CC) -I$(INCLUDEDIR) $(CCFLAGS) $(addsuffix .rel, $(basename $(notdir $(OBJECTS)))) $(SRCDIR)/$(SOURCES)
	$(OBJCOPY) -Iihex -Obinary $(SOURCES:.c=.ihx) $(BINARY)

clean:
	rm -f *.asm *.bin *.cdb *.ihx *.lk *.lst *.map *.mem *.omf *.rst *.rel *.sym *.noi
