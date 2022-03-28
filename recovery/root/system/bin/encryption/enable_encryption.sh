#!/bin/sh

blockdev --setrw /dev/block/mapper/vendor
mount -t ext4 -o rw /dev/block/mapper/vendor /mnt/vendor
cp /system/bin/encryption/fstab.default.encrypt /mnt/vendor/etc/fstab.default
cp /system/bin/encryption/fstab.emmc.encrypt /mnt/vendor/etc/fstab.emmc
umount /mnt/vendor
