#!/bin/bash
cd ../
ARCH=arm CROSS_COMPILE=/home/paul/android/source/aosp/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/arm-eabi- make -j12
rm -rf zmymodules
mkdir zmymodules
cp arch/arm/boot/zImage zmymodules/zImage
cp arch/arm/mach-msm/dal_remotetest.ko zmymodules/dal_remotetest.ko
cp arch/arm/mach-msm/dma_test.ko zmymodules/dma_test.ko
cp arch/arm/mach-msm/msm-buspm-dev.ko zmymodules/msm-buspm-dev.ko
cp block/test-iosched.ko zmymodules/test-iosched.ko
cp crypto/ansi_cprng.ko zmymodules/ansi_cprng.ko
cp drivers/crypto/msm/qce.ko zmymodules/qce.ko
cp drivers/crypto/msm/qcedev.ko zmymodules/qcedev.ko
cp drivers/crypto/msm/qcrypto.ko zmymodules/qcrypto.ko
cp drivers/hid/hid-logitech-dj.ko zmymodules/hid-logitech-dj.ko
cp drivers/input/evbug.ko zmymodules/evbug.ko
cp drivers/media/video/gspca/gspca_main.ko zmymodules/gspca_main.ko
cp drivers/mmc/card/mmc_block_test.ko zmymodules/mmc_block_test.ko
cp net/sched/sch_dsmark.ko zmymodules/sch_dsmark.ko
cp drivers/video/backlight/lcd.ko zmymodules/lcd.ko
cp drivers/scsi/scsi_wait_scan.ko zmymodules/scsi_wait_scan.ko
cp drivers/mmc/card/mmc_test.ko zmymodules/mmc_test.ko
cp net/sched/cls_flow.ko zmymodules/cls_flow.ko
read && exit 
