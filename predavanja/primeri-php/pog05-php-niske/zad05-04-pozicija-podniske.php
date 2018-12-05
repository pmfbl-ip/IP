<?php
echo strpos("Zdravo, zivo!", "zivo"); // prikazuje 8
echo "<br/>";

echo strpos("Zdravo, zivo!", "Zd"); // prikazuje 0
echo "<br/>";

$poz = strpos("Zdravo, zivo!", "A");
var_dump($poz); // prikazuje null tj. false
echo "<br/>";

?>