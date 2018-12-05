<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "var_filmovi";

try 
{
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // SQL naredba za azuriranje
    $sql = "UPDATE Drzava SET Naziv='Kongo' WHERE DrzavaId=29";

    // napravi pripremljneu naredbu na osnovu upita
    $stmt = $conn->prepare($sql);

    // izvrsi pripremljenu naredbu
    $stmt->execute();

    // prikazi poruku o uspehu izvrsenja naredbe azuriranja
    echo $stmt->rowCount() . " redova je uspesno azurirano";
}
catch(PDOException $e)
{
    echo "Greska pri azuriranju podataka: " . $sql . "<br>" . $e->getMessage();
}
$conn = null;
?>


