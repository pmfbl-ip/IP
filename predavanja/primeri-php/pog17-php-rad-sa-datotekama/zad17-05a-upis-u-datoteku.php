<?php
$datoteka = fopen("vojvode.txt", "w") or die("Unable to open file!");
$tekst = "Zivojin Misic\r\n";
fwrite($datoteka, $tekst);
$tekst = "Stepa Stepanovic\r\n";
fwrite($datoteka, $tekst);
fclose($datoteka);
?>