cmd_arch/arm/plat-s5p/sleep.o := /opt/toolchains/arm-2010.09/bin/arm-none-eabi-gcc -Wp,-MD,arch/arm/plat-s5p/.sleep.o.d  -nostdinc -isystem /opt/toolchains/arm-2010.09/bin/../lib/gcc/arm-none-eabi/4.5.1/include -Dlinux -Iinclude  -I/media/Dev/source/Ursa-Minor/Kernel/arch/arm/include -include include/linux/autoconf.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-s5pv210/include -Iarch/arm/plat-s5p/include -Iarch/arm/plat-samsung/include -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables  -D__LINUX_ARM_ARCH__=7 -march=armv7-a  -include asm/unified.h -msoft-float -gdwarf-2       -c -o arch/arm/plat-s5p/sleep.o arch/arm/plat-s5p/sleep.S

deps_arch/arm/plat-s5p/sleep.o := \
  arch/arm/plat-s5p/sleep.S \
    $(wildcard include/config/debug/resume.h) \
  /media/Dev/source/Ursa-Minor/Kernel/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  include/linux/linkage.h \
  include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  /media/Dev/source/Ursa-Minor/Kernel/arch/arm/include/asm/linkage.h \
  /media/Dev/source/Ursa-Minor/Kernel/arch/arm/include/asm/assembler.h \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/smp.h) \
  /media/Dev/source/Ursa-Minor/Kernel/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
    $(wildcard include/config/arm/thumb.h) \
  /media/Dev/source/Ursa-Minor/Kernel/arch/arm/include/asm/hwcap.h \
  arch/arm/mach-s5pv210/include/mach/hardware.h \
  arch/arm/mach-s5pv210/include/mach/map.h \
    $(wildcard include/config/mach/smdkc110.h) \
    $(wildcard include/config/mach/s5pc110/aries.h) \
    $(wildcard include/config/mach/s5pc110/p1.h) \
    $(wildcard include/config/mach/aries.h) \
  arch/arm/plat-samsung/include/plat/map-base.h \
  arch/arm/plat-s5p/include/plat/map-s5p.h \
  arch/arm/mach-s5pv210/include/mach/map-aries.h \
  include/asm/asm-offsets.h \
  /media/Dev/source/Ursa-Minor/Kernel/arch/arm/include/asm/memory.h \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/discontigmem.h) \
  include/linux/const.h \
  arch/arm/mach-s5pv210/include/mach/memory.h \
  /media/Dev/source/Ursa-Minor/Kernel/arch/arm/include/asm/sizes.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  /media/Dev/source/Ursa-Minor/Kernel/arch/arm/include/asm/system.h \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/32v6k.h) \
  arch/arm/mach-s5pv210/include/mach/regs-gpio.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-a0.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-a1.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-b.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-c0.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-c1.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-d0.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-d1.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-e0.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-e1.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-f0.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-f1.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-f2.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-f3.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-g0.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-g1.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-g2.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-g3.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-h0.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-h1.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-h2.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-h3.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-i.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-j0.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-j1.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-j2.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-j3.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-j4.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp01.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp02.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp03.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp04.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp05.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp06.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp07.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp10.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp11.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp12.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp13.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp14.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp15.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp16.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp17.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp18.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp20.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp21.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp22.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp23.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp24.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp25.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp26.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp27.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-mp28.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-gpioint.h \
  arch/arm/mach-s5pv210/include/mach/gpio-bank-eint.h \
  arch/arm/mach-s5pv210/include/mach/regs-clock.h \
    $(wildcard include/config/cpu/s5pv210/evt1.h) \
  arch/arm/mach-s5pv210/include/mach/regs-mem.h \
  arch/arm/plat-samsung/include/plat/regs-serial.h \
    $(wildcard include/config/cpu/s5pv210.h) \

arch/arm/plat-s5p/sleep.o: $(deps_arch/arm/plat-s5p/sleep.o)

$(deps_arch/arm/plat-s5p/sleep.o):
