#!/bin/zsh

echo "🎯 Création d'un nouveau projet React"
echo ""
echo "1️⃣  ReactJS classique"
echo "2️⃣  ReactJS + TypeScript"
echo ""
read "choice?👉 Choisis une option (1 ou 2) : "

if [[ "$choice" == "1" ]]; then
  read "projectName?📦 Nom du projet : "
  echo "🚀 Création du projet ReactJS simple : $projectName"
  npm create vite@latest "$projectName" -- --template react
elif [[ "$choice" == "2" ]]; then
  read "projectName?📦 Nom du projet : "
  echo "🚀 Création du projet ReactJS + TypeScript : $projectName"
  npm create vite@latest "$projectName" -- --template react-ts
else
  echo "❌ Option invalide. Relance le script et choisis 1 ou 2."
fi 

exit