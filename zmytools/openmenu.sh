#/sbin/sh
ARCH=arm CROSS_COMPILE=/home/paul/android/source/aosp/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/arm-eabi- make mrproper
cp fuji_hikari_row_defconfig .config
ARCH=arm CROSS_COMPILE=/home/paul/android/source/aosp/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/arm-eabi- make menuconfig
