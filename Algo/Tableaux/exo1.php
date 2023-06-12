<?php

    // This PHP code initializes an empty array called, then uses a `for` loop to push the value
    // `0` onto the array seven times. Finally, the `var_dump()` function is used to output the
    // contents of the array to the screen. The result will be an array with seven elements, all of
    // which have a value of `0`.
    $tab = [];
    
    for ($i=1; $i <= 7; $i++) { 
        array_push($tab, 0);
    }
    var_dump($tab)
?>