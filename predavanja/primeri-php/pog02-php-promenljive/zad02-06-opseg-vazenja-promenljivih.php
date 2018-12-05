<?php
function myTest() 
{
    $x = 5; // lokalni opseg vazenja
    echo "<p>Vrednost promenljive x unutar funkcije je: $x</p>";
} 
myTest();

// koriscenje x van funkcije ce dovesti do greske
echo "<p>Vrednost promenljive x van funkcije je: $x</p>";
?>