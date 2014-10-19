AS=sdasz80
H2B=hex2bin
CC=sdcc
CCFLAGS=-V -mz80 --code-loc 0x0138 --data-loc 0 --no-std-crt0

INCLUDEDIR=include
LIBDIR=lib
SRCDIR=src

OBJECTS=$(shell cd $(LIBDIR) && find . -name '*.s')
SOURCE=main.c

.PHONY: all

all: $(OBJECTS) $(SOURCE)

%.s:
	$(AS) -o $(notdir $(@:.s=.rel)) $(LIBDIR)/$@

$(SOURCE):
	$(CC) -I$(INCLUDEDIR) $(CCFLAGS) $(addsuffix .rel, $(basename $(notdir $(OBJECTS)))) $(SRCDIR)/$(SOURCE)
	$(H2B) $(SOURCE:.c=.ihx)

clean:
	rm -f *.asm *.bin *.cdb *.ihx *.lk *.lst *.map *.mem *.omf *.rst *.rel *.sym *.noi
