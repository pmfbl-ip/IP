<?php
$putanjaKoren=$_SERVER['PHP_SELF'];
// echo $putanjaKoren."<br/>";
$putanjaKoren = substr($putanjaKoren, 0, strrpos($putanjaKoren, "/"));
// echo $putanjaKoren."<br/>";
?>
<a href="<?php echo $putanjaKoren.'/index.php' ?>">Polazna strana</a>
<a href="<?php echo $putanjaKoren .'/HTML-lekcije/index.php' ?>">HTML lekcije</a> -
<a href="<?php echo $putanjaKoren . '/MySQL-lekcije/index.php' ?>">MySQL lekcije</a> -
<a href="<?php echo $putanjaKoren . '/PHP-lekcije/index.php' ?>">PHP lekcije </a>
<hr/>
