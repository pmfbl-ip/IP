<!DOCTYPE html>
<html>
<body>
<?php
$auta = array
  (
  array("Volvo",22,18),
  array("BMW",15,13),
  array("Saab",5,2),
  array("Land Rover",17,15)
  );
?>
Prikaz dvodimenzionalnog niza: <br>
<?php

echo $auta[0][0].": Na zalihama".$auta[0][1].", prodato: ".$auta[0][2].".<br>";
echo $auta[1][0].": Na zalihama".$auta[1][1].", prodato: ".$auta[1][2].".<br>";
echo $auta[2][0].": Na zalihama".$auta[2][1].", prodato: ".$auta[2][2].".<br>";
echo $auta[3][0].": Na zalihama".$auta[3][1].", prodato: ".$auta[3][2].".<br>";
?>
</body>
</html>