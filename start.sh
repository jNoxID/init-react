#!/bin/bash

echo "Création d'un nouveau projet React"
echo ""
echo "1 - ReactJS classique"
echo "2 - ReactJS + TypeScript"
echo ""

read -p "Choisis une option (1 ou 2) : " choice

if [[ "$choice" == "1" ]]; then
  read -p "Nom du projet : " projectName
  echo "Création du projet ReactJS simple : $projectName"
  npm create vite@latest "$projectName" -- --template react
elif [[ "$choice" == "2" ]]; then
  read -p "Nom du projet : " projectName
  echo "Création du projet ReactJS + TypeScript : $projectName"
  npm create vite@latest "$projectName" -- --template react-ts
else
  echo "❌ Option invalide. Relance le script et choisis 1 ou 2."
fi

exit 0
