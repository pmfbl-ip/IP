<?php

$uzrast = array("Petar"=>35, "Marko"=>37, "Janko"=>43, "Zarko"=> 7, "Milica" => 50 );
echo "Pre sortiranja: ";
print_r($uzrast);
echo "<br/>";
asort($uzrast); // Sortira asocijativni niz u rastuci poredak po vrednostima
echo "Posle sortiranja: ";
print_r($uzrast);
echo "<br/><br/>";

$uzrast = array("Petar"=>35, "Marko"=>37, "Janko"=>43, "Zarko"=> 7, "Milica" => 50 );
echo "Pre sortiranja: ";
print_r($uzrast);
echo "<br/>";
ksort($uzrast); // Sortira asocijativni niz u rastuci poredak po kljucevima
echo "Posle sortiranja: ";
print_r($uzrast);
echo "<br/><br/>";

$uzrast = array("Petar"=>35, "Marko"=>37, "Janko"=>43, "Zarko"=> 7, "Milica" => 50 );
echo "Pre sortiranja: ";
print_r($uzrast);
echo "<br/>";
arsort($uzrast); // Sortira asocijativni niz u opadajuci poredak po vrednostima
echo "Posle sortiranja: ";
print_r($uzrast);
echo "<br/><br/>";

$uzrast = array("Petar"=>35, "Marko"=>37, "Janko"=>43, "Zarko"=> 7, "Milica" => 50 );
echo "Pre sortiranja: ";
print_r($uzrast);
echo "<br/>";
krsort($uzrast); // Sortira asocijativni niz u opadajuci poredak po kljucevima
echo "Posle sortiranja: ";
print_r($uzrast);
echo "<br/><br/>";

?>