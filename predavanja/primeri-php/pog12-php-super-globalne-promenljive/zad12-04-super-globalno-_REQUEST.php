<html>
<body>

<form method="post" action=" <?php echo $_SERVER['PHP_SELF'];?> ">
  Prezime: <input type="text" name="prezime">
  <input type="submit">
</form>

<?php

if ($_SERVER["REQUEST_METHOD"] == "POST")
 {
    // pokupi vrednosti iz ulaznih polja
    $prezime = $_REQUEST['prezime'];
    if (empty($prezime)) 
		{
        echo "Prezme je prazno.";
    } else 
		{
        echo "Zdravo, " . $prezime . ".";
    }
}

?>

</body>
</html>