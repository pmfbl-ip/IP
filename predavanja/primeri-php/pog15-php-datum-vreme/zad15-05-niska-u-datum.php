<!DOCTYPE html>
<html>
<body>

<?php
$d=strtotime("10:30pm April 15 2014");
echo "Kreiran je datum i vreme " . date("Y-m-d h:i:sa", $d). "<br>";

$d=strtotime("tomorrow");
echo "Kreiran je datum i vreme " . date("Y-m-d h:i:sa", $d) . "<br>";

$d=strtotime("next Saturday");
echo "Kreiran je datum i vreme " . date("Y-m-d h:i:sa", $d) . "<br>";

$d=strtotime("+3 Months");
echo "Kreiran je datum i vreme " .date("Y-m-d h:i:sa", $d) . "<br>";
?>

</body>
</html>