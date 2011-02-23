cmd_init/built-in.o :=  /opt/toolchains/arm-2010.09/bin/arm-none-eabi-ld -EL    -r -o init/built-in.o init/main.o init/version.o init/mounts.o init/initramfs.o init/calibrate.o 
