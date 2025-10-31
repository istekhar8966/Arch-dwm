# FreeBSD-optimized dwmblocks Makefile

PREFIX  := /usr/local
CC      := gcc
CFLAGS  := -pedantic -Wall -Wno-deprecated-declarations -Os -I/usr/local/include
LDFLAGS := -L/usr/local/lib -lX11

all: options dwmblocks

options:
	@echo "dwmblocks build options:"
	@echo "CFLAGS  = ${CFLAGS}"
	@echo "LDFLAGS = ${LDFLAGS}"
	@echo "CC      = ${CC}"

# Build dwmblocks
dwmblocks: dwmblocks.c blocks.def.h blocks.h
	${CC} -o dwmblocks dwmblocks.c ${CFLAGS} ${LDFLAGS}

# Only generate blocks.h if it doesn't exist (prevents overwriting custom edits)
blocks.h: blocks.def.h
	@test -f blocks.h || cp blocks.def.h blocks.h

clean:
	rm -f *.o *.gch dwmblocks

install: dwmblocks
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f dwmblocks ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/dwmblocks

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/dwmblocks

.PHONY: all options clean install uninstall
