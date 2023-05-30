<?php

    $val = ['45', '-25', '-45', '-12', '558', '14', '47'];
    $negatives = 0;
    $positives = 0;

    foreach ($val as $key => $value) {
        if ($value < 0) {
            $negatives = $negatives + 1;
        }else{
            $positives = $positives + 1;
        }
    }

    var_dump($positives);
    var_dump($negatives);

?>