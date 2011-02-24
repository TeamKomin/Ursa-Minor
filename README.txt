HOW TO BUILD KERNEL 2.6.32 FOR GT-I9010

1. Visit http://www.codesourcery.com/, download and install Sourcery G++ Lite 2010.09 toolchain for ARM EABI.

2. Extract kernel source and move into the top directory.

3. Execute 'make aries_captivate_defconfig'.

4. Execute 'make'.

5. If the kernel is built successfully, you will find following files from the top directory:
	arch/arm/boot/zImage
	net/netfilter/xt_TCPMSS.ko
	drivers/onedram_svn/modemctl/modemctl.ko
	drivers/onedram_svn/onedram/onedram.ko
	drivers/onedram_svn/svnet/svnet.ko
	drivers/bluetooth/bthid/bthid.ko
	drivers/net/wireless/bcm4329/dhd.ko
	drivers/scsi/scsi_wait_scan.ko
	drivers/samsung/vibetonz/vibrator.ko
