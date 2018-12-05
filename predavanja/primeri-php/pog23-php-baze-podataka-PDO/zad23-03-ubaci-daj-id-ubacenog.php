<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "var_filmovi";

try 
{
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $vrednost = 'Trinidad';
    $sql = 
    "INSERT INTO drzava (Naziv) " .
    "VALUES ( ' ". $vrednost ." ' )";
    $conn->exec($sql);
    $idUbacenog = $conn->lastInsertId();
    echo "Novi red ciji je id '$idUbacenog' je uspesno unesen u tabelu";
}
catch(PDOException $e)
{
    echo $sql . "<br>" . $e->getMessage();
}
$conn = null;
?>