<?php

$t = date("H");
if ($t < "12") 
{
    echo "Dobro jutro!";
}
elseif ($t<"20") 
{
    echo "Dobar dan!";
}
else  
{
    echo "Dobro vece!";
}

?>