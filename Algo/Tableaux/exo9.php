<?php

    $tab = [14, 28, 65, 92, 36, 45];
    $somme = 0;

    foreach ($tab as $key => $value) {
        $somme = $somme + $value;
    }

    var_dump($somme)

?>