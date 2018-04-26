#!/bin/bash
#Author : Victor TIREBAQUE for Agaetis Clermont-Ferrand

docker images
read var
docker rmi -f $var
docker rmi -f ubuntu
rm -rf scripts
git clone https://github.com/vttotor98/scripts
