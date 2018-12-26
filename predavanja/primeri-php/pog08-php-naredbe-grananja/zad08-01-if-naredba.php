<?php

$sat = intval(date("H"));


if ($sat < 7) 
  echo "Dobro vece!";
if( $sat>=7 && $sat < 12 )
  echo "Dobro jutro!";
if ($sat>= 12 && $sat < 17) 
  echo "Dobar dan!";
if ($sat >= 17) 
{
  echo "Dobro vece!";
}

?>