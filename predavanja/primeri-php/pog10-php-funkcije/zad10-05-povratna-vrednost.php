<?php

function suma($x, $y= 1) {
    $z = $x + $y;
    return $z;
}

function spoj($x, $y="AAA") {
    $z = $x . $y;
    return $z;
}

echo "5 + 10 = " . suma(5, 10) . "<br>";
echo "7 + 13 = " . suma(7, 13) . "<br>";
echo "2 + 4 = " . suma(2, 4). "<br>";
echo "'2' + '4' = `" . spoj('2', '4') ."'". "<br>";
echo "2 + 4 = " . spoj(2, 4). "<br>";


echo " " . spoj(2). "<br>";
echo " " . suma(2). "<br>";

?>