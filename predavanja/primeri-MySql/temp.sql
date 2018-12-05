select f.naziv, g.Ime, g.Prezime
from film f, glumac g, glumio fg
where f.FilmId = fg.FilmId
and g.GlumacId = fg.GlumacId
order by f.Godina desc
