.PHONY: all clean

TARGET = stm32f103.bin

SRC = $(shell find ./ -name "*.d")
OBJ = app.o

LDC = ldc2
LD = arm-none-eabi-ld

LDCFLAGS = -mtriple=thumbv7m-none-linux-gnueabi -defaultlib= -release -c -g
LDFLAGS = -T layout.ld --gc-section -nostartfiles

.SUFFIXES: .d .o

all: $(TARGET)

$(TARGET): $(OBJ)
	$(LD) $< $(LDFLAGS) -o $@

.d.o: $(SRC)
	$(LDC) $(LDCFLAGS) $<

clean:
	$(RM) $(OBJ) $(TARGET)
