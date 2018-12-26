<?php

$sat = intval(date("H"));
//var_dump($sat);
switch( $sat )
{
    case 7: case 8: case 9: case 10: case 11:
        echo "Dobro jutro!";
        break;
    case 12: case 13: case 14; case 15: case 16:
        echo "Dobar dan!";
        break;
    default:
        echo "Dobro vece!";    
}

?>