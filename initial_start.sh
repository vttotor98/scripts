#!/bin/bash
#Author Victor TIREBAQUE for Agaetis 

fichier=/start.sh
fic_out=out.txt
#Est-ce que le fichier start existe, et est-il vide
if [ ! -s $fichier ]; then
  docker build -f ~/scripts/init_docker . >$fic_out
  dock_id=tail -n 1 $fic_out | cut -d ' ' -f 3
  echo "docker run -it $dock_id bash" >/start.sh
  chmod +x /start.sh
else
  sh /start.sh
fi
