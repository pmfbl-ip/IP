<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "var_filmovi";

try 
{
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // sql naredba za brisanje
    $sql = "DELETE FROM Drzava WHERE DrzavaId=30";

    // koristi se exec() jer se ne veacaju rezultati
    $conn->exec($sql);
    echo "Nije bilo greske pri brisanju podataka";
}
catch(PDOException $e)
{
    echo "Greska pri brisanju podataka: " . $sql . "<br>" . $e->getMessage();
}
$conn = null;
?>


