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

$email = "miki@example.com";

try 
{
  try 
	{
    //proveri da li e-mail sadrzi rec 'example'
    if(strpos($email, "example") !== FALSE) 
		{
      //izbaci izuzetak
      throw new Exception($email);
    }
  }
  catch(Exception $e) 
	{
    //ponovo izbaci izuzetak
    throw new emailException($email);
  }
}
catch (emailException $e) 
{
  //prikazi sopstvenu poruku o gresci
  echo $e->porukaGreska();
}
?>