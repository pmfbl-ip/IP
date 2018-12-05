<?php

$auta = array("Volvo", "BMW", "Tojota", "Fiat", "Mercedes");
echo "Pre sortiranja: ";
print_r($auta);
echo "<br/>";
sort($auta);  // sortira niz u rastuci poredak
echo "Posle sortiranja: ";
print_r($auta);
echo "<br/><br/>";

$brojevi = array(4, 6, 2, 22, 11, -5, 17);
echo "Pre sortiranja: ";
print_r($brojevi);
echo "<br/>";
sort($brojevi);  // sortira niz u rastuci poredak
echo "Posle sortiranja: ";
print_r($brojevi);
echo "<br/><br/>";


$auta = array("Volvo", "BMW", "Tojota", "Fiat", "Mercedes");
echo "Pre sortiranja: ";
print_r($auta);
echo "<br/>";
rsort($auta);  // sortira niz u opadajuci poredak
echo "Posle sortiranja: ";
print_r($auta);
echo "<br/><br/>";

$brojevi = array(4, 6, 2, 22, 11, -5, 17);
echo "Pre sortiranja: ";
print_r($brojevi);
echo "<br/>";
rsort($brojevi);  // sortira niz u opadajuci poredak
echo "Posle sortiranja: ";
print_r($brojevi);
echo "<br/><br/>";

?>