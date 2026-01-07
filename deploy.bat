@echo off
echo ========================================
echo Deploiement GitHub Pages
echo ========================================
echo.

REM Ajouter tous les fichiers
echo [1/4] Ajout des fichiers...
git add .

REM Creer le commit
echo [2/4] Creation du commit...
git commit -m "Deploy: Site complet avec analyse GenAI et presentation"

REM Pousser vers GitHub
echo [3/4] Push vers GitHub...
git push origin main

REM Verification
echo [4/4] Deploiement termine!
echo.
echo Votre site sera disponible dans 1-2 minutes a:
echo https://moniasellaoui.github.io/Adoption-des-outils-GenAI-LLMs-en-entreprise/
echo.
pause
