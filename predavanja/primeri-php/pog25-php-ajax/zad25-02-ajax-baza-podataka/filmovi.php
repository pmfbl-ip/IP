<!DOCTYPE html>
<html>
<head>
<style>
table {
    width: 100%;
    border-collapse: collapse;
}

table, td, th {
    border: 1px solid black;
    padding: 5px;
}

th {text-align: left;}
</style>
</head>
<body>

<?php
$q = intval($_GET['q']);

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "var_filmovi";

$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn) 
{
    die("Povezivanje na bazu nije uspelo: " . mysqli_connect_error());
}

$sql="SELECT f.Naziv, f.Trajanje, f.Godina, f.Zarada, f.Opis " 
. "FROM film f, rezirao fr "
. "WHERE f.FilmId = fr.FilmId "
. "AND fr.ReziserId = " .$q.";";

$result = mysqli_query($conn,$sql);

echo "<table>
<tr>
<th>Naziv</th>
<th>Trajanje</th>
<th>Godina</th>
<th>Zarada</th>
<th>Opis</th>
</tr>";
while($row = mysqli_fetch_array($result)) {
    echo "<tr>";
    echo "<td>" . $row['Naziv'] . "</td>";
    echo "<td>" . $row['Trajanje'] . "</td>";
    echo "<td>" . $row['Godina'] . "</td>";
    echo "<td>" . $row['Zarada'] . "</td>";
    echo "<td>" . $row['Opis'] . "</td>";
    echo "</tr>";
}
echo "</table>";
mysqli_close($conn);
?>
</body>
</html>