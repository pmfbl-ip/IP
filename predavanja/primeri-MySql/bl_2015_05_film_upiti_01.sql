use bl_2015_05_film;

-- filmovi i reziseri
select f.Naziv, concat(r.Ime, ' ', r.Prezime) as Reziser
from film f, rezirao fr, reziser r  
where f.FilmId = fr.FilmId
  and fr.ReziserId = r.ReziserId
order by f.Naziv;

-- filmovi i reziseri
select f.Naziv, concat(r.Ime, ' ', r.Prezime) as Reziser
from (film f inner join rezirao fr on f.FilmId = fr.FilmId)
  inner join reziser r on fr.ReziserId = r.ReziserId
order by f.Naziv;

-- filmovi i scenaristi
select f.Naziv, concat(s.Ime, ' ', s.Prezime) as Scenarista
from film f,  scenarista s 
where exists 
  (select * from pisao_scenario fs 
   where f.FilmId = fs.FilmId
    and fs.ScenaristaId = s.ScenaristaId)
order by f.Naziv;

-- filmovi i scenaristi
select f.Naziv, concat(s.Ime, ' ', s.Prezime) as Scenarista
from film f,  scenarista s 
where (f.FilmId, s.ScenaristaId) in
  (select FilmId, ScenaristaId from pisao_scenario)
order by f.Naziv;

-- filmovi i scenaristi
select f.Naziv, concat(s.Ime, ' ', s.Prezime) as Scenarista
from film f,  pisao_scenario fs, scenarista s 
where f.FilmId = fs.FilmId
  and fs.ScenaristaId = s.ScenaristaId
order by f.Naziv;

-- filmovi i scenaristi
select f.Naziv, concat(s.Ime, ' ', s.Prezime) as Scenarista
from (film f inner join pisao_scenario fs on f.FilmId = fs.FilmId)
  inner join scenarista s on fs.ScenaristaId = s.ScenaristaId
order by f.Naziv;

-- filmovi i scenaristi (ukljuceni svi filmovi i oni koji imaju i oni koji nemaju scenaristu)
select f.Naziv, concat(s.Ime, ' ', s.Prezime) as Scenarista
from (film f left join pisao_scenario fs on f.FilmId = fs.FilmId)
  left join scenarista s on fs.ScenaristaId = s.ScenaristaId
order by f.Naziv;

-- filmovi koji nemaju scenarista 
select f.Naziv
from film f 
where f.FilmId  not in
  (select FilmId from pisao_scenario)
order by f.Naziv;

-- filmovi koji nemaju scenarista 
select f.Naziv
from film f 
where not exists 
  (select FilmId from pisao_scenario fs 
   where f.FilmId = fs.FilmId ) 
order by f.Naziv;

-- filmovi koji nemaju scenarista 
select f.Naziv
from film f left join pisao_scenario fs on f.FilmId = fs.FilmId
where fs.ScenaristaId is null 
order by f.Naziv;

-- scenaristi i filmovi (ukljuceni svi scenaristi)
select f.Naziv, concat(s.Ime, ' ', s.Prezime) as Scenarista
from (scenarista s left join pisao_scenario fs on fs.ScenaristaId = s.ScenaristaId)
  left join film f  on f.FilmId = fs.FilmId 
order by Scenarista;

-- scenaristi koji nemaju filmova 
select f.Naziv, concat(s.Ime, ' ', s.Prezime) as Scenarista
from (scenarista s left join pisao_scenario fs on fs.ScenaristaId = s.ScenaristaId)
  left join film f  on f.FilmId = fs.FilmId
where f.FilmId is null 
order by f.Naziv;

-- filmovi i glumci
select f.Naziv, g.Ime, g.Prezime
from film f, glumio fg, glumac g  
where f.FilmId = fg.FilmId
  and fg.GlumacId = g.GlumacId
order by f.Naziv;

-- filmovi i glumci
select f.Naziv, concat(g.Ime, ' ', g.Prezime) as Glumac
from (film f inner join glumio fg on f.FilmId = fg.FilmId)
  inner join glumac g on fg.GlumacId = g.GlumacId
order by f.Naziv;

-- filmovi i glumci (ukljuceni svi filmovi)
select f.Naziv, concat(g.Ime, ' ', g.Prezime) as Glumac
from (film f left join glumio fg on f.FilmId = fg.FilmId)
  left join glumac g on fg.GlumacId = g.GlumacId
order by f.Naziv;



