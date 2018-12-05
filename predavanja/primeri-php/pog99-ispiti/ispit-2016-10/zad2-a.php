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

$sql =  "SELECT s.Ime, s.Prezime, AVG(pol.Ocjena) Prosjek " .
        "FROM Student s, Polozio pol " . 
        "WHERE s.StudentId = pol.StudentId " .
        "GROUP BY s.Student;";
// izvrsi upit
$result = mysqli_query($conn, $sql);
// prikazi podake tako sto se dohvata red po red iz rezultata
while($row = mysqli_fetch_assoc($result)) 
{
    echo "Student: " . $row["Ime"]. " " . $row["Prezime"] ." - Prosjek: " . $row["Prosjek"].  "<br>";
}
mysqli_close($conn);
?>
</body>
</html>

