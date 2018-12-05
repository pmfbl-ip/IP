<!DOCTYPE html>
<html>
<body>
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST")
 {
    // pokupi vrednosti iz ulaznih polja
    $x = $_REQUEST['prvi']; 
		echo $x;
		echo "<br/>";
		$y = $_REQUEST['drugi'];
		echo "$y<br/><br/>";
		
		$z = $x + $y;
		echo "$x + $y = $z";
		echo "<br/>";
		
		$z = $x - $y;
		echo "$x - $y = $z <br/>";
		
		$z = $x * $y;
		echo "$x * $y = $z <br/>";
		
		$z = $x / $y;
		echo "$x / $y = $z <br/>";
		
		$z = $x % $y;
		echo "$x % $y = $z ";
 }
?>   

</body>
</html>