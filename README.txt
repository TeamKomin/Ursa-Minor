HOW TO BUILD KERNEL 2.6.32 FOR GT-I9010

1. Visit http://www.codesourcery.com/, download and install Sourcery G++ Lite 2009q3-68 or 2010.09-51 toolchain for ARM EABI.

2. Extract kernel source and move into the top directory.

3. Extract UrsaMinor_initramfs.tar.gz onto your drive outside of the Kernel dir

4. Change .../Kernel/arch/arm/configs/ga3_eur_defconfig to point to where you extracted initramfs above

5. Execute 'make ga3_eur_defconfig'.

6. Execute 'make' or 'make -j<n>' where '<n>' is the number of multiple jobs to be invoked simultaneously.

7. If the kernel is built successfully, you will find following files from the top directory:
	arch/arm/boot/zImage
	net/netfilter/xt_TCPMSS.ko
	drivers/onedram_svn/modemctl/modemctl.ko
	drivers/onedram_svn/onedram/onedram.ko
	drivers/onedram_svn/svnet/svnet.ko
	drivers/bluetooth/bthid/bthid.ko
	drivers/net/wireless/bcm4329/dhd.ko
	drivers/scsi/scsi_wait_scan.ko
	drivers/samsung/vibetonz/vibrator.ko
