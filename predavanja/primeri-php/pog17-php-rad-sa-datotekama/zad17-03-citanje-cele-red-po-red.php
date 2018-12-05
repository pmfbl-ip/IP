<!DOCTYPE html>
<html>
<body>

<?php
$datoteka = fopen("webdictionary.txt", "r") or die("Ne moze da se otvori datoteka!");
while(!feof($datoteka)) 
{
   $x = fgets($datoteka);
   echo  $x . "<br/>";
}
fclose($datoteka);
?>

</body>
</html>