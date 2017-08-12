include build/main.mk

.PHONY: all clean

TARGET = libstm32f103nucleo.a

SRCS = \
	$(shell find ./source -name "*.d") \
	$(shell find ./cortexm/source -name "*.d")

OBJDIR = out
EXDIR = examples

LDCFLAGS = -mtriple=thumbv7m-none-linux-gnueabi -defaultlib= -release -g -lib -od=$(OBJDIR) -of$(TARGET)

LINKFLAGS = \
	-I./source \
	-I./cortexm/source

all: $(TARGET)

$(TARGET): $(SRCS)
	$(LDC) $(LDCFLAGS) -op ${LINKFLGAS} $^

clean:
	$(RM) -r $(OBJDIR)/* $(TARGET)
	$(MAKE) -C $(EXDIR)/itworks clean

examples: $(TARGET)
	$(MAKE) -C $(EXDIR)/itworks

step-run: $(TARGET)
	$(MAKE) -C $(EXDIR)/itworks run
