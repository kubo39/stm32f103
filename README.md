# stm32f103

## Rquirements

```console
$ sudo apt install -y gcc-arm-none-eabi gdb-arm-none-eabi openocd ldc
```

## Build it

```console
$ make
```

## Try it

```console
$ openocd -f interface/stlink-v2-1.cfg -f target/stm32f1x_stlink.cfg
```

```console
$ arm-none-eabi-gdb -q stm32f103.bin # other terminal
```
