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
// SQL naredba za azuriranje
$sql = "UPDATE Drzava SET Naziv='Srbija' WHERE DrzavaId=3";

if (mysqli_query($conn, $sql)) 
{
    echo "Nije doslo do greske prilikom azuriranja podataka";
} 
else 
{
    echo "Greska pri azuriranju podataka: " . mysqli_error($conn);
}

mysqli_close($conn);
?>