<?php

function myTestN() 
{
	$x = 0;
	echo $x;
	$x++;
}
myTestN(); // prikazuje 0
myTestN(); // prikazuje 0
myTestN(); // prikazuje 0
myTestN(); // prikazuje 0

echo("---");

function myTestS() 
{
	static $x = 0;
	echo $x;
	$x++;
}
myTestS(); // prikazuje 0
myTestS(); // prikazuje 1
myTestS(); // prikazuje 2
myTestS(); // prikazuje 3
?>