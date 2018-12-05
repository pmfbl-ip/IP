<?php

function podesiVisinu($visina = 50) 
{
    echo "Visina je : $visina <br>";
}

function podesiSirinuVisinu($sirina=100, $visina = 50) 
{
    echo "Dimenzija je : $sirina x $visina <br>";
}

podesiVisinu(350);
podesiVisinu(); // bice iskoriscena podrazumevana visina 50
podesiVisinu(135);
podesiVisinu(80);

podesiSirinuVisinu(30,40);
podesiSirinuVisinu(70);
podesiSirinuVisinu();
?>