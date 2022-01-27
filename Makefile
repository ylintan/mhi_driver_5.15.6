ifeq ($(KERNELRELEASE),)
PWD := $(shell pwd)

ifeq ($(ARCH),)
ARCH := $(shell uname -m)
endif
ifeq ($(CROSS_COMPILE),)
CROSS_COMPILE :=
endif
ifeq ($(KDIR),)
KDIR := /lib/modules/$(shell uname -r)/build
endif

default:
	$(MAKE) ARCH=${ARCH} CROSS_COMPILE=${CROSS_COMPILE} -C $(KDIR) M=$(PWD) modules

clean:
	$(MAKE) ARCH=${ARCH} CROSS_COMPILE=${CROSS_COMPILE} -C $(KDIR) M=$(PWD) clean
endif

obj-m+=drivers/bus/mhi/
obj-m+=drivers/net/wwan/
#obj-m+=drivers/net/mhi/
