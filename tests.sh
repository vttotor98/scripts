#!/bin/bash
#Author : Victor TIREBAQUE for Agaetis Clermont-Ferrand

#scripts afin de supprimer les img docker que l'on veut pour repartir de 0
docker images
read var
docker rmi -f $var
docker rmi -f ubuntu
rm -rf scripts
git clone https://github.com/vttotor98/scripts
docker images
docker build -f scripts/init_docker .
