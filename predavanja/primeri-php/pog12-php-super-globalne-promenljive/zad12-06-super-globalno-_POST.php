<html>
<head>
	<meta charset="UTF-8">
</head>
<body>

<form method="post" action=" <?php echo $_SERVER['PHP_SELF'];?> ">
  Презиме: <input type="text" name="prezime">
  <input type="submit">
</form>

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