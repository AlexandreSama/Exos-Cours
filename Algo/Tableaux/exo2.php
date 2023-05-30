<?php

    $tab = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
    $tab2 = [];

    foreach ($tab as $key => $value) {
        switch ($value) {
            case 'a':
                array_push($tab2, $value);
                break;
            case 'e':
                array_push($tab2, $value);
                break;
            case 'i':
                array_push($tab2, $value);
                break;
            case 'o':
                array_push($tab2, $value);
                break;
            case 'u':
                array_push($tab2, $value);
                break;
            case 'y':
                array_push($tab2, $value);
                break;
            default:
                break;
        }
    }

    var_dump($tab2)
?>