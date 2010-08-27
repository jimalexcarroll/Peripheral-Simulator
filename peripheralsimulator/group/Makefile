CFLAGS += -I$(LDDINCDIR) -D__DEBUG_TRACE__

ifneq ($(KERNELRELEASE),)
# call from kernel build system

obj-m	:= ../driver/mbxsimulator.o

else

KERNELDIR := /lib/modules/$(shell uname -r)/build
PWD       := $(shell pwd)

default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) LDDINCDIR=$(PWD)/../inc modules

endif
