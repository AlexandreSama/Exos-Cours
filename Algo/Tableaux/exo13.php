<?php

    $tab = [47, 56, 20, 13, 95, 85, 74];
    $value = max($tab);
    $key = array_search($value, $tab);

    var_dump($value . ' Est le plus grand nombre en position ' . $key)
?>