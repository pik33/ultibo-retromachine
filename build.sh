#!/bin/bash
set -x

if [[ "$APPVEYOR" != "True" ]]
then
    set appveyor=echo
fi

date

appveyor AddMessage "compiling ultibo-retromachine"
/c/Ultibo/Core/fpc/3.1.1/bin/i386-win32/fpc \
 -B \
 -Tultibo \
 -Parm \
 -CpARMV7A \
 -WpRPI3B \
 @/c/Ultibo/Core/fpc/3.1.1/bin/i386-win32/RPI3.CFG \
 -O2 \
 Project1.pas

date
