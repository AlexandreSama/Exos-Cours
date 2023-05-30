<?php
    /* L'algorithme suivant produit un tableau contenant 5 entrées numériques 
    entrer a partir d'une boucle, mais qui sont en suite affiché dans une 
    autre boucle */
    $nb = [];
    $i;

    for ($i=1; $i <= 5; $i++) { 
        array_push($nb, $i*$i);
    }
    for ($i=1; $i <= 5; $i++) { 
        var_dump($nb);
    }

    //Version simplifié

    $nb2 = [];
    $i;

    for ($i=1; $i <= 5; $i++) { 
        array_push($nb2, $i*$i);
        var_dump($nb2);
    }

?>