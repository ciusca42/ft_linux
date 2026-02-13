#! /bin/bash


# source ../env.sh

# todo create: create a warning for the disk path

echo disk path:
echo $DISK_PATH
echo
# echo end dis

parted $DISK_PATH --script \
    mklabel msdos \
    mkpart primary ext4 1MiB 30GiB \
    mkpart primary linux-swap 30GiB 32GiB

echo -e "y\n" | mkfs.ext4 "$DISK_PATH"1
swapon "$DISK_PATH"2

lsblk

echo -e "\nSuccesfully creted disk partition\n"


