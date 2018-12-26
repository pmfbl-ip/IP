<?php

$x = array("a" => "red", "b" => "green"); 
echo "\$x: ";
print_r($x); 
echo "<br/>";
var_dump( $x );
var_dump( $x["a"]);
var_dump( $x["b"]);
echo "<br/><br/>";

$y = array("c" => "blue", "d" => "yellow"); 
echo "\$y: ";
print_r($y); 
echo "<br/>";
var_dump($y); 
echo "<br/><br/>";


$odg = $x + $y; // nadovezivanje $y u nastavak $x
echo "\$x+\$y: ";
print_r($odg); 
echo "<br/><br/>";

$odg =  ($x == $y); // provera jednakosti nizova
echo "\$x==\$y: ";
var_dump($odg); 
echo "<br/><br/>";

$z = array("b" => "green", "a" => "red"); 
echo "\$z: ";
print_r($z); 
echo "<br/><br/>";

$odg =  ($x == $z); // provera jednakosti nizova
echo "\$x==\$z: ";
var_dump($odg); 
echo "<br/><br/>";

$odg =  ($x === $z); // provera identicnosti nizova
echo "\$x===\$z: ";
var_dump($odg); 
echo "<br/><br/>";


$odg =  ($x != $y); // provera nejednakosti nizova
echo "\$x!=\$y: ";
var_dump($odg); 
echo "<br/><br/>";

$odg =  ($x <> $z); // provera nejednakosti nizova
echo "\$x<>\$z: ";
var_dump($odg); 
echo "<br/><br/>";

$odg =  ($x !== $z); // provera neidenticnosti nizova
echo "\$x!==\$z: ";
var_dump($odg); 
echo "<br/><br/>";

?> 