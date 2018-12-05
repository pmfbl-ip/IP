<!DOCTYPE html>
<html>
<body>

<?php
$x = 10; 
echo $x;
echo "<br/><br/>";

echo ++$x;  // prefiksno inkrementiranje - prvo se inkrementira, a onda se vrati vrednost
echo "   ";
echo $x;
echo "<br/><br/>";

$x = 10; 
echo $x++;  // postfiksno inkrementiranje - prvo se vrati vrednost, a onda se inkrementira
echo "   ";
echo $x;
echo "<br/><br/>";

$x = 10; 
echo --$x;  // prefiksno dekrementiranje - prvo se dekrementira, a onda se vrati vrednost
echo "   ";
echo $x;
echo "<br/><br/>";

$x = 10; 
echo $x--;  // postfiksno dekrementiranje - prvo se vrati vrednost, a onda se dekrementira
echo "   ";
echo $x;
echo "<br/><br/>";
?>   

</body>
</html>