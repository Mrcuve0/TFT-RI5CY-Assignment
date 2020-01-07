PROGRAM_NAME = sbst

RISCV                    ?= ~/.riscv
RISCV_EXE_PREFIX         = $(RISCV)/bin/riscv32-unknown-elf-

all: $(PROGRAM_NAME).hex

$(PROGRAM_NAME).elf: main.S syscalls.c vectors.S
	$(RISCV_EXE_PREFIX)gcc -march=rv32imcxpulpv2 -o $@ -w -Os -g -nostdlib \
		-T link.ld \
		-static \
		$^  \
		-I $(RISCV)/riscv32-unknown-elf/include \
		-L $(RISCV)/riscv32-unknown-elf/lib \
		-lc -lm -lgcc

%.hex: %.elf
	$(RISCV_EXE_PREFIX)objcopy -O verilog $< $@

clean:
	rm -rf $(PROGRAM_NAME).elf $(PROGRAM_NAME).hex

