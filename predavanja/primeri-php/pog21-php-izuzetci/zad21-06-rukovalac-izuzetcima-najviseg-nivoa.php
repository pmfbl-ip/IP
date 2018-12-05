<?php
function mojIzuzetak($exception) 
{
  echo "<b>Izuzetak:</b> " . $exception->getMessage() . 
        "<br>u liniji " . $exception->getLine() .
        "<br>datoteke " . $exception->getFile();
}

set_exception_handler('mojIzuzetak');

throw new Exception('Doslo je do neuhvacenog izuzetka!');

throw new Exception('TRla baba lan, da joj prodje dan!');
?>