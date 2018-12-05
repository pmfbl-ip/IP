<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "var_filmovi";

try 
{
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // pocetak transakcije
    $conn->beginTransaction();
    // our SQL statememtns
    $drzava = 'Belgija';
    $conn->exec("INSERT INTO drzava (Naziv) " .
    "VALUES ( ' ". $drzava ." ' )");
    $drzava = 'Holandija';
    $conn->exec("INSERT INTO drzava (Naziv) " .
    "VALUES ( ' ". $drzava ." ' )");
    $drzava = 'Luksemburg';
    $conn->exec("INSERT INTO drzava (Naziv) " .
    "VALUES ( ' ". $drzava ." ' )");
    // commit transakcije
    $conn->commit();
    echo "Novi elementi su uspesno uneseni";
}
catch(PDOException $e)
{
    // roll back transakcije ako nesto nije bilo OK
    $conn->rollback();
    echo "Greska: " . $e->getMessage();
}
$conn = null;
?>