<?php
//kreiraj funkciju koja moze da izbaci izuzetak
function proveriBroj($broj) 
{
  if($broj>1) 
	{
    throw new Exception("Argument mora biti ne veci od 1!");
  }
  return true;
}

//poyiv funkcije koji izbacuje izuzetak ubaci u "try" blok
try 
{
  proveriBroj(2);
  // ako se izbaci izuzetak, naredba koja sledi nece biti izvrsena
  echo 'Ako vidite ovu poruku, argument je manji ili jednak 1.';
}
//hvataj izuzetak
catch(Exception $e) {
  echo 'Poruka: ' .$e->getMessage();
}
?>