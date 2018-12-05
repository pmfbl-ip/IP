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

$email = "miki@example...com";
try 
{
  if(filter_var($email, FILTER_VALIDATE_EMAIL) === FALSE) 
  {
    //izbaci izuzetak ako e-mail nije validan
    throw new emailException($email);
  }
  //proveri da li e-mail sadrzi rec 'example'
  if(strpos($email, "example") !== FALSE) {
    throw new Exception("$e-mail adresa sadrzi rec 'example'");
  }
}
catch (emailException $e)
{
  echo $e->porukaGreska();
}
catch(Exception $e) 
{
  echo $e->getMessage();
}
?>