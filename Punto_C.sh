#!/bin/bash
# Script para resolver el Punto C del examen
# Autor: NahuelUS
# Fecha: 2025-07-03

# Construye la imagen Docker
docker build -t nahuelus/web1-uchupe ../UTN-FRA_SO_Examenes/202406/docker

# Pushea la imagen a Docker Hub
docker push nahuelus/web1-uchupe
