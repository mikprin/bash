
NCS_DIR=/mnt/ncs # Выбираю место куда смонтируется сервер
sudo mkdir -p $NCS_DIR # Создаю эту папку (если ее нет)
sudo chmod 777 $NCS_DIR # Делаю ее общей
sshfs -o IdentityFile=~/.ssh/id_rsa solovyanov_m@ncs-design.mipt.ru:/home/solovyanov_m $NCS_DIR # Монтирую
#sudo chmod 777 $NCS_DIR
