<?php
  session_start();
  if(!isset($_SESSION['name']))
  {
    header("location: login.php");
  }
  $name=$_SESSION['name'];
?>
<html>
<head>
  <title>Profil korisnika <?php echo $name;?></title>
</head>
<body>
  <h1>Zdravo, <?php echo $name; ?>. </h1>
  <h1>Sada si na strani PROFILE 2> </h1>
  <br/>
  <br/>
  <h3><a href="profile.php">Strana PROFILE</a></h3>
  <h3><a href="logout.php">Izlazak</a></h3>
</body>
</html>