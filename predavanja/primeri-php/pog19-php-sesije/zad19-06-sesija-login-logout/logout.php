<?php
session_start();
if(isset($_SESSION['name']))
{
   unset($_SESSION['name']);
$_SESSION = array(); 
session_unset();
session_destroy(); 
}
echo '<h1>Uspesno ste izasli iz veb aplikacije</h1>';
?>