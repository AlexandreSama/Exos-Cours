<?php

    $tab = ['4', '9', '99', '12', '68', '14', '36', '78', '85'];
    // $i = 0;
    $tab2 = [];
    
    // while ($i <= 9) {
    //    array_push($tab2, $nb);
    //    $i = $i + 1;
    // }

    foreach ($tab as $key => $value) {
        array_push($tab2, $value);
    }
    var_dump($tab2)
?>