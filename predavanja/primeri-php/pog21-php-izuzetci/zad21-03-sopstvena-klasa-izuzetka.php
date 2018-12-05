<?php

class emailException extends Exception 
{
  public function porukaGreska() 
  {
    //poruka o gresci
    $poruka = 'Greska u liniji '.$this->getLine().' datoteke '.$this->getFile()
    .': <b>'.$this->getMessage().'</b> Izuzetak invalidne e-mail adrese.';
    return $poruka;
  }
}

$email = "miki@maus...com";
try
 {
  //proveri korektnost e-mail adrese
  if(filter_var($email, FILTER_VALIDATE_EMAIL) === FALSE) 
  {
    //izbaci izuzetak
    throw new emailException($email);
  }
}
catch (emailException $e) 
{
  //prikazi sopstvenu poruku
  echo $e->porukaGreska();
}
?>