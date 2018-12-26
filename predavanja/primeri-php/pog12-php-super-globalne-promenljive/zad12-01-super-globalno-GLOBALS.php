<?php 

$x = 75; 
echo $x . "<br/>"; 
$y = 25 . "<br/>";
echo $y; 
 
function addition() 
{ 
    $GLOBALS['z'] = $GLOBALS['x'] + $GLOBALS['y']; 
}
 
addition(); 
echo $z . "<br/>"; 

 
function addition2() 
{ 
    global $x,$y, $z;
    $z = $x + $y; 
}
addition2(); 
echo $z . "<br/>"; 

function rightStuff($x, $y)
{
    return $x + $y;
}

$z = rightStuff($x, $y);
echo $z . "<br/>"; 


?>