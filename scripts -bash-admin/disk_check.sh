#!/bin/bash

THRESHOLD=80
PARTITION="/"

USAGE=$(df "$PARTITION" | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "🚨 Alerte : utilisation du disque à ${USAGE}%"
else
    echo "✅ Utilisation du disque OK : ${USAGE}%"
fi

