<!DOCTYPE html>
<html>
<body>

<?php
$str = "<h1>Zdravo svete!</h1>";
echo "Pre sanitizacije:" . $str . "<br>";
$noviStr = filter_var($str, FILTER_SANITIZE_STRING);
echo "Posle sanitizacije:" . $noviStr. "<br>";
?>

</body>
</html>