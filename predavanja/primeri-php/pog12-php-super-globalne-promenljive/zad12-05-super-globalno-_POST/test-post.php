<html>
<head>
	<meta charset="UTF-8">
</head>
<body>

<?php
if ($_SERVER["REQUEST_METHOD"] == "POST")
 {
    // pokupi vrednosti iz ulaznih polja
    $prezime = $_POST['prezime'];
    if (empty($prezime)) 
		{
        echo "Презиме је празно.";
    } else 
    {
        echo "Здраво, " . $prezime . ".";
    }
}
?>

</body>
</html>