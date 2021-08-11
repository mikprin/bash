[[ -d /mnt/server/home ]] || sshfs -p 2222 -o  IdentityFile=/home/miksolo/.ssh/id_rsa miksolo@192.168.1.12:/ /mnt/server
yay -Sc
tar -czf manjaro_pc_home.tar.gz -g /mnt/server/ diff.snar -v ~