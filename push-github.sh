#!/bin/bash
# ============================================
# Script d'upload rapide vers GitHub
# Repo : Payloaders-ps4-triki1
# Usage : ./push-github.sh "message de commit"
# ============================================

# Se placer dans le dossier du script (à adapter si besoin)
# cd /home/tux/PROJECT-PS4/ps4-host/sauvegarde\ triki-host/

MESSAGE="$1"

if [ -z "$MESSAGE" ]; then
    MESSAGE="Mise à jour des payloaders PS4"
fi

echo "=== Ajout des fichiers modifiés ==="
git add .

echo "=== Commit ==="
git commit -m "$MESSAGE"

echo "=== Envoi vers GitHub ==="
git push

echo "=== Terminé ! ==="
