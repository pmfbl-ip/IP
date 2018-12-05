<?php
$servername = "localhost";
$username = "root";
$password = "";

echo "Pokusavamo da se povezemo" . "<br>";
// Kreiraj vezu prema bazi podataka
$conn = mysqli_connect($servername, $username, $password);

// Proveri vezu
if (!$conn) 
{
    die("Povezivanje nije uspelo: " . mysqli_connect_error()) . "<br>";
}
echo "Povezivanje je uspelo". "<br>";
echo "Pokusavamo da zatvorimo vezu" . "<br>";
// Zatvori vezu prema bazi podataka
mysqli_close($conn);
echo "Zatvaranje veze je uspelo". "<br>";
?>

