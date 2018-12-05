<!DOCTYPE html>
<html>
<body>

<?php
$datoteka = fopen("webdictionary.txt", "r") or die("Ne moze se otvoriti datoteka!");
while(!feof($datoteka)) 
{
   echo fgetc($datoteka);
}
fclose($datoteka);
?>

</body>
</html>