<?php

$array = [0,1,2,3,4,5,9];
$stringPosition = '';

printf("$array[3]\n");

end($array);
$lastKey = key($array);

foreach ($array as $key => $item) {
    if ($key != $lastKey) {
        $stringPosition .= $key.', ';
    } 
    else {
        $stringPosition .= $key;
    }
}

/**
 * No enunciado fala pra criar a string utilizando as posições do array e não o item,
 * mas eu deixei esse abaixo ai comentado fazendo com os itens também porque não fez muito sentido pra mim
 * quando comparado ao resto do desafio
 */

// foreach ($array as $key => $item) {
//     if ($key != $lastKey) {
//         $stringPosition .= $item.', ';
//     } 
//     else {
//         $stringPosition .= $item;
//     }
// }

$newArray = explode(",", $stringPosition);
unset($array);


in_array(14, $newArray);


foreach ($newArray as $key => $item) {
    if (isset($last) && $last > $item) {
        unset($input[$key]);
    }
    else {
        $last = $item;
    }
}

array_pop($newArray);

count($newArray);

array_reverse($newArray);