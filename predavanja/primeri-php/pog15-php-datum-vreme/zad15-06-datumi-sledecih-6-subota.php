<?php
$pocetniDatum = strtotime("Monday");
$krajnjiDatum = strtotime("+6 weeks",$pocetniDatum);

$datum = $pocetniDatum;
while ($datum < $krajnjiDatum) 
{
	echo date("d.M.Y ", $datum),"<br>";
	$datum = strtotime("+1 week", $datum);
}
?>