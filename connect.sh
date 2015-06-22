#!/bin/sh
echo "first stage"
set -x
if [ "$USER" = "shell" ]
then
    su -c $0
    exit
fi

cd /storage/extSdCard/
mount -t ext2 -o loop debian.img mnt
cd mnt
chroot . bin/bash
