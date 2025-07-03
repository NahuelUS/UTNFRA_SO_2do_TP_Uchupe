git clone https://github.com/URL-del-repo.git
git clone https://github.com/utn-so-ansible/vagrantfiles.git
exit
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
history -a
sudo apt update
sudo apt install wget gpg
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
ansible --version
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
sudo apt install docker-ce -y
docker --version
sudo usermod -aG docker $USER
exit
docker ps
cd ~
mkdir "RTA_Examen_$(date +%Y%m%d)"
cd RTA_Examen_20250703
touch Punto_A.sh Punto_B.sh Punto_C.sh Punto_D.sh
ls
chmod +x Punto_*.sh
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
cd UTN-FRA_SO_Examenes/202406/
./script_Precondicion.sh
source  ~/.bashrc  && history -a
lsblk
sudo pvcreate /dev/sdb
sudo pvcreate /dev/sdc
sudo vgcreate vg_datos /dev/sdb /dev/sdc
sudo vgcreate vg_temp /dev/sdc
lsblk
fallocate -l 2G /home/vagrant/disk_datos.img
sudo losetup -fP /home/vagrant/disk_datos.img
losetup -a
sudo losetup -fP /home/vagrant/disk_datos.img
losetup -a
sudo pvcreate /dev/loop8
sudo vgcreate vg_datos /dev/loop8
sudo vgscan
sudo pvscan
sudo pvs
sudo vgremove lvm2
sudo losetup -d /dev/loop8
rm /home/vagrant/disk_datos.img
fallocate -l 2G /home/vagrant/disk_datos.img
sudo losetup -fP /home/vagrant/disk_datos.img
losetup -a
sudo pvcreate /dev/loop5
sudo vgcreate vg_datos /dev/loop5
sudo vgdisplay
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvs
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkdir /mnt/lv_docker
sudo mkdir /mnt/lv_workareas
sudo mount /dev/vg_datos/lv_docker /mnt/lv_docker
sudo mount /dev/vg_datos/lv_workareas /mnt/lv_workareas
lsblk
df -h
sudo mkdir -p /var/lib/docker
sudo mkdir -p /work
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_workareas /work
df -h
sudo nano /etc/fstab
cat /etc/fstab
sudo nano /etc/fstab
df -h
sudo umount /mnt/lv_docker
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
df -h
vim puntoA.sh
vim punto_A.sh
ls *.sh
cd ./UTN-FRA_SO_Examenes/202406/
ls *.sh
cd ~
ls -l
cd RTA_Examen_20250703
ls
vim Punto_A-sh
ls
vim Punto_A-sh
ls
vim Punto_A.sh
git init
git remote add origin https://github.com/NahuelUS/UTNFRA_SO_2do_TP_Uchupe.git
git add Punto_A.sh
git commit -m "Agrego punto A del TP"
git push -u origin main
git branch -M main
git init
git remote add origin https://github.com/NahuelUS/UTNFRA_SO_2do_TP_Uchupe.git
git add Punto_A.sh
git commit -m "Agrego punto A del TP"
git push -u origin main
git config --global user.name "NahuelUS"
git config --global user.email "nahuel,uchu@gmail.com"
git add Punto_A.sh
git commit -m "Agrego punto A del TP"
git branch -M main
git push -u origin main
git remote add origin https://github.com/NahuelUS/UTNFRA_SO_2do_TP_Uchupe.git
git remote set-url origin git@github.com:NahuelUS/UTNFRA_SO_2do_TP_Uchupe.git
git push origin main
git remote add origin https://github.com/NahuelUS/UTNFRA_SO_2do_TP_Uchupe.git
git init
.git
mkdir .git
ls
ls -l
delete .git
rm -rf .git
git init
git remote add origin https://github.com/NahuelUS/UTNFRA_SO_2do_TP_Uchupe.git
git add Punto_A.sh
git commit -m "Agrego punto A"
git push -u origin main
git push
git branch -M main
git config user.name "NahuelUS"
git config user.email "nahuel.uchu@gmail.com"
git remote add origin https://github.com/NahuelUS/UTNFRA_SO_2do_TP_Uchupe.git
git add Punto_A.sh
git commit -m "Agrego punto A"
git status
git push -u origin main
ls
rm -rf .git
git init
git status
git branch -M main
git config user.name "NahuelUS"
git config user.email "nahuel.uchu@gmail.com"
git remote add origin https://github.com/NahuelUS/UTNFRA_SO_2do_TP_Uchupe.git
git add Punto_A.sh
git commit -m "Agrego punto A"
git push -u origin main
vim AltaUser-Groups.sh
chmod +x AltaUser-Groups.sh
vim Punto_B.sh
git add AltaUser-Groups.sh
git commit -m "Agrego script ejecutable Punto B"
git push
git add AltaUser-Groups.sh
git commit -m "Agrego script ejecutable Punto B"
git push
git add Punto_B.sh
git commit -m "Agrego comandos del punto B"
git push
mkdir -p ~/UTN-FRA_SO_Examenes/202406/docker
cd ~/UTN-FRA_SO_Examenes/202406/docker
vim index.html
vim Dockerfile
docker login
vim Dockerfile
docker build -t nahuelus/web1-uchupe .
ls -l
ls
docker builder prune
docker build -t nahuelus/web1-uchupe .
sudo systemctl stop docker
sudo rm -rf /var/lib/docker/overlay2
sudo systemctl start docker
docker info
docker build -t nahuelus/web1-uchupe .
df -h
sudo docker system prune -a -f
docker build -t nahuelus/web1-uchupe .
vgs
sudo vgs
df -h | grep work
sudo umount /work
sudo e2fsck -f /dev/vg_datos/lv_workareas
sudo resize2fs /dev/vg_datos/lv_workareas 500M
sudo lvreduce -L 500M /dev/vg_datos/lv_workareas
sudo lvextend -L +500M /dev/vg_datos/lv_docker
sudo resize2fs /dev/vg_datos/lv_docker
docker build -t nahuelus/web1-uchupe .
docker push nahuelus/web1-uchupe
vim run.sh
chmod +x run.sh
cd ~/UTN-FRA_SO_Examenes/RTA_Examen_20250703
cd ~/RTA_Examen_20250703
git add ../UTN-FRA_SO_Examenes/202406/docker/index.html ../UTN-FRA_SO_Examenes/202406/docker/Dockerfile ../UTN-FRA_SO_Examenes/202406/docker/run.sh Punto_C.sh
git commit -m "Agrego archivos del punto C (Docker)"
vim Punto_C.sh
git status
chmod +x Punto_C.sh
git add ../UTN-FRA_SO_Examenes/202406/docker/index.html ../UTN-FRA_SO_Examenes/202406/docker/Dockerfile ../UTN-FRA_SO_Examenes/202406/docker/run.sh Punto_C.sh
git commit -m "Agrego archivos del punto C (Docker)"
cp ../UTN-FRA_SO_Examenes/202406/docker/index.html .
cp ../UTN-FRA_SO_Examenes/202406/docker/Dockerfile .
cp ../UTN-FRA_SO_Examenes/202406/docker/run.sh .
git add index.html Dockerfile run.sh Punto_C.sh
git commit -m "Agrego archivos del punto C (Docker)"
git push
mv ~/RTA_Examen_20250703 ~/UTN-FRA_SO_Examenes/
cd ~/UTN-FRA_SO_Examenes/RTA_Examen_20250703
git status
.cd
cd ../202406
mkdir -p ansible/roles/generar_info/{tasks,templates}
cd ansible
cd roles/generar_info/tasks
vim main.yml
cd ../templates
vim datos_alumno.j2
vim datos_equipo.j2
cd.
cd ~/RTA_Examen_20250703
cd ~/UTN-FRA_SO_Examenes/RTA_Examen_20250703
vim Punto_D.sh
git add Punto_D.sh
git commit -m "Subiendo el Punto D"
git push
