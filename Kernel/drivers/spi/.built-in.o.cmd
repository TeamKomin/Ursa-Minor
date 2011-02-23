cmd_drivers/spi/built-in.o :=  /opt/toolchains/arm-2010.09/bin/arm-none-eabi-ld -EL    -r -o drivers/spi/built-in.o drivers/spi/spi.o drivers/spi/spi_bitbang.o drivers/spi/spi_gpio.o 
