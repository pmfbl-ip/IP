<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
</head>
<body>
<?php
$x = 45; // Ovo je komentar u jednoj liniji
	
echo $x; # Ovo je takođe komentar u jednoj liniji
	 
/*
Ovo je blokovski komentar, koji
se proteže kroz 
više linija
*/

// Komentari se mogu koristiti da bi se isključili delovi linije sa naredbom
$x = 5 /* + 15 */ + 5;
echo $x;
?>
</body>
</html>