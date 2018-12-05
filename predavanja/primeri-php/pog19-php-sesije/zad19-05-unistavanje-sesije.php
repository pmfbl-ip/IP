<?php
session_start();
?>
<!DOCTYPE html>
<html>
<body>

<?php
// ukloni sve promenljive sesije
session_unset(); 
// unisti sesiju 
session_destroy();
echo "Sve promenljive sesije su uklonjene i sesija je unistena." 
?>

</body>
</html>