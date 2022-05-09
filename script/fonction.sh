#!/bin/bash


function show_usage() {
#affichage show usage
echo " surveiller.sh [-h] [-d] [-s] [-j] [-v] [-g] [-m]  "
}





    
function version(){
#afficher le contenu du version.txt
cat version.txt
}

function journal(){

# envoyer les donner dans journal2.txt
touch journal2
echo `last -F` > journal2

}


function supprimer(){
# la date actuelle yyyy/mm/dd
dataset_date=`date +%D` 
#   
date_diff=7
#la differance ente les date
p_dataset_date=$(date --date="${dataset_date} -${date_diff} day" +%Y-%m-%d)
# envoyer les donner pour les derniere  les 7 jours 
echo `last -s $p_dataset_date` > journal2
}



function help(){
#afficher le contenu du help.txt

cat help.txt
}

function historique(){

#afficher les derniere connection de l'utlisateur
last -F
}



function graphique(){

#conteur 
j="..."
    test_=10
    while [ $test_ -ne 5 ]
    do
    action=$(yad --widght 1000 --height 1000 --title "sujet6" \
             --button="show_usage:0" \
             --button="version:1"  \
             --button="journal:2" \
             --button="supprimer:3" \
             --button="historique:4" \
             --button="Quitter:5" \
             --text "$j" --height 200 --widght 200 --scroll)
    test_=$?         
    case $test_ in
        0 )
            j=$(show_usage)
            ;;
        1 )
            j=$(version)
            ;;
        2 )
            j=$(journal)
            ;;
        3 )
            j=$(supprimer)
            ;;
             4 )
            j=$(historique)
            ;;
          
        * )
            ;;
    esac
    done






}

