<?php
// Array with names
$a[] = "Anka";
$a[] = "Beba";
$a[] = "Cedomir";
$a[] = "Dijana";
$a[] = "Eva";
$a[] = "Filip";
$a[] = "Goran";
$a[] = "Hoze";
$a[] = "Igor";
$a[] = "Jovan";
$a[] = "Katarina";
$a[] = "Lepa";
$a[] = "Nikola";
$a[] = "Obrad";
$a[] = "Petar";
$a[] = "Alisa";
$a[] = "Rakel";
$a[] = "Mitar";
$a[] = "Dimitrije";
$a[] = "Marko";
$a[] = "Vera";
$a[] = "Rade";
$a[] = "Mileva";
$a[] = "Sofija";
$a[] = "Sanja";
$a[] = "Nebojsa";
$a[] = "Slobodan";
$a[] = "Vladan";
$a[] = "Vladimir";
$a[] = "Zarko";

// odredi vrednost parametra q iz URL-a
$q = $_REQUEST["q"];

$sugestija = "";

// ako je $q razlicito od "", pokupi sve sugestije iz niza $a 
if ($q !== "") 
{
    $q = strtolower($q);
    $len=strlen($q);
    foreach($a as $name) 
    {
        if (stristr($q, substr($name, 0, $len))) {
            if ($sugestija === "") {
                $sugestija = $name;
            } else {
                $sugestija .= ", $name";
            }
        }
    }
}

// AKo nije nadjena korektna sugestija, tj. ako je $sugestija prazna, prikazi tekst "nema sugestija"  
echo $sugestija === "" ? "nema sugestija" : $sugestija;
?>