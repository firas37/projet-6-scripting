#!/bin/bash
source fonction.sh


function menu(){

ps3="votre choix :"

select item in "-show_usage -" "-version -" "-journal-" "-help- " "- historique-" "- Supprimer-" "-exit -" 

do 
echo "vous avez choisi l'iteme $REPLY : $item"
case  $REPLY in 

1) #appel de la fonction show_usage 

show_usage 
;;
2)  #appel de la fonction version
version
;;
3)  #appel de la fonction journal
journal
;;
4)  #appel de la fonction help
help
;;
5)
 historique
;;
6)
 supprimer
;;
7) exit 0
;;

esac 
done 





}

