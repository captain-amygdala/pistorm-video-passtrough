# Makefile

KVERSION := $(shell uname -r)
PWD := $(shell pwd)

obj-m := dummy_sensor.o

all:
	+make -C /lib/modules/$(KVERSION)/build/ M=$(PWD) modules
clean:
	+make -C /lib/modules/$(KVERSION)/build/ M=$(PWD) clean
