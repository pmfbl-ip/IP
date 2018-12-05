<!DOCTYPE html>
<?php
$imeKolacica = "korisnik";
$vrednostKolacica = "Paja Patak";
setcookie($imeKolacica, $vrednostKolacica, time() + (86400 * 30), "/"); // 86400 = 1 day
?>
<html>
<body>

Ovom stranicom se kolacic 'korisnik' podesava na vrednost 'Paja Patak', pri cemu kolacic istice za 30 dana.

</body>
</html>