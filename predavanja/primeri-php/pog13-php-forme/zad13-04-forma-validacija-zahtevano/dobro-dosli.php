<!DOCTYPE HTML> 
<html>
<head>
  <meta charset="UTF-8">
  <style>
    .error {color: #FF0000;}
  </style>
</head>
<body> 

<?php
// postavi promenljive na prazne niske
$imeGreska = $emailGreska = $polGreska = $sajtGreska = "";
$ime = $email = $pol = $komentar = $sajt = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") 
{
   if (empty($_POST["ime"])) 
   {
     $imeGreska = "Име је захтевано поље";
   } 
   else 
   {
     $ime = test_input($_POST["ime"]);
   }
   
   if (empty($_POST["email"])) {
     $emailGreska = "Адреса електронске поште је захтевано поље";
   } 
   else 
   {
     $email = test_input($_POST["email"]);
   }
   if (empty($_POST["sajt"])) {
     $sajt = "";
   } 
   else 
   {
     $sajt = test_input($_POST["sajt"]);
   }
   if (empty($_POST["komentar"])) 
   {
     $komentar = "";
   } 
   else 
   {
     $komentar = test_input($_POST["komentar"]);
   }
   if (empty($_POST["pol"])) 
   {
     $polGreska = "Пол је захтевано поље";
   } 
   else 
   {
     $pol = test_input($_POST["pol"]);
   }
}

function test_input($data) {
   $data = trim($data);
   $data = stripslashes($data);
   $data = htmlspecialchars($data);
   return $data;
}
?>

<h2>Пример валидације форме</h2>
<p><span class="error">* је захтевано поље.</span></p>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
   Име: <input type="text" name="ime">
   <span class="error">* <?php echo $imeGreska;?></span>
   <br><br>
   Електронска пошта: <input type="text" name="email">
   <span class="error">* <?php echo $emailGreska;?></span>
   <br><br>
   Веб сајт: <input type="text" name="sajt">
   <span class="error"><?php echo $sajtGreska;?></span>
   <br><br>
   Коментар: <textarea name="komentar" rows="5" cols="40"></textarea>
   <br><br>
   Пол:
   <input type="radio" name="pol" value="female">Женски
   <input type="radio" name="pol" value="male">Мушки
   <span class="error">* <?php echo $polGreska;?></span>
   <br><br>
   <input type="submit" name="submit" value="Submit"> 
</form>

<?php
echo "<h2>Ваш унос:</h2>";
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