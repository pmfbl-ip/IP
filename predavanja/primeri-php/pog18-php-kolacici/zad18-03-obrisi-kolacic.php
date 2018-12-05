<!DOCTYPE html>
<?php
// podesi da je kolacic 'korisnik' istekao pre sat vremena
setcookie("korisnik", "XXX", time() - 3600);
?>
<html>
<body>

<?php
echo "Kolacic 'korisnik' je obrisan.";
?>

</body>
</html>