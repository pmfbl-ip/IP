<?php
// u ovom pristupu se koriste PHP Data Objects (PDO)
$servername = "localhost";
$username = "root";
$password = "";

$conn = null;
try 
{
    echo "Pokusaj kreiranja veze prema bazi podataka. <br>";
    $conn = new PDO("mysql:host=$servername;dbname=bl_2015_05_film", $username, $password);
    // podesi PDO mod greske da generise izuzetke
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Kreiranje veze je uspelo. <br>"; 
		
}
catch(PDOException $e)
{
    echo "Kreiranje veze nije uspelo: " . $e->getMessage() . "<br>";
}
try 
{
    echo "Pokusaj zatvaranja veze prema bazi podataka. <br>";
    $conn=null;
    echo "Zatvaranje veze prema bazi podataka je uspelo. <br>"; 
		
}
catch(Exception $e)
{
    echo "Zatvaranje veze prema bazi podataka nije uspelo: " . $e->getMessage() . "<br>";
}

?>