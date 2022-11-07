#!/bin/bash

# Create pool named new-pool with 2 drives:
# sudo zpool create -f -m /pool new-pool mirror /dev/sda /dev/sdc

# Enable zfs mount on start
sudo systemctl enable --now zfs-import-cache.service       
sudo systemctl enable --now zfs-import-scan.service
sudo systemctl enable --now zfs-mount.service
sudo systemctl enable --now zfs-share.service


# Enable pereodic scrub:
sudo systemctl enable zfs-scrub-weekly@rpool.timer --no