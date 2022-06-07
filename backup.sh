#!/usr/bin/bash

#Seu diretório de backup
backupPath = "/home/seuUsuario/Backup"

#Seu onde os arquivos estão atualmente
originalPath = "/home/seuUsuario/Documentos"

#Criando um TimeStamp para o arquivo
dataArq = $(date "+%d-%m-%Y")
finalArq = "backup-$dataArq.tar.gz"

#criando o log do armazenamento
logArq = "/var/log/backupArquivo.log"

########
# Verificar se a unidade esta montada
########

if ! mountpoint -q -- $originalPath; then
    printf "$dataArq Dispositivo não esta montado CHECK IT .\n" >> $logArq
    exit 1
fi

########
# Fazer o Backup e criando o log
########
if tar -czSpf "$originalPath/$finalArq" "$backupPath"; then
    printf "[$dataArq] Backup com Sucesso.\n" >> $logArq
else
    printf "[$dataArq] Não realizou o backup.\n" >> $logArq
fi


