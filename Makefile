ASM=nasm

SRC_DIR=src
BUILD_DIR=build

$(BUILD_DIR)/main_floppy.img: $(BUILD_DIR)/main.bin
	copy $(BUILD_DIR)\main.bin $(BUILD_DIR)\main_floppy.img
	fsutil file createnew $(BUILD_DIR)\main_floppy.img 1474560

$(BUILD_DIR)/main.bin: $(SRC_DIR)/main.asm
	mkdir $(BUILD_DIR)
	$(ASM) $(SRC_DIR)/main.asm -f bin -o $(BUILD_DIR)/main.bin
				
