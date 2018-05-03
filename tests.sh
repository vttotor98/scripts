#!/bin/bash
#Author : Victor TIREBAQUE for Agaetis Clermont-Ferrand

#Scripts afin de supprimer les img docker que l'on veut pour repartir de 0
#Choix de l'image
docker images
read var
#Suppression de l'image
docker rmi -f $var
#Suppression de scripts pour mettre à jour ou le télécharger pour la première
rm -rf scripts

#Téléchargement des scripts
git clone https://github.com/vttotor98/scripts
docker images

#Exécution de l'image
sudo chmod +x ~/scripts/initial_start.sh
sudo ~/scripts/initial_start.sh
