<?php

$uzrast = array("Petar"=>"35", "Marko"=>"37", "Janko"=>"43", "Milos"=>20);

foreach($uzrast as $elem_kljuc => $elem_vrednost) 
{
    echo "Kljuc=" . $elem_kljuc . ", Vrednost=" . $elem_vrednost;
    echo "<br/>";
}

?>