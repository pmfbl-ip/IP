use bl_2015_06_film;

-- podaci o filmovima
SELECT * FROM film;

-- podaci o prihodu i rashodu filmovima
SELECT FilmId, Prihod, Trosak 
FROM film;

-- podaci o prihodu i rashodu filmovima po drzavama
SELECT DrzavaId, Sum(Prihod) as UkupanPrihod, Sum(Trosak) as UkupanTrosak 
FROM film
GROUP BY DrzavaId;

-- podaci o zaradama filmovima po drzavama
SELECT DrzavaId, Sum(Prihod-Trosak) as UkupnaZarada 
FROM film
GROUP BY DrzavaId;

-- podaci o zaradama filmovima po drzavama
SELECT d.DrzavaId, d.Naziv, Sum(f.Prihod-f.Trosak) as UkupnaZarada 
FROM film as f inner join drzava as d
on f.DrzavaId = d.DrzavaId
GROUP BY d.DrzavaId, d.Naziv;


-- podaci o zaradama filmovima po drzavama
-- gde je zarada veca od 2000000
SELECT d.DrzavaId, d.Naziv, Sum(f.Prihod-f.Trosak) as UkupnaZarada 
FROM film as f inner join drzava as d
on f.DrzavaId = d.DrzavaId
GROUP BY d.DrzavaId, d.Naziv
HAVING Sum(f.Prihod-f.Trosak) > 2000000;


-- podaci o zaradama filmovima po drzavama
-- gde je zarada manja od 5000000
SELECT d.DrzavaId, d.Naziv, Sum(f.Prihod-f.Trosak) as UkupnaZarada 
FROM film as f inner join drzava as d
on f.DrzavaId = d.DrzavaId
GROUP BY d.DrzavaId, d.Naziv
HAVING UkupnaZarada < 5000000;

-- podaci o zaradama filmovima po drzavama
-- uredjeni po nazivu drzave
SELECT d.DrzavaId, d.Naziv, Sum(f.Prihod-f.Trosak) as UkupnaZarada 
FROM film as f inner join drzava as d
on f.DrzavaId = d.DrzavaId
GROUP BY d.DrzavaId, d.Naziv
ORDER BY d.Naziv;

-- podaci o zaradama filmovima po drzavama
-- uredjeni po prihodu u opadajuci poredak
SELECT d.DrzavaId, d.Naziv, Sum(f.Prihod-f.Trosak) as UkupnaZarada 
FROM film as f inner join drzava as d
on f.DrzavaId = d.DrzavaId
GROUP BY d.DrzavaId, d.Naziv
ORDER BY UkupnaZarada;

-- podaci o glumcima
select *
from glumac;

-- ukupan broj glumaca 
select count(*) as BrojGlumaca 
from glumac;

-- broj glumaca po drzavama
select DrzavaId, count(*) as BrojGlumaca 
from glumac
group by DrzavaId;

-- broj glumaca po drzavama
select d.DrzavaId, d.Naziv, count(g.GlumacId) as BrojGlumaca 
from glumac as g inner join drzava as d
on g.DrzavaId = d.DrzavaId 
group by DrzavaId, Naziv;

-- broj glumaca po filmovicma

-- broj glumaca po filmovima i drzavama

-- glumci koji su igrali u filmovima datog rezisera
