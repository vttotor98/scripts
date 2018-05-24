#!/bin/bash
#Author Victor TIREBAQUE for Agaetis 

#Variables noms de fichiers
fic=~/start.sh
fic_out=out_install.log


#Est-ce que le fichier start existe, et est-il vide
if [ ! -s $fic ]; then
	
	#exécution du dockerfile
	docker build -f ~/scripts/init_docker/init_docker.sh . >$fic_out
	
	#Nous récoupérons l'id de l'images docker qui se trouve à la fin du fichier out_install.log
	dock_id=`tail -n 1 $fic_out | cut -d ' ' -f 3`
	
	#Déplacement du fichier pour plus de confort d'utilisation
	mv ~/scripts/start.sh ~/
	echo "docker run -it $dock_id bash" >>$fic
else
	$fic
fi
