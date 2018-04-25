#!/bin/bash
#Author : Victor TIREBAQUE for Agaetis Clermont-Ferrand

docker images
read img
docker rmi -f $img
docker rmi -f ubuntu
rm -rf scripts
git clone https://github.com/vttotor98/scripts
docker build -f scripts/init_docker scripts/
