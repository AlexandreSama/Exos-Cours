<?php

    $tab1 = [];
    $tab2 = [4, 8, 7, 9, 1, 5, 4, 6];
    $tab3 = [7, 6, 5, 2, 1, 3, 7, 4];

    for ($i=0; $i <= 7; $i++) { 
        array_push($tab1, $tab2[$i] + $tab3[$i]);
    }

    var_dump($tab1)
?>