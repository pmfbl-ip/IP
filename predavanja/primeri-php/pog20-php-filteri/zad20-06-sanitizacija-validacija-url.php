<!DOCTYPE html>
<html>
<body>

<?php
$url = "   http://www.matf.bg.ac.rs/~vladaf ";
echo "\$url = '" . $url . "'<br>";

// ukloni sve ilegalne znakove iz url-a 
$url = filter_var($url, FILTER_SANITIZE_URL);
echo "Sanitizovan \$url = '" . $url . "'<br>";

// validiraj url
if (!filter_var($url, FILTER_VALIDATE_URL) === false) 
{
     echo("URL je validan!");
} 
else 
{
     echo("$URL nije validan!");
}
?>

</body>
</html>