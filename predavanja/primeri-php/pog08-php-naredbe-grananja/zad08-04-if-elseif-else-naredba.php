<?php

$sat = intval(date("H"));
if ($sat < 7) 
    echo "Dobro vece!";
elseif ($sat < 12) 
    echo "Dobro jutro!";
elseif ($sat < 17) 
    echo "Dobar dan!";
else  
    echo "Dobro vece!";

?>