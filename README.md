# This guide how to flash any rom using termux

## Requirements
1) Two Android device (Host & Target)
2) USB Otg & Data cable
3) Internet Connection

### First step
- you should install the required utils
1. [termux](https://f-droid.org/id/packages/com.termux/)
2. [termux-api](https://f-droid.org/packages/com.termux.api/)

### Second step
- install termux and termux api
- if u can't install termux api, maybe u should disable Google play store protect
- search on ur google how to disable that.

### Last step
- install required package on termux
- include: fastboot and adb
- use this command

```console
curl -LSs https://raw.githubusercontent.com/kylieeXD/onyx/refs/heads/main/setup.sh | bash 
```

## Usage
- after done with all this step, u can use the tool for flash rom fastboot/recovery
- this some guide that maybe can help you

## Some Instructions
1) flash fastboot rom
    - u should download the fastboot rom first
    - extract the rom & go to the directory
    - example: use this command if your rom named "miui14" and in the Download directory
 ```console
cd /sdcard/Download/miui14/
bash flash_all.sh
```
    - NOTE: not all fastboot rom that have the flashable file to flashing rom
    - miui/hyperos stock rom have 3 list files:
```
flash_all.sh (flash, format data)
flash_all_lock.sh (flash, format data, and lock bootloader)
flash_all_except_storage.sh (flash without format data)
```

2) flash specific partition
    - u can flash specific partition with following the file name
    - example: boot.img, flash using
```console
fastboot flash boot /path/to/boot.img
```

3) lock bootloader
    - this is the last thing that i know, when you feel nothing about custom rom
    - u can go back and lock your phone bootloader with termux.
    - note: you should have stock firmware (really stock)
    - not using any custom kernel, custom recovery, no root, or anything about system modified file
    - because, i your  firmware is not stock, the bootloader will check it, and your phone getting brick
    - the phone show "the system has been destroyed" (in Xiaomi phone)
    - this how to lock bootloader
```console
fastboot oem lock
```

4) Sideload recovery rom
    - this how to flash any custom rom using ofox or twrp or custom recovery
    - download the recovery (make sure they have *.zip extension)
    - example: if your file named ```rom.zip``` and locate in Download directory use this command
```console
adb sideload /sdcard/Download/rom.zip
```
