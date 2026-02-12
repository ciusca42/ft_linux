# /bin/sh

sudo parted $DISK_PATH --script \
    mklabel msdos \
    mkpart primary ext4 1MiB 19GiB \
    mkpart primary linux-swap 19GiB 21GiB
