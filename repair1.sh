#!/bin/bash

set -e

function erreur {
    tput setaf 1
    echo "Erreur : $1"
    echo "Veuillez contacter l'Editeur"
    echo "Email : james.gbetchedji@epitech.eu"
    echo "Tel : +22956549199"
    tput sgr0
    exit 1
}

clear
echo "DEMARRAGE DU SCRIPT DE REPARATION DU CODING STYLE"
sleep 5
clear
echo "Vérification de la présence du fichier coding-style..."

if [ -f "/usr/local/bin/coding-style" ]; then
    echo "Fichier 'coding-style' trouvé."
    sleep 2
    echo "VERIFICATION DE L'INTEGRITE DU CODING-STYLE"
    coding-style . . || erreur "L'exécution du fichier coding-style a échoué."
else
  tput setaf 1
    echo "Fichier 'coding-style' non trouvé.
 Préparez-vous à écrire votre mot de passe !!!"

tput sgr0
    cd ~ || erreur "Impossible de naviguer vers le répertoire home."
    
    sudo apt install curl -y || erreur "Échec de l'installation de curl."
    
    curl -o coding-style https://raw.githubusercontent.com/nogebeat/deb-ubuntu-epitech/main/App-code/src/coding-style || erreur "Échec du téléchargement du fichier coding-style."
    
    chmod 777 coding-style || erreur "Impossible de modifier les permissions du fichier coding-style."
    
    sudo rm -f /usr/bin/coding-style || erreur "Impossible de supprimer le fichier coding-style dans /usr/bin."
    sudo rm -f /usr/local/bin/coding-style || erreur "Impossible de supprimer le fichier coding-style dans /usr/local/bin."
    
    sudo cp coding-style /usr/bin/ || erreur "Échec de la copie du fichier coding-style vers /usr/bin."
    sudo cp coding-style /usr/local/bin || erreur "Échec de la copie du fichier coding-style vers /usr/local/bin."
fi

echo "Installation de l'utilitaire !!!!!"

sudo apt purge build-essential -y || erreur "Échec de la suppression de build-essential."
sudo apt update -y || erreur "Échec de la mise à jour des paquets."
sudo apt upgrade -y || erreur "Échec de la mise à niveau des paquets."
sudo apt install build-essential curl -y || erreur "Échec de l'installation de build-essential et curl."

clear
echo "REPARATION TERMINEE VEILLEZ ATTENDRE"

tput setaf 1
	echo "__**/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/CODING STYLE BY NOGE\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\**\*\*\*\*\**__"
	echo " _           _"
        echo "| |\\        | | NOGE"
        echo "| |\\\       | |"
        echo "| | \\\      | | EPITECH BENIN"
        echo "| |  \\\     | |"
        echo "| |   \\\    | | NOGE"
        echo "| |    \\\   | |"
        echo "| |     \\\  | | EPITECH DIGITAL SCHOOL"
        echo "| |      \\\ | |"
        echo "|_|       \\\|_| NOGE"
	tput sgr0
tput setaf 2
	echo "__**/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/CODING STYLE BY NOGE\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\**\*\*\*\*\**__"
	tput sgr0

echo "5"
sleep 1
echo "4"
sleep 1
echo "3"
sleep 1
echo "2"
sleep 1
echo "6"

sleep 1
echo "Orhhh je blague"
sleep 1

exit
