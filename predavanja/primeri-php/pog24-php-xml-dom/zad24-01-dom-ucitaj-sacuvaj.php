<?php
$xmlDoc = new DOMDocument();
$xmlDoc->load("poruka.xml");

print $xmlDoc->saveXML();
?>