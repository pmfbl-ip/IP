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
?>