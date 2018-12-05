<?php
// pokretanje sesije  - mora biti prva naredba
session_start();
?>
<!DOCTYPE html>
<html>
<body>

<?php
// Postavljanje promenljivih sesije
$_SESSION["omiljena.boja"] = "zelena";
$_SESSION["omiljena.zivotinja"] = "macka";
echo "Podesene su promenjive sesije.";
?>

</body>
</html>