<!DOCTYPE html>
<html>
<body>

<?php
$datoteka = fopen("webdictionary.txt", "r") or die("Ne moze da se otvori datoteka!");
echo fgets($datoteka) . "<br>";
echo fgets($datoteka);
fclose($datoteka);
?>

</body>
</html>