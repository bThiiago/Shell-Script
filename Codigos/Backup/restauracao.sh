#!/bin/bash

# Diretório de backup
backup_dir="/mnt/backup"

# Data para nomear o backup
backup_date=$(date +"%Y%m%d%H%M%S")

# Nome do arquivo de backup
backup_file="$backup_dir/backup_$backup_date.tar.gz"

# Diretório a ser backup (por exemplo, /home/seu-usuario)
source_dir="/caminho/para/seus/dados"

# Criar o diretório de backup, se não existir
mkdir -p "$backup_dir"

# Criar o arquivo de backup
tar -czvf "$backup_file" "$source_dir"

echo "Backup concluído em $backup_file"