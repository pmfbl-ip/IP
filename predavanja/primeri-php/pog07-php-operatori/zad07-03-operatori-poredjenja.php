<?php
$x = 100; 
$y = "100";
var_dump($x == $y); // vrace true jer su vrednosti promenljivih iste
echo "<br/><br/>";
var_dump($x === $y); // vrace false jer promenljive nisu identicne (razlikuju se tipovi)
echo "<br/><br/>";
var_dump($x != $y); // vrace false jer su vrednosti promenljivih iste
echo "<br/><br/>";
var_dump($x <> $y); // vrace false jer su vrednosti promenljivih iste
echo "<br/><br/>";

$x = 100;
$y = 50;
var_dump($x > $y); // vrace true jer je $x vece od $y
echo "<br/><br/>";
var_dump($x < $y); // vrace false jer je $x vece od $y
echo "<br/><br/>";

$x = 50;
$y = 50;
var_dump($x >= $y); // vrace true jer je $x vece ili jednako od $y
echo "<br/><br/>";
var_dump($x <= $y); // vrace true jer je $x manje ili jednako od $y
echo "<br/><br/>";

?>