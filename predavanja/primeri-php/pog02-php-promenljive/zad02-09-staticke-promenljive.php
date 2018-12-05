<?php
function myTest() 
{
	static $x = 0;
	echo $x;
	$x++;
}
myTest(); // prikazuje 0
myTest(); // prikazuje 1
myTest(); // prikayuje 2
?>