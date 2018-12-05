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

<br><br> Prikaz dvodimenzionalnog niza: <br>
<?php
for ($i = 0; $i < count($auta); $i++) 
{
  echo "<p><b>VrstAuto $i</b></p>";
  echo "<ul>";
  for ($j = 0; $j < count($auta[0]); $j++) 
  {
    echo "<li>".$auta[$i][$j]."</li>";
  }
  echo "</ul>";
}
?>

</body>
</html>