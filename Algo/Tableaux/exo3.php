<?php
    //This is a PHP code that creates an array with 9 elements, then creates an empty array
    //. It then uses a `foreach` loop to iterate through each element in, and adds each
    //element to using the `array_push` function. Finally, it prints the contents of using
    //the `var_dump` function. Essentially, this code is copying the contents of into a new array.

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