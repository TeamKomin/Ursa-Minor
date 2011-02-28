cmd_drivers/media/video/samsung/mfc50/mfc_fw.o := /home/mxracer/CodeSourcery/Sourcery_G++_Lite/bin/arm-none-eabi-gcc -Wp,-MD,drivers/media/video/samsung/mfc50/.mfc_fw.o.d  -nostdinc -isystem /home/mxracer/CodeSourcery/Sourcery_G++_Lite/bin/../lib/gcc/arm-none-eabi/4.5.1/include -Dlinux -Iinclude  -I/home/mxracer/Ursa-Minor/Kernel/arch/arm/include -include include/linux/autoconf.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-s5pv210/include -Iarch/arm/plat-s5p/include -Iarch/arm/plat-samsung/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -marm -fno-omit-frame-pointer -mapcs -mno-sched-prolog -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -Wframe-larger-than=1024 -fno-stack-protector -fno-omit-frame-pointer -fno-optimize-sibling-calls -pg -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fno-dwarf2-cfi-asm -fconserve-stack   -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(mfc_fw)"  -D"KBUILD_MODNAME=KBUILD_STR(mfc_fw)"  -c -o drivers/media/video/samsung/mfc50/mfc_fw.o drivers/media/video/samsung/mfc50/mfc_fw.c

deps_drivers/media/video/samsung/mfc50/mfc_fw.o := \
  drivers/media/video/samsung/mfc50/mfc_fw.c \

drivers/media/video/samsung/mfc50/mfc_fw.o: $(deps_drivers/media/video/samsung/mfc50/mfc_fw.o)

$(deps_drivers/media/video/samsung/mfc50/mfc_fw.o):
