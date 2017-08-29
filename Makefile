#MODULE_NAME := usbip-core
MODULE_NAME := usbip-host

#$(MODULE_NAME)-objs := usbip_common.o usbip_event.o
$(MODULE_NAME)-objs := stub_dev.o stub_main.o stub_rx.o stub_tx.o

obj-m := $(MODULE_NAME).o

KDIR := /lib/modules/3.13.0-32-generic/build

MAKE := make

default:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules

clean:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) clean
