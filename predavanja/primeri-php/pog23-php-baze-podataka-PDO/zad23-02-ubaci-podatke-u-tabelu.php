<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "var_filmovi";

try 
{
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $vrednost = 'Nemacka';
    $sql = 
    "INSERT INTO drzava (Naziv) " .
    "VALUES ( ' ". $vrednost ." ' )";
    // koristi se funkcija exec() zato sto se ne vracaju redovi
    $conn->exec($sql);
    echo "Novi red je uspesno nesen u tabelu";
}
catch(PDOException $e)
{
    echo $sql . "<br>" . $e->getMessage();
}
$conn = null;
?>