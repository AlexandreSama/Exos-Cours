<?php

    $suite = [];
    $i;
    $somme = 0;

    $suite[0] = 1;
    $suite[1] = 1;
    
    for ($i=2; $i <= 7; $i++) { 
        $suite[$i] = $suite[$i-1] + $suite[$i-2];
    }
    // for ($i=0; $i <= 7; $i++) { 
    //     var_dump($suite[$i]);
    // }

    foreach ($suite as $key => $value) {
        $somme = $somme + $value;
    }
    var_dump($suite);
    var_dump($somme / 7)

?>