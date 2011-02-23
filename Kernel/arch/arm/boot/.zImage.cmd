cmd_arch/arm/boot/zImage := /opt/toolchains/arm-2010.09/bin/arm-none-eabi-objcopy -O binary -R .note -R .note.gnu.build-id -R .comment -S  arch/arm/boot/compressed/vmlinux arch/arm/boot/zImage
