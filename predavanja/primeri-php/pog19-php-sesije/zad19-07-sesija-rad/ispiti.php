<?php session_start(); ?>
<html>
<head><title>Ispiti</title></head>
<body>
<?php
	if (isset($_SESSION["username"])) {
		echo "Ispiti za korisnika: {$_SESSION["username"]}<br />";
	// procitati ispite iz baze
	echo "<a href='login.php?logout=true'>Logout</a>";
	} else {
		echo "Morate se prvo ulogovati";
	}
?>
</body>
</html>
