HOW TO BUILD KERNEL 2.6.32 FOR GT-I9010

1. Visit http://www.codesourcery.com/, download and install Sourcery G++ Lite 2009q3-68 or 2010.09-51 toolchain for ARM EABI.

2. git clone kernel source the top directory. i.e. your home dir

3. Change .../Kernel/arch/arm/configs/ga3_eur_defconfig to point to the 9010initramfs/full-uncompressed dir
    where you put the code from above

5. If you're building for Captivate, execute 'make aries_captivate_defconfig'. If you're building for the Galaxy S, execute 'make aries_galaxys_defconfig'.

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
