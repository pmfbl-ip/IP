<?php

$sat = intval(date("H"));
if ( $sat < 7) 
{
   echo "Dobro vece!";
}
else  
{
    if( $sat < 12)
        echo "Dobro jutro!";
    else
    {
        if( $sat < 17 )
            echo "Dobar dan!";
        else
            echo "Dobro vece!";
    }
    
}

?>