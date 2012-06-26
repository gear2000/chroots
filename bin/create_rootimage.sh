#!/bin/bash

if [ $# -eq 2 ]; then
        name="$2"
        directory="$1"
else
        echo "The usage is: script.sh name directory"
        exit 1
fi

echo "Create cpio root system in ${directory} for ${name}"


cd $name

#find . | cpio --quiet -o -H newc | gzip -9 > ${directory}/${name}.cpio.gz
find . | cpio --quiet -o -H newc | gzip -9 > ${directory}/vnfs.cpio.gz

cd -
