<head>
	<meta charset="UTF-8">
</head>
<body>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bl_2016_01_ispiti";

$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn) 
{
    die("Povezivanje na bazu nije uspelo: " . mysqli_connect_error());
}

$sql =  "SELECT p.Naziv Ime, COUNT(pol.PolozioId) Broj " . 
        "FROM Predmet p, Polozio pol " .
        "WHERE p.PredmetId = pol.PredmetId ".
        "GROUP BY p.PredmetId; ";
// izvrsi upit
$result = mysqli_query($conn, $sql);
var_dump( $result);
// prikazi podake tako sto se dohvata red po red iz rezultata
while($row = mysqli_fetch_assoc($result)) 
{
    echo "Predmet: " . $row["Ime"]. " " ." - Broj stidenata: " . $row["Broj"].  "<br>";
}
mysqli_close($conn);
?>
</body>
</html>

