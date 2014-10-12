AS=sdasz80
H2B=hex2bin
CC=sdcc
CCFLAGS=-V -mz80 --code-loc 0x0138 --data-loc 0 --no-std-crt0

INCLUDEDIR=./include
LIBDIR=./lib
SRCDIR=./src

OBJECTS=crt0_cpc.rel conio.rel
SOURCES=main.c

all: $(OBJECTS) $(SOURCES)

%.rel:
	$(AS) -o $@ $(LIBDIR)/$(@:.rel=.s)

$(SOURCES):
	$(CC) -I$(INCLUDEDIR) $(CCFLAGS) $(addsuffix .rel, $(basename $(notdir $(OBJECTS)))) $(SRCDIR)/$(SOURCES)
	$(H2B) $(SOURCES:.c=.ihx)

clean:
	rm -f *.asm *.bin *.cdb *.ihx *.lk *.lst *.map *.mem *.omf *.rst *.rel *.sym *.noi
