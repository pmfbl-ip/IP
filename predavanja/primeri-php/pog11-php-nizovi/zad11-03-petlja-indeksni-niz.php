<?php

$auta = array("Volvo", "BMW", "Tojota", "Zastava", "Fiat", "Opel");

for($i = 0; $i < count($auta); $i++) 
{
    echo $auta[$i];
    echo "<br/>";
}

echo "---"."<br/>";

for($i = count($auta)-1; $i>=0; $i--) 
{
    echo $auta[$i];
    echo "<br/>";
}

echo "---"."<br/>";

foreach( $auta as $a)
{
    echo $a;
    echo "<br/>";  
}

?>