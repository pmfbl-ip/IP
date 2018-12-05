<?php

$x = 100; 
echo "\$x ima vrednost $x <br/>";
$y = 50;
echo "\$y ima vrednost $y <br/><br/>";

if ($x == 100 and $y == 50) 
{
	echo "1: \$x ima vrednost 100 i \$y ima vrednost 50! <br/>";
}
if ($x == 100 && $y == 50) 
{
	echo "2: \$x ima vrednost 100 i \$y ima vrednost 50! <br/>";
}
if ($x == 100 or $y == 80) 
{
	echo "3: \$x ima vrednost 100 ili \$y ima vrednost 80! <br/>";
}
if ($x == 100 || $y == 80) 
{
	echo "4: \$x ima vrednost 100 ili \$y ima vrednost 80! <br/>";
}
if ($x == 100 xor $y == 80) 
{
	echo "5: ili \$x ima vrednost 100 ili \$y ima vrednost 80! <br/>";
}
if ($x == 100 xor $y == 50) 
{
	echo "6: ili \$x ima vrednost 100 ili \$y ima vrednost 50! <br/>";
}
if( !($x == 100 and $y == 80) ) 
{
	echo "7: \$x ima vrednost 100 i \$y ima vrednost 80! <br/>";
}
if ( !($x == 100 xor $y == 50) )
{
	echo "8: ne vazi da ili \$x ima vrednost 100 ili \$y ima vrednost 50! <br/>";
}

?> 