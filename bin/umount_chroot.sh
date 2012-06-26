#!/bin/bash

if [ $# -eq 1 ]; then
        name="$1"
else
        echo "The usage is: script.sh name"
        exit 1
fi

sudo umount ./${name}/dev
sudo umount ./${name}/proc
sudo umount ./${name}/sys
#sudo cp /etc/resolv.conf ./${name}/etc/resolv.conf
#sudo chroot /mnt/${name} su
