#!/bin/sh
DoExitAsm ()
{ echo "An error occurred while assembling $1"; exit 1; }
DoExitLink ()
{ echo "An error occurred while linking $1"; exit 1; }
echo Assembling project1
/usr/bin/arm-none-eabi-as -march=armv7-a -mfpu=vfpv3 -o /home/pi/ultibo-retro/lib/arm-ultibo/Project1.o  /home/pi/ultibo-retro/lib/arm-ultibo/Project1.s
if [ $? != 0 ]; then DoExitAsm project1; fi
echo Linking Project1
OFS=$IFS
IFS="
"
/usr/bin/arm-none-eabi-ld -g     --gc-sections  -L. -o Project1.elf -T link.res
if [ $? != 0 ]; then DoExitLink Project1; fi
IFS=$OFS
echo Linking Project1
OFS=$IFS
IFS="
"
/usr/bin/arm-none-eabi-objcopy -O binary Project1.elf kernel7.img
if [ $? != 0 ]; then DoExitLink Project1; fi
IFS=$OFS
