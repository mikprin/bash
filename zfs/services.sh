#!/bin/bash


# Enable zfs mount on start
sudo systemctl enable --now zfs-import-cache.service       
sudo systemctl enable --now zfs-import-scan.service
sudo systemctl enable --now zfs-mount.service
sudo systemctl enable --now zfs-share.service


# Enable pereodic scrub:
sudo systemctl enable zfs-scrub-weekly@rpool.timer --now