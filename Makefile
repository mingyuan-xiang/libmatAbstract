LIB = libmat

OBJECTS = mat.o

ifneq ($(PLATFORM),RISCV)
DEPS = libfixed libio
else
DEPS = libfixed
endif

override SRC_ROOT = ../../src

override CFLAGS += -I $(SRC_ROOT)/include/$(LIB)

include $(MAKER_ROOT)/Makefile.$(TOOLCHAIN)
