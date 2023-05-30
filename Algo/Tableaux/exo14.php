<?php

    $tab = [47, 56, 20, 13, 95, 85, 74];
    $tab2 = [];
    $nb = 0;
    $nbI = 0;

    foreach ($tab as $key => $value) {
        $nb = $nb + $value;
        $nbI = $nbI + 1;
    }

    $moyenne = $nb / $nbI;
    var_dump($moyenne);

    foreach ($tab as $key => $value) {
        if($value > $moyenne){
            array_push($tab2, $value);
        }
    }

    var_dump($tab2);

?>