<!DOCTYPE html>
<html>
<body>

<?php
$int = 0;
echo "Ceo broj: " . $int . "<br>";

if (filter_var($int, FILTER_VALIDATE_INT) === 0 || !filter_var($int, FILTER_VALIDATE_INT) === false) 
{
     echo("Ceo broj je validan!");
} else {
     echo("Ceo broj nije validan!");
}
?>

</body>
</html>