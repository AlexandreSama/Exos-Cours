<?php

    $tab2 = [4, 8, 7, 9, 1, 5, 4, 6];
    $tab3 = [7, 6, 5, 2, 1, 3, 7, 4];
    $j=0;
    $i=0;
    $k=1;
    $l=2;
    $m=3;
    $o=4;
    $p=5;
    $q=6;
    $r=7;
    $somme = 0;
    
    while ($i == 0) {
        $somme = $somme + $tab3[$i] * $tab2[$j];
        if($j == 7){
            $i = $i +1;
        }
        $j = $j + 1;
    }

    $j = 0;

    while ($k == 1) {
        $somme = $somme + $tab3[$k] * $tab2[$j];
        if($j == 7){
            $k = $k +1;
        }
        $j = $j + 1;
    }

    $j = 0;

    while ($l == 2) {
        $somme = $somme + $tab3[$k] * $tab2[$j];
        if($j == 7){
            $l = $l +1;
        }
        $j = $j + 1;
    }

    $j = 0;

    while ($m == 3) {
        $somme = $somme + $tab3[$k] * $tab2[$j];
        if($j == 7){
            $m = $m +1;
        }
        $j = $j + 1;
    }

    $j = 0;

    while ($o == 4) {
        $somme = $somme + $tab3[$k] * $tab2[$j];
        if($j == 7){
            $o = $o +1;
        }
        $j = $j + 1;
    }

    $j = 0;

    while ($p == 5) {
        $somme = $somme + $tab3[$k] * $tab2[$j];
        if($j == 7){
            $p = $p +1;
        }
        $j = $j + 1;
    }

    $j = 0;

    while ($q == 6) {
        $somme = $somme + $tab3[$k] * $tab2[$j];
        if($j == 7){
            $q = $q +1;
        }
        $j = $j + 1;
    }

    $j = 0;

    while ($r == 7) {
        $somme = $somme + $tab3[$k] * $tab2[$j];
        if($j == 7){
            $r = $r +1;
        }
        $j = $j + 1;
    }

    var_dump($somme)
?>