# /usr/bin/sh

useradd  -g users -G sudo -p $(perl -e'print crypt("$LINUX_PWD", "aa")') -r -s /bin/bash -m $LINUX_USER
su linux