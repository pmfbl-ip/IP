use bl_2015_03_film;

select f.* 
from film f;

-- Nazivi filmova i nazivi zanrova za sve filmove 
select f.Naziv, Trajanje, Godina, z.Naziv 
from film f, zanr z 
where f.ZanrId = z.ZanrId;

select f.Naziv, Trajanje, Godina, z.Naziv 
from film f inner join  zanr z
on f.ZanrId = z.ZanrId;

select f.Naziv, Trajanje, d.Naziv, Godina, z.Naziv 
from film f, zanr z, drzava d 
where f.ZanrId = z.ZanrId
and f.DrzavaId = d.DrzavaId;

select f.Naziv, Trajanje, d.Naziv, Godina, z.Naziv 
from (film f join zanr z on f.ZanrId = z.ZanrId)
join drzava d on f.DrzavaId = d.DrzavaId;

