#!/bin/bash

echo "========================================"
echo "Déploiement GitHub Pages"
echo "========================================"
echo ""

# Ajouter tous les fichiers
echo "[1/4] Ajout des fichiers..."
git add .

# Créer le commit
echo "[2/4] Création du commit..."
git commit -m "Deploy: Site complet avec analyse GenAI et présentation"

# Pousser vers GitHub
echo "[3/4] Push vers GitHub..."
git push origin main

# Vérification
echo "[4/4] Déploiement terminé!"
echo ""
echo "Votre site sera disponible dans 1-2 minutes à:"
echo "https://moniasellaoui.github.io/Adoption-des-outils-GenAI-LLMs-en-entreprise/"
echo ""
