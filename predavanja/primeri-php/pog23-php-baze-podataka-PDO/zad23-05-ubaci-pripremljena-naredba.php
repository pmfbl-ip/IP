<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "var_filmovi";

try 
{
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // priprmljena naredba i parametri za povezivanje
    $stmt = $conn->prepare("INSERT INTO drzava (Naziv) 
    VALUES (:nazivDrzave)");
    $stmt->bindParam(':nazivDrzave', $drzava);
    // ubaci red
    $drzava = "Uganda";
    $stmt->execute();
    // ubaci jos jedan red
    $drzava = "Gana";
    $stmt->execute();
    // ubaci jos jedan red
    $drzava = "Kenija";
    $stmt->execute();
    echo "Uspesno su uneseni novi elementi";
}
catch(PDOException $e)
{
    echo "Greska: " . $e->getMessage();
}
$conn = null;
?>