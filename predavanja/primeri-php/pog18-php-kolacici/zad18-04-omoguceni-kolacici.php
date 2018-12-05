<!DOCTYPE html>
<?php
setcookie("test_kolacic", "test", time() + 3600, '/');
?>
<html>
<body>

<?php
if(count($_COOKIE) > 0) 
{
     echo "Kolacici su omoguceni.";
} 
else 
{
     echo "Kolacici nisu omoguceni.";
}
?>

</body>
</html>