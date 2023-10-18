#!/bin/bash

# Diretório de backup
backup_dir="/mnt/backup"

# Data para nomear o backup
backup_date=$(date +"%Y%m%d%H%M%S")

# Nome do arquivo de backup
backup_file="$backup_dir/backup_$backup_date.tar.gz"

# Diretório a ser backup (por exemplo, /)
source_dir="/"

# Montar o dispositivo externo (substitua /dev/sdX e /mnt/dispositivo com os valores corretos)
mount /dev/sdX /mnt/dispositivo

# Criar o diretório de backup, se não existir
mkdir -p "$backup_dir"

# Criar o arquivo de backup
tar -czvf "$backup_file" "$source_dir"

# Desmontar o dispositivo externo
umount /mnt/dispositivo

echo "Backup completo concluído em $backup_file"