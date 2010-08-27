EXTRA_CFLAGS += -I$(LDDINCDIR) -D__DEBUG_TRACE__
#CFLAGS += -I$(LDDINCDIR)  

ifneq ($(KERNELRELEASE),)
# call from kernel build system

obj-m	:= ../Driver/DummyAccess.o

else

#KERNELDIR ?= /lib/modules/$(shell uname -r)/build
KERNELDIR := /lib/modules/$(shell uname -r)/build
PWD       := $(shell pwd)

default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) LDDINCDIR=$(PWD)/../Include modules

endif
