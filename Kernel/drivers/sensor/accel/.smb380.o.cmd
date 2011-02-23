cmd_drivers/sensor/accel/smb380.o := /opt/toolchains/arm-2010.09/bin/arm-none-eabi-gcc -Wp,-MD,drivers/sensor/accel/.smb380.o.d  -nostdinc -isystem /opt/toolchains/arm-2010.09/bin/../lib/gcc/arm-none-eabi/4.5.1/include -Dlinux -Iinclude  -I/media/Dev/source/Ursa-Minor/Kernel/arch/arm/include -include include/linux/autoconf.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-s5pv210/include -Iarch/arm/plat-s5p/include -Iarch/arm/plat-samsung/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -Os -marm -fno-omit-frame-pointer -mapcs -mno-sched-prolog -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -Wframe-larger-than=1024 -fno-stack-protector -fno-omit-frame-pointer -fno-optimize-sibling-calls -g -pg -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fno-dwarf2-cfi-asm -fconserve-stack   -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(smb380)"  -D"KBUILD_MODNAME=KBUILD_STR(smb380)"  -c -o drivers/sensor/accel/smb380.o drivers/sensor/accel/smb380.c

deps_drivers/sensor/accel/smb380.o := \
  drivers/sensor/accel/smb380.c \
  drivers/sensor/accel/smb380.h \

drivers/sensor/accel/smb380.o: $(deps_drivers/sensor/accel/smb380.o)

$(deps_drivers/sensor/accel/smb380.o):
