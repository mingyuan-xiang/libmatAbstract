LIB = libmat

OBJECTS = mat.o

DEPS = libfixed libmspprintf

override SRC_ROOT = ../../src

override CFLAGS += -I $(SRC_ROOT)/include/$(LIB)

include $(MAKER_ROOT)/Makefile.$(TOOLCHAIN)
