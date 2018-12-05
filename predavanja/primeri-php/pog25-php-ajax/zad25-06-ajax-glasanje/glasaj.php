<?php
$glas = $_REQUEST['glas'];

// odredi sadrzaj tekstualne datoteke
$datoteka = "rezultati-glasanja.txt";
$sadrzaj = file($datoteka);

//smesti sadrzaj u niz
$niz = explode("||", $sadrzaj[0]);
$da = $niz[0];
$ne = $niz[1];

if ($glas == 0) {
  $da = $da + 1;
}
if ($glas == 1) {
  $ne = $ne + 1;
}

//sacuvaj azurirane glasove u istu tekstualnu datoteku
$sadrzaj = $da."||".$ne;
$fp = fopen($datoteka,"w");
fputs($fp,$sadrzaj);
fclose($fp);
?>

<h2>Rezultat:</h2>
<table>
<tr>
<td>Da:</td>
<td>
<img src="glas.gif"
width='<?php echo(100*round($da/($ne+$da),2)); ?>'
height='20'>
<?php echo(100*round($da/($ne+$da),2)); ?>%
</td>
</tr>
<tr>
<td>Ne:</td>
<td>
<img src="glas.gif"
width='<?php echo(100*round($ne/($ne+$da),2)); ?>'
height='20'>
<?php echo(100*round($ne/($ne+$da),2)); ?>%
</td>
</tr>
</table>