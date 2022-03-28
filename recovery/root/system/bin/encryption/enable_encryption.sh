#!/bin/sh

echo "Enabling force-encrypt"
blockdev --setrw /dev/block/mapper/vendor
mount -t ext4 -o rw /dev/block/mapper/vendor /mnt/vendor
cp /system/bin/encryption/fstab.default.encrypt /mnt/vendor/etc/fstab.default
cp /system/bin/encryption/fstab.emmc.encrypt /mnt/vendor/etc/fstab.emmc
umount /mnt/vendor
echo "Done!  Now format data and reboot to ROM."
