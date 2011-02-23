cmd_arch/arm/boot/Image := /opt/toolchains/arm-2010.09/bin/arm-none-eabi-objcopy -O binary -R .note -R .note.gnu.build-id -R .comment -S  vmlinux arch/arm/boot/Image
