#!/bin/bash
cd ../
ARCH=arm CROSS_COMPILE=/home/paul/android/gcc/linaro/arm-cortex_a9-linux-gnueabihf-linaro_4.7.4-2014.06/bin/arm-cortex_a9-linux-gnueabihf- make mrproper
#cp arch/arm/configs/fuji_hikari_defconfig .config
#cp arch/arm/configs/fuji_aoba_defconfig .config
#ARCH=arm CROSS_COMPILE=/home/paul/android/gcc/linaro/arm-cortex_a9-linux-gnueabihf-linaro_4.7.4-2014.06/bin/arm-cortex_a9-linux-gnueabihf- make menuconfig
