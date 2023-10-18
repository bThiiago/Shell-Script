#!/usr/bin/env sh

# Diretório de backup
backup_dir="/mnt/backup"

# Data para nomear o backup
backup_date=$(date +"%Y%m%d%H%M%S")

# Nome do arquivo de backup
backup_file="$backup_dir/backup_$backup_date.tar.gz"

# Diretório a ser backup (por exemplo, /home/seu-usuario)
source_dir="/caminho/para/seus/dados"

# Arquivo de log
log_file="/var/log/daily-backup.log"

##########################
# Teste  de  existência  #
##########################
# Verificar se o diretório de backup existe
if [ ! -d "$backup_dir" ]; then
    printf "[$backup_date] Diretório de backup $backup_dir não existe. Criando...\n" >> "$log_file"
    mkdir -p "$backup_dir"
fi

# Verificar se o diretório de origem existe
if [ ! -d "$source_dir" ]; then
    printf "[$backup_date] Diretório de origem $source_dir não existe. Abortando...\n" >> "$log_file"
    exit 1
fi

# Verificar se o dispositivo externo está montado
if ! mountpoint -q /mnt/dispositivo; then
    printf "[$backup_date] Dispositivo externo não está montado. Abortando...\n" >> "$log_file"
    exit 1
fi

# Criar o arquivo de backup
tar -czvf "$backup_file" "$source_dir"

# Verificar se o arquivo de backup foi criado
if [ ! -f "$backup_file" ]; then
    printf "[$backup_date] Arquivo de backup $backup_file não foi criado. Abortando...\n" >> "$log_file"
    exit 1
fi

# Desmontar o dispositivo externo
umount /mnt/dispositivo