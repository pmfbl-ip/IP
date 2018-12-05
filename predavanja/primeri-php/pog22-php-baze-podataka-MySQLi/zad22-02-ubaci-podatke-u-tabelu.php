<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "var_filmovi";

// Kreiranje veze
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Provera veze
if (!$conn) 
{
    die("Povezivanje nije uspelo: " . mysqli_connect_error());
}
$vrednost = 'Nemacka';
$sql = "INSERT INTO drzava (Naziv) " .
"VALUES ( ' ". $vrednost ." ' )";
// izvrsenje SQL upita i provera vracene vrednosti
if (mysqli_query($conn, $sql)) 
{
    echo "Novi elemenat je uspesno dodat";
} 
else 
{
    echo "Greska: " . $sql . "<br>" . mysqli_error($conn);
}
// Zatvaranje veze
mysqli_close($conn);
?>

