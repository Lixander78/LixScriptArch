#!/bin/bash

    bash 0-preinstall.sh
    arch-chroot /mnt /root/LixScriptArch/1-setup.sh
    source /mnt/root/LixScriptArch/install.conf
    arch-chroot /mnt /usr/bin/runuser -u $username -- /home/$username/LixScriptArch/2-user.sh
    arch-chroot /mnt /root/LixScriptArch/3-post-setup.sh
