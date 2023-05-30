<?php

    //Cet algorithme insére les nombres 1 a 6 dans une boucle avant de
    //reprendre une boucle pour l'afficher
    $tab = [];
    $i;
    $k;

    array_push($tab, 1);
    for ($k=1; $k <= 6; $k++) { 
        array_push($tab, $k-1+2);
    }
    for ($i=0; $i <= 6; $i++) { 
        var_dump($tab[$i]);
    }

    //Version simplifié

    $tab2 = [];
    $k;
    $i = 0;

    for ($k=1; $k <= 6; $k++) { 
        array_push($tab2, $k-1+2);
        var_dump($tab2[$i]);
        $i = $i +1;
    }

?>