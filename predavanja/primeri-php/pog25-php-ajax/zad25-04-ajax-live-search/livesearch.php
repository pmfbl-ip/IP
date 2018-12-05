<?php
$xmlDoc=new DOMDocument();
$xmlDoc->load("links.xml");

$x=$xmlDoc->getElementsByTagName('link');

//odredi parametar q iz URL-a
$q=$_GET["q"];

if (strlen($q)>0) 
{
  $sugestija="";
  for($i=0; $i<($x->length); $i++) 
  {
    $y=$x->item($i)->getElementsByTagName('title');
    $z=$x->item($i)->getElementsByTagName('url');
    if ($y->item(0)->nodeType==1) 
    {
      //odredi link koji odgovara tekstu pretrage
      if (stristr($y->item(0)->childNodes->item(0)->nodeValue,$q)) 
      {
        if ($sugestija=="") 
        {
          $sugestija="<a href='" . 
          $z->item(0)->childNodes->item(0)->nodeValue . 
          "' target='_blank'>" . 
          $y->item(0)->childNodes->item(0)->nodeValue . "</a>";
        } 
        else 
        {
          $sugestija=$sugestija . "<br /><a href='" . 
          $z->item(0)->childNodes->item(0)->nodeValue . 
          "' target='_blank'>" . 
          $y->item(0)->childNodes->item(0)->nodeValue . "</a>";
        }
      }
    }
  }
}

// Set output to "no suggestion" if no hint was found
// or to the correct values
if ($sugestija=="") 
{
  $odgovor="Nema sugestija.";
} 
else 
{
  $odgovor=$sugestija;
}

//prikazi odgovor
echo $odgovor;
?>