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
     // proveri da li ime sadrzi samo slova i praznine
     if (!preg_match("/^[a-zA-Z ]*$/",$ime)) 
     {
       $imeGreska = "Допуштена су само слова и празнине"; 
     }   
 
   }
   if (empty($_POST["email"])) {
     $emailGreska = "Адреса електронске поште је захтевано поље";
   } 
   else 
   {
     $email = test_input($_POST["email"]);
     // prover da li je e-mail adresa dobro formirana
     if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
       $emailGreska = "некоректан формат електронске адресе"; 
     }
   }
   if (empty($_POST["sajt"])) {
     $sajt = "";
   } 
   else 
   {
     $sajt = test_input($_POST["sajt"]);
    // check if URL address syntax is valid
     if (!preg_match("/\b(?:(?:https?|ftp):\/\/|www\.)[-a-z0-9+&@#\/%?=~_|!:,.;]*[-a-z0-9+&@#\/%=~_|]/i",
                      $sajt)) 
     {
       $sajtGreska = "Некоректна веб адреса сајта"; 
     } 
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
<form method="post" 
   action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
   Име: <input type="text" name="ime" value="<?php echo $ime;?>">
   <span class="error">* <?php echo $imeGreska;?></span>
   <br><br>
   Електронска пошта: <input type="text" name="email" value="<?php echo $email;?>">
   <span class="error">* <?php echo $emailGreska;?></span>
   <br><br>
   Веб сајт: <input type="text" name="sajt" value="<?php echo $sajt;?>">
   <span class="error"><?php echo $sajtGreska;?></span>
   <br><br>
   Коментар: <textarea name="komentar" rows="5" cols="40"><?php echo $komentar;?></textarea>
   <br><br>
   Пол:
   <input type="radio" name="pol" <?php if (isset($pol) && $pol=="female") echo "checked";?> value="female">Женски
   <input type="radio" name="pol" <?php if (isset($pol) && $pol=="male") echo "checked";?> value="male">Мушки
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