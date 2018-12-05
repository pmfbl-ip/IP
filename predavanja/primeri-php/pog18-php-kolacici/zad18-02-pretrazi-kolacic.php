<!DOCTYPE html>
<html>
<body>

<?php
$imeKolacica = "korisnik";
if(!isset($_COOKIE[$imeKolacica])) 
{
      echo "Kolacic sa imenom '" . $imeKolacica . "' nije postavljen!";
} 
else 
{
      echo "Kolacic '" . $imeKolacica . "' je postavljen!<br>";
      echo "Vrednost je: " . $_COOKIE[$imeKolacica];
}
?>

<p><strong>Napomena:</strong> Mozda ce trebati da se ponovo ucita strana da bi kolacic bio postavljen.</p>

</body>
</html>