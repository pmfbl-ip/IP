<?php

class Auto 
{
    function Auto() 
	{
        $this->model = "Fica";
    }
}

// kreiraj objekat
$buba = new Auto();
// prikazi osobine objekta
echo $buba->model;
echo "<br/>";
// izvrsi prikaz objekta
var_dump( $buba );
?>