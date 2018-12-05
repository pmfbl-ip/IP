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

// pozovi funkciju tako da bude izbacen izuzetak
proveriBroj(2);
?>