<?php session_start(); ?>
<html>
<head>
<title>Login</title>
</head>
<body>
<h1>Logovanje realizovano preko sesija</h1>

<?php
   include('db.inc');

   function login_form() {
?>
	<form method="post">
	<label>Username: </label>
	<input type='text' name='username' />
	<label>Password: </label>
	<input type='password' name='password' />
	<input type='submit' value='Login' />
	</form>
<?php
   }

   function proveri($u, $p) {
     
      db_connect();
      $p1 = substr(md5("pozdrav".$p."svima"), 0, 8);
      $query = "SELECT * FROM korisnici WHERE
             username='$u' AND password='$p1'";
      $result = mysql_query($query) or die(mysql_error());
      $num = mysql_num_rows($result);
      db_disconnect();
      return $num > 0;      
   }

   if ($_GET["logout"] == "true") {
	session_destroy();
	echo "Uspesno ste se izlogovali";
	login_form();
   } else if (isset($_POST["username"]) && 
       isset($_POST["password"])) {
        if (!proveri($_POST["username"], 
                     $_POST["password"]))
		echo "Pogresno ime i/ili lozinka";
	else {
		echo "Uspesno ste se ulogovali <br />";
		$_SESSION["username"] = $_POST["username"];		
		echo "<a href='ispiti.php'>Vidi ispite</a>";
	}
   } else {
	login_form();
   }
?>
</body>
</html>
