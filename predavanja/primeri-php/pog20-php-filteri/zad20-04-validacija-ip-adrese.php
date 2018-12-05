<!DOCTYPE html>
<html>
<body>

<?php
$ip = "127.0.0.1";
echo "\$ip=" . $ip . "<br>";

if (!filter_var($ip, FILTER_VALIDATE_IP) === false)
{
     echo("$ip je validna IP addresa");
} 
else 
{
     echo("$ip nije validna IP addresa");
}
?>

</body>
</html>