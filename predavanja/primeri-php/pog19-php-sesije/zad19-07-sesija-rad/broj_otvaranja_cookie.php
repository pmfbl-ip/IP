<html>
<body>
<?php
   if (isset($_COOKIE["broj"])) {
       setcookie("broj", $_COOKIE["broj"] + 1);
   } else {
       setcookie("broj", 1);
   }

   echo $_COOKIE["broj"];
?>
</body>
</html>
