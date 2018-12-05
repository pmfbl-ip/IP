use bl_2015_04_film;

select * from film;

-- svi filmovi sa zanrom, drzavom i reziserom
select f.Naziv, z.Naziv as Zanr, f.Godina, d.Naziv as Drzava, 
  concat(r.Prezime, ' ', r.Ime ) as Reziser, f.Zarada
from film as f, zanr as z, drzava as d, reziser as r
where f.DrzavaId = d.DrzavaId
  and f.ZanrId = z.ZanrId
  and f.ReziserId = r.ReziserId;
  
-- svi filmovi iz USA sa zanrom, drzavom i reziserom
select f.Naziv, z.Naziv as Zanr, f.Godina, d.Naziv as Drzava, 
  concat(r.Prezime, ' ', r.Ime ) as Reziser, f.Zarada
from film as f, zanr as z, drzava as d, reziser as r
where f.ZanrId = z.ZanrId
  and f.DrzavaId = d.DrzavaId
  and f.ReziserId = r.ReziserId
  and d.Naziv = 'USA';
  
-- svi filmovi iz USA sa zanrom, drzavom i reziserom
-- koristi se inner join
select f.Naziv, z.Naziv as Zanr, f.Godina, d.Naziv as Drzava, 
  concat(r.Prezime, ' ', r.Ime ) as Reziser, f.Zarada
from (((film as f inner join zanr as z on f.ZanrId = z.ZanrId)
  inner join drzava as d on f.DrzavaId = d.DrzavaId)
  inner join reziser as r on f.ReziserId = r.ReziserId)
where d.Naziv = 'USA';

-- svi filmovi gde je reziser iz USA sa zanrom, drzavom i reziserom
select f.Naziv, z.Naziv as Zanr, f.Godina, d.Naziv as Drzava, 
  concat(r.Prezime, ' ', r.Ime ) as Reziser, f.Zarada
from film as f, zanr as z, drzava as d, reziser as r, 
  drzava as rd
where f.ZanrId = z.ZanrId
  and f.DrzavaId = d.DrzavaId
  and f.ReziserId = r.ReziserId
  and r.DrzavaId = rd.DrzavaId
  and rd.Naziv = 'USA';
  
-- svi filmovi gde je reziser iz USA sa zanrom, drzavom i reziserom
-- koristi se inner join
select f.Naziv, z.Naziv as Zanr, f.Godina, d.Naziv as Drzava, 
  concat(r.Prezime, ' ', r.Ime ) as Reziser, f.Zarada
from ((((film as f inner join zanr as z on f.ZanrId = z.ZanrId)
  inner join drzava as d on f.DrzavaId = d.DrzavaId)
  inner join reziser as r on f.ReziserId = r.ReziserId)
  inner join drzava rd on r.DrzavaId = rd.DrzavaId )
where rd.Naziv = 'USA';