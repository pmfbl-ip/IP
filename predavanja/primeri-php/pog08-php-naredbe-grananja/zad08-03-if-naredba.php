<?php

$t = date("H");
if ($t < "12") 
{
    echo "Dobro jutro!";
}
if ($t >= "12" && $t<"20") 
{
    echo "Dobar dan!";
}
if ($t >= "20") 
{
    echo "Dobro vece!";
}

?>