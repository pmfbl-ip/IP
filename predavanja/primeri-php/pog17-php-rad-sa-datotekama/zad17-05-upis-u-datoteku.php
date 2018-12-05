<?php
$datoteka = fopen("newfile.txt", "w") or die("Unable to open file!");
$tekst = "Marko Kraljevic\n";
fwrite($datoteka, $tekst);
$tekst = "Musa Kesedzija\n";
fwrite($datoteka, $tekst);
fclose($datoteka);
?>