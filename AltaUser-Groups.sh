#!/bin/bash

# Validación de argumentos
if [ "$#" -ne 2 ]; then
  echo "Uso: $0 <usuario_para_clave> <ruta_lista_usuarios>"
  exit 1
fi

usuario_base="$1"
archivo_usuarios="$2"

# Validar que el archivo exista
if [ ! -f "$archivo_usuarios" ]; then
  echo "Archivo de usuarios no encontrado: $archivo_usuarios"
  exit 1
fi

# Obtener clave del usuario base
clave=$(sudo grep "^$usuario_base:" /etc/shadow | cut -d: -f2)

if [ -z "$clave" ]; then
  echo "No se pudo obtener la clave del usuario $usuario_base"
  exit 1
fi

# Procesar cada línea del archivo
while IFS=';' read -r usuario grupo; do
  # Crear grupo si no existe
  if ! getent group "$grupo" >/dev/null; then
    sudo groupadd "$grupo"
    echo "Grupo $grupo creado"
  fi

  # Crear usuario con su grupo
  if ! id "$usuario" >/dev/null 2>&1; then
    sudo useradd -m -g "$grupo" "$usuario"
    sudo usermod -p "$clave" "$usuario"
    echo "Usuario $usuario creado con grupo $grupo"
  else
    echo "El usuario $usuario ya existe"
  fi
done < "$archivo_usuarios"
