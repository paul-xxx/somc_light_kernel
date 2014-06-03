#!/bin/bash
echo "kernel.elf Maker..."
echo
echo "Cleanup..."
echo
rm kernel.elf
echo "Making new kernel.elf..."
echo
python kernel/mkelf.py -o kernel.elf boot/zImage@0x40208000 kernel/ramdisk.cpio.gz@0x41500000,ramdisk kernel/RPM.bin@0x20000,rpm
echo "The kernel.elf done..."
echo
echo "Flashing kernel.elf now..."
echo
fastboot -i 0x0fce flash boot kernel.elf
sleep 2
fastboot reboot
echo "Flashing kernel.elf done..."
echo
echo "Done! Press ENTER for exit..."
read && exit
