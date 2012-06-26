#!/bin/bash

if [ $# -eq 1 ]; then
        name="$1"
else
        echo "The usage is: script.sh name"
        exit 1
fi

sudo mount --bind /dev ./${name}/dev
sudo mount --bind /proc ./${name}/proc
sudo mount --bind /sys ./${name}/sys
#sudo cp /etc/resolv.conf ./${name}/etc/resolv.conf
#sudo chroot /mnt/${name} su
