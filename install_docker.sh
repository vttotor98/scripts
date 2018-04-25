#!/bin/bash
#Author : Victor TIREBAQUE for Agaetis Clermont-Ferrand

#Installation des dépôts et paquest nécessaires
add-apt-repository -y ppa:ethereum/ethereum
add-apt-repository -y ppa:ethereum/ethereum-dev
apt-get update
apt-get install -y build-essential golang software-properties-common ethereum eth git


#Création du dossier du fichier json 
mkdir -p ~/blockchain/genesis_folder
git clone https://github.com/vttotor98/genesis_file/
mv genesis_file/genesis.json ~/blockchain/genesis_folder/
#Lors de l'exécution de la commande attention à l'id de la blockchain
geth --datadir ~/blockchain/.ethereum_private init ~/blockchain/genesis_folder/firstGenesis.json 

#Suppression des dossiers et fichiers
rm genesis_file/*
rmdir genesis_file


#Démarage du premier noeuds, vérifier les paramètres 
echo "Comment vous voulez appeller ce noeud ?"
read node_name
geth --identity $node_name init ~/blockchain/genesis_folder/firstGenesis.json --datadir ~/blockchain/.ethereum_private/ACPrivateChain
echo “pour quitter faire Ctrl + C”
geth --datadir ~/blockchain/.ethereum_private/ACPrivateChain --networkid 988 &
