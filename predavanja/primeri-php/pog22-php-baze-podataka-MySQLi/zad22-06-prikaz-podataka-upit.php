<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
</head>
<body>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "var_filmovi";

$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn) 
{
    die("Povezivanje na bazu nije uspelo: " . mysqli_connect_error());
}

$sql = "SELECT DrzavaId, Naziv FROM drzava";
// izvrsi upit
$result = mysqli_query($conn, $sql);
// prikazi dobijeni rezultat
if (mysqli_num_rows($result) > 0) 
{
    // prikazi podake tako sto se dohvata red po red iz rezultata
    while($row = mysqli_fetch_assoc($result)) 
    {
        echo "id: " . $row["DrzavaId"]. " - Naziv: " . $row["Naziv"].  "<br>";
    }
} 
else 
{
    echo "Nema podataka.";
}
mysqli_close($conn);
?>
</body>
</html>