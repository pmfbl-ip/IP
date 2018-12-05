<!DOCTYPE html>
<?php
$imeKolacica = "korisnik";
$vrednostKolacica = "Miki Maus";
setcookie($imeKolacica, $vrednostKolacica, time() + (86400 * 30), "/"); // 86400 = 1 day
?>
<html>
<body>

Ovom stranicom se kolacic 'korisnik' podesava na vrednost 'Miki Maus', pri cemu kolacic istice za 30 dana.

</body>
</html>