<?php

if ($_SERVER["REQUEST_METHOD"] == "POST")
 {
    // pokupi vrednosti iz ulaznih polja
    $prezime = $_REQUEST['prezime'];
    if (empty($prezime)) 
		{
        echo "Prezme je prazno.";
    } else 
		{
        echo "Zdravo, " . $prezime . ".";
    }
}

?>
