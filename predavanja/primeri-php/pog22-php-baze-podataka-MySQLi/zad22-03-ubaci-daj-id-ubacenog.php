<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "var_filmovi";

$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn) 
{
    die("Povezivanje nije uspelo: " . mysqli_connect_error());
}

$vrednost = 'Trinidad';
$sql = "INSERT INTO drzava (Naziv) " .
"VALUES ( ' ". $vrednost ." ' )";

if (mysqli_query($conn, $sql)) 
{
    $poslednjiId = mysqli_insert_id($conn);
    echo "Uspesno je dodat element. ID novodocdatog elementa je: " . $poslednjiId;
} 
else 
{
    echo "Greska: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>

