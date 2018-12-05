-- Svi podaci o filmovima posle 1980
select * 
from film 
where godina > 1980;

-- Svi podaci o filmovima, ukljucujuci i naziv zanra, 
-- posle 1980
select film.*, zanr.* 
from film, zanr
where film.ZanrId = zanr.ZanrId
and godina > 1980;