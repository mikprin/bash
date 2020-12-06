
NCS_DIR=/mnt/ncs
sudo mkdir -p $NCS_DIR
sudo chmod 777 $NCS_DIR
sudo sshfs -o allow_other,default_permissions,IdentityFile=~/.ssh/id_rsa solovyanov_m@ncs-design.mipt.ru:/home/solovyanov_m $NCS_DIR
sudo chmod 777 $NCS_DIR
