<?php
$x = 5; // globalni opseg vazenja

function myTest() 
{
    // koriscenje x unutar ove funkcije ce dovesti do greske
    echo "<p>Vrednost promenljive x unutar funkcije je: $x</p>";
} 
myTest();

echo "<p>Vrednost promenljive x van funkcije je: $x</p>";
?>