<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "var_filmovi";

$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn) 
{
    die("Neuspesno povezivanje: " . mysqli_connect_error());
}

$drzava = 'Belgija';
$sql = "INSERT INTO drzava (Naziv) " .
    "VALUES ( ' ". $drzava ." ' );";
$drzava = 'Holandija';
$sql .= "INSERT INTO drzava (Naziv) " .
    "VALUES ( ' ". $drzava ." ' );";
$drzava = 'Luksemburg';
$sql .= "INSERT INTO drzava (Naziv) " .
    "VALUES ( ' ". $drzava ." ' )";
if (mysqli_multi_query($conn, $sql)) 
{
    echo "Novi elementi su uspesno dodati";
} 
else 
{
    echo "Greska: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);
?>

