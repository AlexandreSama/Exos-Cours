<?php

    $tab = [47, 56, 20, 13, 95, 85, 74];
    var_dump($tab);
    foreach ($tab as $key => &$value) {
        $value = $value + 1;
    }
    var_dump($tab);
    

?>