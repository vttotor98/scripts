#!/bin/bash

sudo add-apt-repository -y ppa:ethereum/ethereum
sudo add-apt-repository -y ppa:ethereum/ethereum-dev
sudo apt-get update
sudo apt-get install -y build-essential golang software-properties-common ethereum eth


#faut créer le dossier du fichier json 
mkdir -p ~/blockchain/genesis_folder
git clone https://github.com/vttotor98/scripts/
mv scripts/firstGenesis.json ~/blockchain/genesis_folder/
#faut faire gaffe quand on exécute la commande (id blockchain par exemple)
geth --datadir ~/blockchain/.ethereum_private init ~/blockchain/genesis_folder/firstGenesis.json 

#Démarage du premier noeuds faire gaffe aux paramètres 
echo "Nom du noeud ?"
read node_name
geth --identity $node_name init ~/blockchain/genesis_folder/firstGenesis.json --datadir ~/blockchain/.ethereum_private/ACPrivateChain
echo “pour quitter faire Ctrl + C”
geth --datadir ~/blockchain/.ethereum_private/ACPrivateChain --networkid 988

