<!DOCTYPE html>
<html>
<body>

<?php
$email = "  vlado.j.filipovic@gmail.com  ";
echo "\$email = '" . $email . "'<br>";

// ukloni sve ilegalne znakove iz email-a 
$email = filter_var($email, FILTER_SANITIZE_EMAIL);
echo "Sanitizovan \$email = '" . $email . "'<br>";

// validiraj e-mail
if (!filter_var($email, FILTER_VALIDATE_EMAIL) === false)
{
     echo("Radi se o validnoj email addresi");
} 
else 
{
     echo("Radi se o invalidnoj email addresi");
}
?>

</body>
</html>