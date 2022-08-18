ifndef SRC
check-env:
$(error Usage: make SRC=your_source_file.c target)
endif

CFLAGS=-w -D_FORTIFY_SOURCE=0 -no-pie -fno-builtin -O0 -m32 -z execstack -fno-stack-protector -ggdb
ASMFLAGS=$(CFLAGS) -masm=intel -S

all: asm32 elf32

target: asm32
asm32: $(SRC).c
	gcc $(ASMFLAGS) $(SRC).c -o $(SRC).asm
	sed -i '/\.cfi/d' $(SRC).asm

target: elf32
elf32: $(SRC).c
	gcc $(CFLAGS) $(SRC).c -o $(SRC).out
target: clean
clean:
	rm $(SRC)*.asm $(SRC)*.out
