<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
</head>
<body>
<?php
echo "<table style='border: solid 1px black;'>";
echo "<tr><th>Идентификатор</th><th>Назив</th></tr>";

class TableRows extends RecursiveIteratorIterator 
{ 
    function __construct($it) 
		{ 
        parent::__construct($it, self::LEAVES_ONLY); 
    }

    function current() 
		{
        return "<td style='width:150px;border:1px solid black;'>" . parent::current(). "</td>";
    }

    function beginChildren() 
		{ 
        echo "<tr>"; 
    } 

    function endChildren() 
		{ 
        echo "</tr>" . "\n";
    } 
} 

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "var_filmovi";

try 
{
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $stmt = $conn->prepare("SELECT DrzavaId, Naziv FROM Drzava"); 
    $stmt->execute();
    // podesi da rezultujuci niz bude asocijativan
    $result = $stmt->setFetchMode(PDO::FETCH_ASSOC); 
		// prikazi elemente niza
    foreach(new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k=>$v) 
		{ 
        echo $v;
    }
}
catch(PDOException $e) 
{
    echo "Greska: " . $e->getMessage();
}
$conn = null;
echo "</table>";
?>
</body>
</html>