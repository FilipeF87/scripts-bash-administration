#!/bin/bash

LOG_DIR="/var/log"
RETENTION_DAYS=7

find "$LOG_DIR" -type f -name "*.log" -mtime +$RETENTION_DAYS -exec rm -f {} \;

if [ $? -eq 0 ]; then
    echo "🧹 Logs de plus de $RETENTION_DAYS jours supprimés"
else
    echo "❌ Erreur lors du nettoyage des logs"
fi

