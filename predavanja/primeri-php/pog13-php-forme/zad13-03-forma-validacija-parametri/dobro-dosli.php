<!DOCTYPE HTML> 
<html>
<head>
  	<meta charset="UTF-8">
</head>
<body> 

<?php
// postavi promenljive na prazne niske
$ime = $email = $pol = $komentar = $sajt = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") 
{
   $ime = test_input($_POST["ime"]);
   $email = test_input($_POST["email"]);
   $sajt = test_input($_POST["sajt"]);
   $komentar = test_input($_POST["komentar"]);
   $pol = test_input($_POST["pol"]);
}

function test_input($data)
 {
   $data = trim($data);
   $data = stripslashes($data);
   $data = htmlspecialchars($data);
   return $data;
}
?>

<h2>Пример валидације форме </h2>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
   Име: <input type="text" name="ime">
   <br><br>
   E-mail: <input type="text" name="email">
   <br><br>
   Веб сајт: <input type="text" name="sajt">
   <br><br>
   Коментар: <textarea name="komentar" rows="5" cols="40"></textarea>
   <br><br>
   Пол:
   <input type="radio" name="pol" value="female">Женски
   <input type="radio" name="pol" value="male">Мушки
   <br><br>
   <input type="submit" name="submit" value="Submit"> 
</form>

<?php
echo "<h2>Унесено је:</h2>";
echo $ime;
echo "<br>";
echo $email;
echo "<br>";
echo $sajt;
echo "<br>";
echo $komentar;
echo "<br>";
echo $pol;
?>

</body>
</html>