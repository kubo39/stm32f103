# stm32f103nucleo

## Requirements

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
$ make step-run # other terminal
```
