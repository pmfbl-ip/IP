<?php

$uzrastOdrasli = array("Petar"=>35, "Marko"=>37, "Janko"=>43, "Milos"=>20);

$uzrastDeca = array("Novak"=>5, "Mirko"=>7, "Danko"=>13, "Milan"=>6);

function prosecanUzrast( $niz)
{
  $broj = count($niz);
  //var_dump($broj);
  $sumaGodina = 0;
  foreach( $niz as $k => $v )
  {
      $sumaGodina += $v;
  }
  //var_dump($sumaGodina);
  return ($sumaGodina/$broj);
}

echo "Prosecan uzrast za "; 
print_r($uzrastOdrasli);
echo "je " . prosecanUzrast($uzrastOdrasli) . "<br/>";

echo "Prosecan uzrast za "; 
print_r($uzrastDeca);
echo "je " . prosecanUzrast($uzrastDeca) . "<br/>";

?>