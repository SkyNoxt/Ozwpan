# -----------------------------------------------------------------------------
# Copyright (c) 2011 Ozmo Inc
# Released under the GNU General Public License Version 2 (GPLv2).
# -----------------------------------------------------------------------------

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) $(KMOD_OPTIONS) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) $(KMOD_OPTIONS) clean

obj-m += ozwpan.o
ozwpan-y := \
	ozmain.o \
	ozpd.o \
	ozusbsvc.o \
	ozusbsvc1.o \
	ozhcd.o \
	ozeltbuf.o \
	ozproto.o \
	ozcdev.o \
	ozurbparanoia.o
