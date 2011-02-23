cmd_ipc/built-in.o :=  /opt/toolchains/arm-2010.09/bin/arm-none-eabi-ld -EL    -r -o ipc/built-in.o ipc/util.o ipc/msgutil.o ipc/msg.o ipc/sem.o ipc/shm.o ipc/ipcns_notifier.o ipc/ipc_sysctl.o 
