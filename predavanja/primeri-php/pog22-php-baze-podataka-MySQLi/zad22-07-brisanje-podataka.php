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

// sql naredba za brisanje
$sql = "DELETE FROM Drzava WHERE DrzavaId=31";
// izvrsi naredbu i proveri povratnu vrednost
if (mysqli_query($conn, $sql)) 
{
    echo "Nije bilo greske pri brisanju podataka";
} 
else 
{
    echo "Greska pri brisanju podataka: " . mysqli_error($conn);
}
mysqli_close($conn);
?>