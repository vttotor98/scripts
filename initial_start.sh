#!/bin/bash
#Author Victor TIREBAQUE for Agaetis 

fichier=/start.sh
fic_out=out.txt
#Est-ce que le fichier start existe, et est-il vide
if [ ! -s $fichier ]; then
  docker build -f ~/scripts/init_docker . >$fic_out
  #Nous récoupérons l'id de l'images docker   
  dock_id=tail -n 1 $fic_out | cut -d ' ' -f 3
  mv ~/scripts/start.sh
  echo "docker run -it $dock_id bash" >>/start.sh
  chmod +x /start.sh
else
  /start.sh
fi
