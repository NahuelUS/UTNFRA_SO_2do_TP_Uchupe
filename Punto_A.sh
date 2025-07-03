#!/bin/bash

# Crear el volumen lógico para Docker
sudo lvcreate -n lv_docker -L 5M vg_datos

# Crear el volumen lógico para Workareas
sudo lvcreate -n lv_workareas -L 1.5G vg_datos

# Crear el volumen lógico para Swap
sudo lvcreate -n lv_swap -L 512M vg_temp

# Formatear los volúmenes
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas

# Activar el swap
sudo mkswap /dev/vg_temp/lv_swap
sudo swapon /dev/vg_temp/lv_swap

# Crear puntos de montaje
sudo mkdir -p /var/lib/docker
sudo mkdir -p /work

# Montar los volúmenes
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_workareas /work

# Agregar al /etc/fstab para persistencia
echo '/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 2' | sudo tee -a /etc/fstab
echo '/dev/vg_datos/lv_workareas /work ext4 defaults 0 2' | sudo tee -a /etc/fstab
echo '/dev/vg_temp/lv_swap none swap sw 0 0' | sudo tee -a /etc/fstab

# Reiniciar Docker para que detecte el nuevo directorio
sudo systemctl restart docker
