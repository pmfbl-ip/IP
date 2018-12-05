<!DOCTYPE html>
<html>
<body>

<?php
$vidovdan = strtotime("Jun 28");
if( $vidovdan > time() )
{
  $d2 = ceil( ($vidovdan-time())/60/60/24 );
}
else
{
	$d2 = ceil( (strtotime("+1 year", $vidovdan) - time()) /60/60/24 );
}
echo "Ima jos " . $d2 ." dana do Vidovdana.<br/>";

$srpskaNova = strtotime("Jan 13");
if( $srpskaNova > time() )
{
  $d2 = ceil( ($srpskaNova-time())/60/60/24 );
}
else
{
	$d2 = ceil( (strtotime("+1 year", $srpskaNova) - time()) /60/60/24 );
}
echo "Ima jos " . $d2 ." dana do Srpske nove godine.";

?>

</body>
</html>