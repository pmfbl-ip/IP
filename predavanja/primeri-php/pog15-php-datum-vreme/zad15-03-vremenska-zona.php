<!DOCTYPE html>
<html>
<body>

<?php
$zona = "America/New_York";
date_default_timezone_set($zona);
echo "Vreme  u zoni \"$zona\" je " . date("h:i:sa");
?>

</body>
</html>