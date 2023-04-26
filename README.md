# NuttX Project Base

It is usable to fork this repository to implement NuttX to your new projects.

## Requirements

- ```gcc-arm-none-eabi```
- ```kconfig-frontends```

## Build

```
$ ./build.sh
```

## Implementation

### Step 1: Implement board definition

All of board definitions are in ```nuttx/boards```.

You need to add your board if it doesn't exist.

### Step 2: Implement application-specific config

You need to add application-specific config to ```nuttx/boards/{ARCH}/{SERIES}/{BOARD}/configs/{YOUR_APP_NAME}/defconfig```.

Please refer other sample defconfigs.

### Step 3: Implement board-specific codes for your application

In many cases, you need to implement board specific codes for your application to devide from application.

**Do not call board specific functions(ex: ```some_chip_gpio_write()```, ```some_chip_adc_read()```) in your application code directry!**

### Step 4: Implement application

You can add your application to ```apps```.

You need to specify your application function as ```CONFIG_INIT_ENTRYPOINT``` in your defconfig to run it with startup.

### Step 5: Specify your board name and config name in ```build.sh```

By default, ```build.sh``` builds for ```nucleo-f4x1re``` with ```f401-nsh``` defconfig.
