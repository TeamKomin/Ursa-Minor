#/bin/bash

START=$(date +%s)

DEVICE="$1"
cfg=

case "$DEVICE" in
	clean)
		make clean
		exit
		;;
	mrproper)
		make mrproper
		exit
		;;
	distclean)
		make distclean
		exit
		;;
	captivate)
		cfg=ga3_eur_defconfig
		;;
	noconfig)
		#don't redo config
		;;
#	galaxys)
#		cfg=aries_galaxys_defconfig
#		;;
#	galaxysb)
#		cfg=aries_galaxysb_defconfig
#		;;
#	vibrant)
#		cfg=aries_vibrant_defconfig
#		;;
	*)
		echo "Usage: $0 DEVICE"
		echo "Example: ./build.sh galaxys"
		echo "Supported Devices: captivate, galaxys, galaxysb, vibrant"
		exit 2
		;;
esac

# Ensure basic initramfs structure is there
for i in /data /dev /proc /sys /system /voodoo/logs /voodoo/tmp /voodoo/tmp/mnt /voodoo/tmp/sdcard; do
	if [ ! -d ../9010initramfs/full-uncompressed$i ]; then
		mkdir ../9010initramfs/full-uncompressed$i
	fi
done

#export KBUILD_BUILD_VERSION="1.0.0"
if [ -n "$cfg" ]; then
	echo "Using config ${cfg}"

	make ${cfg}  || { echo "Failed to make config"; exit 1; }
fi

echo "Making Kernel Modules..."
make modules -j $(grep 'processor' /proc/cpuinfo | wc -l) || { echo "Failed to make kernel modules"; exit 1; }
echo "done."

echo -n "Copying Kernel Modules to initramfs..."
{
cp drivers/net/tun.ko ../9010initramfs/full-uncompressed/lib/modules/tun.ko
#cp drivers/net/wireless/bcm4329/bcm4329.ko ../../../device/samsung/$DEVICE/bcm4329.ko
cp fs/cifs/cifs.ko ../9010initramfs/full-uncompressed/lib/modules/cifs.ko
} || { echo "failed to copy kernel modules"; exit 1; }
echo "done."

echo "Making Kernel Image..."
make zImage -j $(grep 'processor' /proc/cpuinfo | wc -l) || { echo "Failed to make kernel image"; exit 1; }
echo "done."

echo -n "copying zImage to flash dir"
{
rm -f ../ursaminorflash/updates/zImage
cp arch/arm/boot/zImage ../ursaminorflash/updates/zImage
} || { echo "failed to copy zImage"; exit 1; }
echo " done"

echo -n "creating flash zip"
{
rm -f ../ursaminorflash.zip
cd ../ursaminorflash/
zip -r ../ursaminorflash *
} || { echo "failed to create zip"; exit 1; }

cd ..
echo "kernel version is $(cat Kernel/.version)" 

#echo -n "copying zip to the phone "
#{
#cd ..
#echo "kernel version is $(cat Kernel/.version)" 
#adb push ursaminorflash.zip /sdcard/sgs-kernel-flasher/ursaminorflash.zip
#} || { echo "failed to copy zip to phone"; }

END=$(date +%s)
ELAPSED=$((END - START))
E_MIN=$((ELAPSED / 60))
E_SEC=$((ELAPSED - E_MIN * 60))
printf "Elapsed: "
[ $E_MIN != 0 ] && printf "%d min(s) " $E_MIN
printf "%d sec(s)\n" $E_SEC
