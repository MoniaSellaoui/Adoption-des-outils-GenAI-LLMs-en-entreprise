# Adoption des outils GenAI / LLMs en entreprise

## 📋 Vue d'ensemble

Ce projet présente une **analyse statistique descriptive** de l'adoption des outils d'intelligence artificielle générative (GenAI) et des grands modèles de langage (LLMs) dans le contexte professionnel. L'étude examine l'impact de ces technologies sur la productivité, l'emploi et l'organisation du travail à travers différents pays et secteurs d'activité.

## 🎯 Objectifs

- **Décrire** l'émergence temporelle de l'adoption des outils GenAI (2022-2024)
- **Comparer** l'adoption entre pays et secteurs d'activité
- **Mesurer** l'impact sur :
  - La productivité déclarée
  - Le nombre d'employés impactés
  - La création de nouveaux rôles
  - La formation dispensée
- **Analyser** la performance comparative des différents outils (ChatGPT, Gemini, Claude, etc.)

## 📊 Source des données

- **Dataset** : [Enterprise GenAI Adoption & Workforce Impact Data](https://www.kaggle.com/datasets/tfisthis/enterprise-genai-adoption-and-workforce-impact-data) (Kaggle)
- **Auteur** : tfisthis
- **Taille** : 100 000 entreprises
- **Variables clés** :
  - Pays, secteur d'activité, outil GenAI utilisé
  - Année d'adoption
  - Employés impactés, nouveaux rôles créés
  - Heures de formation fournies
  - Changement de productivité (%)
  - Sentiment des employés (texte)

## 📁 Structure du projet

```
.
├── qmd/
│   ├── enterprise_genai_analysis.qmd    # Rapport d'analyse principal (HTML/PDF)
│   ├── 07-enterprise-genai-slides.qmd   # Présentation RevealJS
│   └── data/
│       └── enterprise_genai_data.csv    # Données source
├── R/
│   ├── check_data_quality.R             # Script de vérification des données
│   ├── check_country.R                  # Vérification stats pays
│   └── check_trend.R                    # Vérification tendances
├── docs/                                 # Site web généré (GitHub Pages)
├── _quarto.yml                          # Configuration Quarto
├── index.qmd                            # Page d'accueil du site
└── README.md                            # Ce fichier
```

## 🔬 Contenu de l'analyse

### Rapport principal (`enterprise_genai_analysis.qmd`)

1. **Émergence temporelle** : Évolution de l'adoption 2022-2024
2. **Analyse par pays** : Top pays adoptants, productivité par pays
3. **Analyse par secteur** : Secteurs les plus impactés, nouveaux rôles créés
4. **Analyse par outil** : Répartition des outils, comparaison de performance
5. **Métiers touchés** : Heatmap pays × secteur
6. **Sentiment des employés** : Analyse textuelle des commentaires
7. **Performance par outil** : Test ANOVA et comparaison statistique
8. **Conclusion** : Synthèse des résultats clés

### Présentation (`07-enterprise-genai-slides.qmd`)

Présentation RevealJS synthétique avec :
- Thème sombre (night)
- Graphiques optimisés pour projection
- Valeurs affichées directement sur les visualisations
- Conclusions actionnables

## 🚀 Utilisation

### Prérequis

- **R** (≥ 4.0)
- **Quarto** (≥ 1.3)
- Packages R : `dplyr`, `ggplot2`, `readr`, `stringr`, `forcats`

### Installation des dépendances R

```r
install.packages(c("dplyr", "ggplot2", "readr", "stringr", "forcats"))
```

### Génération du rapport

```bash
# Prévisualisation interactive
quarto preview qmd/enterprise_genai_analysis.qmd

# Génération HTML
quarto render qmd/enterprise_genai_analysis.qmd

# Génération PDF
quarto render qmd/enterprise_genai_analysis.qmd --to pdf
```

### Génération de la présentation

```bash
# Prévisualisation
quarto preview qmd/07-enterprise-genai-slides.qmd

# Génération HTML
quarto render qmd/07-enterprise-genai-slides.qmd
```

### Génération complète du site

```bash
quarto render
```

Le site sera généré dans le dossier `docs/` et peut être déployé sur GitHub Pages.

## 📈 Résultats clés

- **Adoption massive** : Croissance continue sur 2022-2024
- **Productivité stable** : Gain moyen de ~18.5% peu importe l'année ou l'outil
- **Top 3 pays** : Brésil, Australie, Canada
- **Aucune différence significative** entre les outils (test ANOVA)
- **Impact humain** : Mélange d'enthousiasme et d'inquiétude

## 🛠️ Technologies utilisées

- **Quarto** : Système de publication scientifique
- **R** : Analyse statistique et visualisation
- **ggplot2** : Création de graphiques
- **RevealJS** : Présentation interactive
- **GitHub Pages** : Hébergement du site web

## 📝 Licence

Ce projet est un travail académique d'analyse de données publiques.

## 👤 Auteur

Projet d'analyse statistique sur l'adoption des outils GenAI en entreprise.

---


