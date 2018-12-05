<?php
session_start();
?>
<!DOCTYPE html>
<html>
<body>

<?php
// prikazi vrednosti promenljivi sesije
echo "Omiljena boja mi je " . $_SESSION["omiljena.boja"] . ".<br>";
echo "Omiljena zivotinja mi je " . $_SESSION["omiljena.zivotinja"] . ".";
?>

</body>
</html>