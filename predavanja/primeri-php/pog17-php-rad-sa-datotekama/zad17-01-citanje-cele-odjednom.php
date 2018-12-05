<pre>
<?php
$mojaDatoteka = fopen("webdictionary.txt", "r") or die("Datoteka se ne moze otvoriti!");
$x = fread($mojaDatoteka,filesize("webdictionary.txt"));
echo $x;
fclose($mojaDatoteka);
?>
</pre>