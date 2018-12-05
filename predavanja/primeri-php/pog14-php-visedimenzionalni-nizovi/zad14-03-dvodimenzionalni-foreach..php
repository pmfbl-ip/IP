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
foreach ( $auta as $auto_k =>$auto_v) 
{
  echo "<p><b>VrstAuto $auto_k</b></p>";
  echo "<ul>";
  foreach ($auto_v as $elem_k => $elem_v) 
  {
    echo "<li>".$elem_v."</li>";
  }
  echo "</ul>";
}
?>

</body>
</html>