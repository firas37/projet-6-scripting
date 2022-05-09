#!/bin/bash
source fonction.sh
source menu.sh

if [ $# -gt 0 ]; then 



    while getopts "hgvmdsj" option
    do
        echo "getopts a trouvé l'option $option" 
        case $option in
            h) 
                 help
                 
;;
            g)
            graphique
                 
                 #menu_graph 
                
                 
;;
            v)
                 version
                 
;;
            m)
                menu
                # menu_text
                 
;;
            d)
                historique
                 
;;
            s)
                supprimer  
                # supprimer
                 
;;
            j)
            	journal
               #journaliser
          
;;
        esac
   done

else 
"il faut specifie au moin un argument "
show_usage ;
help ;
fi



