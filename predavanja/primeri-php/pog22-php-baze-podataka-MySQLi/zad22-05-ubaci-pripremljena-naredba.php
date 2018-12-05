<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "var_filmovi";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) 
{
    die("Neuspesno povezivanje: " . $conn->connect_error);
}
// kreiraj pripremljenu naredbu i parametre za povezivanje
$stmt = $conn->prepare("INSERT INTO drzava (Naziv) VALUES (?)");
$stmt->bind_param("s", $drzava);
// podesi vrednost parametra i izvrsi naredbu
$drzava = "Kenija";
$stmt->execute();
// podesi vrednost parametra i izvrsi naredbu
$drzava = "Gabon";
$stmt->execute();
// podesi vrednost parametra i izvrsi naredbu
$drzava = "Kongo";
$stmt->execute();
// prikazi poruku
echo "Novi elementi su uspesno dodati";
// zatvori pripremljenu naredbu
$stmt->close();
// zatvori vezu
$conn->close();
?>

