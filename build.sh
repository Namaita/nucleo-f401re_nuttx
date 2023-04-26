#!/bin/sh

BOARD="nucleo-f4x1re"
CONFIG="f401-nsh"

cd nuttx || exit 1
./tools/configure.sh "$BOARD"/"$CONFIG"
make -j "$(nproc)"
cd .. || exit 1

if [ -f nuttx/nuttx.bin ]; then
    cp nuttx/nuttx.bin "$BOARD"_"$CONFIG".bin
fi
