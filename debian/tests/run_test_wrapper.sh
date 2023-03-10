#!/bin/sh

HEADERPKG=linux-headers-"$(dpkg-architecture -qDEB_HOST_ARCH)"
KERNEL_VER=$(dpkg-query -f='${Depends}' -W "$HEADERPKG" |cut -d" " -f1|sed 's/linux-headers-//')

export KERNEL_VER
bash ./run_test.sh
