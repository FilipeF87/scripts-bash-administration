#!/bin/bash

# Variables
SOURCE_DIR="/home"
BACKUP_DIR="/backup"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/home_backup_$DATE.tar.gz"

# Création du dossier de sauvegarde s'il n'existe pas
mkdir -p "$BACKUP_DIR"

# Sauvegarde
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

# Vérification
if [ $? -eq 0 ]; then
    echo "✅ Sauvegarde réussie : $BACKUP_FILE"
else
    echo "❌ Échec de la sauvegarde"
    exit 1
fi

