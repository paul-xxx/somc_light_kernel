#!/bin/bash
echo "kernel.elf Maker..."
echo
echo "Cleanup..."
echo
rm kernel.elf
rm zImage
echo "Packing new kernel.elf..."
cp ../zkustmodules/zImage zImage
python mkelf.py -o kernel.elf zImage@0x40208000 ramdisk.cpio.gz@0x41500000,ramdisk RPM.bin@0x20000,rpm
echo
echo "The kernel.elf done..."
echo
echo "Flashing kernel.elf now..."
fastboot -i 0x0fce flash boot kernel.elf
sleep 2
fastboot reboot
echo
echo "Flashing kernel.elf done..."
echo
echo "Done! Press ENTER for exit..."
read && exit
