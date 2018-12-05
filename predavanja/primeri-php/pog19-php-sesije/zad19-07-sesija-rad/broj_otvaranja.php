<?php session_start(); ?>
<html>
<head>
<title>Broj otvaranja stranice</title>
</head>
<body>
<?php
   if (isset($_SESSION["broj"]))
     $_SESSION["broj"]++;
   else
     $_SESSION["broj"] = 1;

   echo "Ovu stranicu ste otvorili: {$_SESSION["broj"]} puta";

?>
</body>
</html>

