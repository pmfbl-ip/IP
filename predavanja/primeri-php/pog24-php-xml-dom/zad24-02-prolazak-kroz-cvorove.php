<?php
$xmlDoc = new DOMDocument();
$xmlDoc->load("poruka.xml");

$x = $xmlDoc->documentElement;
foreach ($x->childNodes AS $cvor) 
{
  print $cvor->nodeName . " = " . $cvor->nodeValue . "<br>";
}
?>