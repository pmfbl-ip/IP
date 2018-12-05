<?php
session_start();
?>
<!DOCTYPE html>
<html>
<body>

<?php
// ovim se 'pregazi' dosadasnja vrednost promenljive sesije
$_SESSION["omiljena.boja"] = "zuta";
// ovim se podesi nova promenljiva sesije
$_SESSION["omiljeni.film"] = "Big Lebowski";
// prikazi sve promenljive sesije
print_r($_SESSION);
?>

</body>
</html>