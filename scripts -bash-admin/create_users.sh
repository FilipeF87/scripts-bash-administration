#!/bin/bash

USER_FILE="users.txt"
TEMP_PASSWORD="ChangeMe123"

# Vérification du fichier
if [ ! -f "$USER_FILE" ]; then
    echo "❌ Fichier users.txt introuvable"
    exit 1
fi

while IFS= read -r username; do
    if id "$username" &>/dev/null; then
        echo "⚠️  L'utilisateur $username existe déjà"
    else
        useradd -m "$username"
        echo "$username:$TEMP_PASSWORD" | chpasswd
        chage -d 0 "$username"
        echo "✅ Utilisateur $username créé"
    fi
done < "$USER_FILE"

