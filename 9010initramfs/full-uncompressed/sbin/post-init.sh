#!/sbin/busybox sh
# filesystem patcher
# Copyright SztupY, Licence: GPLv3
# Modified by HardCORE and mxracer

export PATH=/sbin:/system/bin:/system/xbin
mv /data/user.log /data/user.log.old
exec >>/data/user.log
exec 2>&1

# init read-only'd the rootfs
/sbin/busybox mount -o remount,rw /

# Android Logger enable tweak
if /sbin/busybox [ "`grep ANDROIDLOGGER /system/etc/tweaks.conf`" ]; then
  insmod /lib/modules/logger.ko
else
  rm /lib/modules/logger.ko
fi

# IPv6 privacy tweak
if /sbin/busybox [ "`grep IPV6PRIVACY /system/etc/tweaks.conf`" ]; then
  echo "2" > /proc/sys/net/ipv6/conf/all/use_tempaddr
fi

# run fs tweaks
if /sbin/busybox [ "`grep IOSCHED /system/etc/tweaks.conf`" ]; then
  # Tweak cfq io scheduler
  for i in $(ls -1 /sys/block/stl*) $(ls -1 /sys/block/mmc*) $(ls -1 /sys/block/bml*) $(ls -1 /sys/block/tfsr*)
  do echo "0" > $i/queue/rotational
    echo "1" > $i/queue/iosched/low_latency
	echo "2" > $i/queue/iosched/slice_idle
	#echo "8" > $i/queue/iosched/quantum
    echo "1" > $i/queue/iosched/back_seek_penalty
    echo "1000000000" > $i/queue/iosched/back_seek_max
  done
  # Remount all partitions with noatime
  for k in $(/sbin/busybox mount | grep relatime | cut -d " " -f3)
  do
        sync
        /sbin/busybox mount -o remount,noatime $k
  done
fi

# Tweak kernel VM management
if /sbin/busybox [ "`grep KERNELVM /system/etc/tweaks.conf`" ]; then
  echo "0" > /proc/sys/vm/swappiness
  #echo "10" > /proc/sys/vm/dirty_ratio
  #echo "1000" > /proc/sys/vm/vfs_cache_pressure
  #echo "4096" > /proc/sys/vm/min_free_kbytes
fi

# Tweak kernel scheduler
if /sbin/busybox [ "`grep KERNELSCHED /system/etc/tweaks.conf`" ]; then
  echo "18000000" > /proc/sys/kernel/sched_latency_ns;
  echo "1500000" > /proc/sys/kernel/sched_min_granularity_ns;
  echo "3000000" > /proc/sys/kernel/sched_wakeup_granularity_ns;
fi

# Miscellaneous tweaks
if /sbin/busybox [ "`grep MISC /system/etc/tweaks.conf`" ]; then
  echo "2000" > /proc/sys/vm/dirty_writeback_centisecs
  echo "1000" > /proc/sys/vm/dirty_expire_centisecs
fi

# Enable CIFS tweak
if /sbin/busybox [ "`grep CIFS /system/etc/tweaks.conf`" ]; then
  /sbin/busybox insmod /lib/modules/cifs.ko
else
  /sbin/busybox rm /lib/modules/cifs.ko
fi

# Enable TUN tweak
if /sbin/busybox [ "`grep TUN /system/etc/tweaks.conf`" ]; then
  /sbin/busybox insmod /lib/modules/tun.ko
else
  /sbin/busybox rm /lib/modules/tun.ko
fi

# we'll need mount to remount the rootfs ro
/sbin/busybox ln -s /sbin/recovery /res/mount

# self destruct :)
/sbin/busybox rm /sbin/busybox

echo $(date) Unloading and deleting unused modules...
# unload un-needed filesystem modules
if [ -z "`/res/mount | grep jfs`" ]; then
	rmmod jfs
	rm /lib/modules/jfs.ko
fi
if [ -z "`/res/mount | grep ext3`" ]; then
	rmmod ext3
	rmmod jbd
	rm /lib/modules/ext3.ko
	rm /lib/modules/jbd.ko
fi
if [ -z "`/res/mount | grep ext4`" ]; then
	rmmod ext4
	rmmod jbd2
	rm /lib/modules/ext4.ko
	rm /lib/modules/jbd2.ko
fi
#if [ -z "`/res/mount | grep ext2`" ]; then
#	rmmod ext2
#	rm /lib/modules/ext2.ko
#fi

echo $(date) Free up RAM by deleting files from initramfs...
rm /sbin/fsck.jfs /sbin/mkfs.jfs /sbin/mke2fs /sbin/tune2fs /sbin/e2fsck /sbin/realsu /sbin/fat.format
rm /sbin/fsck* /sbin/mkfs*

# rootfs and system should be closed for now
#/res/mount -o remount,ro /
#/res/mount -o remount,ro /system

