cmd_drivers/tfsr/PAM/Poseidon/FSR_PAM_asm.o := /opt/toolchains/arm-2010.09/bin/arm-none-eabi-gcc -Wp,-MD,drivers/tfsr/PAM/Poseidon/.FSR_PAM_asm.o.d  -nostdinc -isystem /opt/toolchains/arm-2010.09/bin/../lib/gcc/arm-none-eabi/4.5.1/include -Dlinux -Iinclude  -I/media/Dev/source/Ursa-Minor/Kernel/arch/arm/include -include include/linux/autoconf.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-s5pv210/include -Iarch/arm/plat-s5p/include -Iarch/arm/plat-samsung/include -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables  -D__LINUX_ARM_ARCH__=7 -march=armv7-a  -include asm/unified.h -msoft-float -gdwarf-2        -c -o drivers/tfsr/PAM/Poseidon/FSR_PAM_asm.o drivers/tfsr/PAM/Poseidon/FSR_PAM_asm.S

deps_drivers/tfsr/PAM/Poseidon/FSR_PAM_asm.o := \
  drivers/tfsr/PAM/Poseidon/FSR_PAM_asm.S \
  /media/Dev/source/Ursa-Minor/Kernel/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \

drivers/tfsr/PAM/Poseidon/FSR_PAM_asm.o: $(deps_drivers/tfsr/PAM/Poseidon/FSR_PAM_asm.o)

$(deps_drivers/tfsr/PAM/Poseidon/FSR_PAM_asm.o):
