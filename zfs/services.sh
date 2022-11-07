#!/bin/bash


# Enable zfs mount on start
sudo systemctl start zfs-import-cache.service          
sudo systemctl start zfs-import-scan.service
sudo systemctl start zfs-mount.service
sudo systemctl start zfs-share.service

# Enable pereodic scrub:
zfs-scrub-weekly@rpool.timer