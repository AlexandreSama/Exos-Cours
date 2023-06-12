<?php

    // This is a PHP code that creates an array containing all the letters of the alphabet and an
    // empty array. It then loops through each element of and checks if it is a vowel (a, e,
    // i, o, u, y). If it is a vowel, it adds it to using the `array_push()` function. Finally, it
    // prints the contents of using `var_dump()`. The output will be an array containing all the
    // vowels in the alphabet.
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