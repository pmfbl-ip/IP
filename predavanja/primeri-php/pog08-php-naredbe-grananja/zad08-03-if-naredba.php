<?php

$sat = intval(date("H"));
if ($sat < 12) 
{
    echo "Dobro jutro!";
}
if ($sat >= 12 && $sat<16) 
{
    echo "Dobar dan!";
}
if ($sat >= 16) 
{
    echo "Dobro vece!";
}

?>