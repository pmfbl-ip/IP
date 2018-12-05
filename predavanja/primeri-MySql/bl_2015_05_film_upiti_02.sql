use bl_2015_05_film;

-- svi podaci iz tabele film
select * 
from film;

-- Naziv, trajanje, godina proizvodnje i opis iz tabele film
select Naziv, Trajanje, Godina, Opis
from film;

-- podaci iz tabele film sa trajanjem kracim od 100 minuta
select * 
from film
where Trajanje < 100;

-- podaci iz tabele film sa ocenom ne manjom od 8
select * 
from film
where Ocena >= 8;

-- podaci iz tabele film sa trajanjem kracim od 100 minuta 
-- i ocenom ne manjom od 8
select * 
from film
where Trajanje < 100
and Ocena >= 8;

-- filmovi sa ocenom manjom od 7.7 ili vecom od 8.8 
select * 
from film
where Ocena < 7.7
or Ocena > 8.8;

-- glumci cije ime pocinje sa D
select * 
from glumac
where Ime like 'Д%';

-- glumci cije se prezime zavrsava na vic
select * 
from glumac
where Prezime like '%вић';

-- glumci cije ime pocinje sa Драга, 
-- a potom sledi jos jedno slovo
select * 
from glumac
where Ime like 'Драга_';

-- filmovi sa ocenom izmedju 7.5 i 8.8 
select * 
from film
where Ocena >= 7.5 
and Ocena <= 8.8;

-- filmovi sa ocenom izmedju 7.5 i 8.8 
select * 
from film
where Ocena between 7.5 and 8.8;

-- filmovi sa rokom isticanja
select Naziv, Godina+30 Istice
from film;

-- filmovi sa proizvedeni izmedju 1989 i 2001 
select * 
from film
where Godina >=1989 
and Godina <= 2001;

-- filmovi sa proizvedeni izmedju 1989 i 2001 
select * 
from film
where Godina between 1989 and 2001;

-- svi podaci o zanrovima: akcioni, kriminalisticki, ratni
select * 
from zanr
where Naziv  = 'акциони'
or  Naziv  = 'криминалистички'
or  Naziv  = 'ратни';

-- svi podaci o zanrovima: akcioni, kriminalisticki, ratni
select * 
from zanr
where Naziv in ('акциони', 'криминалистички', 'ратни' );

-- nazivi svih filmova zanra akcioni ili kriminalisticki ili ratni
select f.Naziv, z.Naziv as Zanr
from film f, zanr z
where f.ZanrId = z.ZanrId
and z.Naziv in ('акциони', 'криминалистички', 'ратни' );

-- nazivi svih filmova koji nisu akcioni, ni kriminalisticki niti ratni
select f.Naziv, z.Naziv as Zanr
from film f, zanr z
where f.ZanrId = z.ZanrId
and z.Naziv not in ('акциони', 'криминалистички', 'ратни' );

-- filmovi i drzave 
select f.Naziv, d.Naziv Drzava, f.Zarada 
from film f, drzava d
where f.DrzavaId = d.DrzavaId;

-- filmovi, drzave i zanrovi
select f.Naziv, d.Naziv Drzava, f.Zarada, z.Naziv Zanr 
from film f, drzava d, zanr z
where f.DrzavaId = d.DrzavaId 
and f.ZanrId = z.ZanrId;

-- filmovi, drzave i zanrovi
select f.Naziv, d.Naziv Drzava, f.Zarada, z.Naziv Zanr 
from (film f inner join drzava d on f.DrzavaId = d.DrzavaId )
  inner join zanr z on f.ZanrId = z.ZanrId;

-- godine u kojima su snimani filmovi 
select Godina
from film;

-- godine (bez duplikata) u kojima 
-- su snimani filmovi
select distinct Godina
from film;

-- godine (bez duplikata) u kojima 
-- su snimani filmovi, 
-- uredjene po godini rastuce
select distinct Godina
from film
order by Godina;

-- filmovi iz SFRJ, uredjeni po godini i naslovu (opadajuce)
select f.Naziv, d.Naziv Drzava, f.Godina
from film f, drzava d 
where f.DrzavaId = d.DrzavaId  
and d.Naziv = 'SFRJ'
order by f.Godina, f.Naziv desc;

-- filmovi iz SFRJ, uredjeni po naslovu i godini (opadajuce) 
select d.Naziv Drzava, f.Naziv, f.Godina
from film f, drzava d 
where f.DrzavaId = d.DrzavaId 
and d.Naziv = 'SFRJ'
order by f.Naziv, f.Godina desc;

select sum( f.Zarada )
from film f inner join drzava d on f.DrzavaId = d.DrzavaId;

select count(*)
from film f inner join drzava d on f.DrzavaId = d.DrzavaId;

-- naziv, drzava i zarada za filmove iz SFRJ
select f.Naziv, d.Naziv Drzava, f.Zarada
from film f inner join drzava d on f.DrzavaId = d.DrzavaId 
where d.Naziv = 'SFRJ';

-- Ukupna zarada za filmove iz SFRJ
select sum( f.Zarada ) UkupnaZarada
from film f, drzava d 
where f.DrzavaId = d.DrzavaId 
and d.Naziv = 'SFRJ';

-- broj filmova iz SFRJ u tabeli film
select count(*) BrojFilmova
from film f, drzava d 
where f.DrzavaId = d.DrzavaId 
and d.Naziv = 'SFRJ';

-- prosecna zarada po filmu iz SFRJ
select avg( Zarada ) ProsecnaZarada
from film f, drzava d 
where f.DrzavaId = d.DrzavaId 
and d.Naziv = 'SFRJ';


-- najmanja zarada po filmu iz SFRJ
select min( Zarada ) NajmanjaZarada
from film f, drzava d 
where f.DrzavaId = d.DrzavaId 
and d.Naziv = 'SFRJ';

-- broj godina (duplikati su dopusteni) 
-- u kojima su snimani filmovi iz SFRJ
select count(f.Godina) BrojGodina
from film f, drzava d 
where f.DrzavaId = d.DrzavaId 
and d.Naziv = 'SFRJ';

-- broj godina (duplikati se izbacuju) 
-- u kojima su snimani filmovi iz SFRJ
select count(distinct f.Godina) BrojGodina
from film f, drzava d 
where f.DrzavaId = d.DrzavaId 
and d.Naziv = 'SFRJ';

-- Ukupna zarada za filmove iz SFRJ
select sum( f.Zarada )
from film f inner join drzava d on f.DrzavaId = d.DrzavaId 
where d.Naziv = 'SFRJ';

-- broj filmova iz SFRJ u tabeli film
select count(*)
from film f inner join drzava d on f.DrzavaId = d.DrzavaId 
where d.Naziv = 'SFRJ';

-- Drzava, naziv i zarada za sve filmove 
select d.Naziv Drzava, f.Naziv, f.Zarada
from film f, drzava d 
where f.DrzavaId = d.DrzavaId;

-- Ukupna zarada za filmove iz SFRJ
select d.Naziv, sum( f.Zarada ) UkupnaZarada
from film f, drzava d 
where f.DrzavaId = d.DrzavaId 
and d.Naziv = 'SFRJ';

-- Ukupna zarada za filmove iz USA
select d.Naziv, sum( f.Zarada ) UkupnaZarada
from film f, drzava d 
where f.DrzavaId = d.DrzavaId 
and d.Naziv = 'USA';

-- Ukupna zarada za filmove iz USA
select d.Naziv, sum( Zarada )
from film f inner join drzava d on f.DrzavaId = d.DrzavaId 
where d.Naziv = 'USA';

-- Drzava i ukupna zarada filmova, 
-- grupisana po drzavi 
select d.Naziv Drzava, 
    sum( Zarada ) ZaradaPoDrzavi
from film f, drzava d 
where f.DrzavaId = d.DrzavaId 
group by d.Naziv;

-- Drzava i ukupna zarada filmova, grupisana po drzavi 
select d.Naziv Drzava, sum( Zarada ) ZaradaPoDrzavi
from film f inner join drzava d on f.DrzavaId = d.DrzavaId 
group by Drzava;

-- Drzava i ukupna zarada filmova, grupisana po drzavi, uredjena po nazivu drzave 
select d.Naziv Drzava, sum( Zarada )
from film f inner join drzava d on f.DrzavaId = d.DrzavaId
group by Drzava
order by Drzava;

-- Drzava i ukupna zarada filmova, grupisana po drzavi, 
-- uredjena opadajuci po nazivu drzave 
select d.Naziv Drzava, sum( Zarada )
from film f inner join drzava d on f.DrzavaId = d.DrzavaId
group by Drzava
order by Drzava desc;

-- Drzava i ukupna zarada filmova, grupisana po drzavi, 
-- uredjena rastuce po ukupnoj zaradi 
select d.Naziv Drzava, sum( Zarada )
from film f inner join drzava d on f.DrzavaId = d.DrzavaId
group by Drzava
order by sum( Zarada );

-- Drzava i ukupna zarada filmova, grupisana po drzavi, 
-- uredjena opadajuce po ukupnoj zaradi 
select d.Naziv Drzava, sum( Zarada )
from film f inner join drzava d on f.DrzavaId = d.DrzavaId
group by Drzava
order by sum( Zarada ) desc;

-- Zanr, naziv i zarada za sve filmove 
select z.Naziv Zanr, f.Naziv, f.Zarada
from film f, zanr z 
where f.ZanrId = z.ZanrId;

-- Ukupna zarada za akcione flimove
select z.Naziv Zanr, 
  sum( f.Zarada ) as UkupnaZarada
from film f, zanr z 
where f.ZanrId = z.ZanrId
  and z.Naziv = 'акциони';

-- Ukupna zarada za akcione flimove
select sum( Zarada )
from film f inner join zanr z on f.ZanrId = z.ZanrId
where z.Naziv = 'акциони';

-- Ukupna zarada za komedije
select z.Naziv Zanr, 
  sum( f.Zarada ) as UkupnaZarada
from film f, zanr z 
where f.ZanrId = z.ZanrId
  and z.Naziv = 'комедија';

-- Ukupna zarada za komedije
select sum( Zarada )
from film f inner join zanr z on f.ZanrId = z.ZanrId
where z.Naziv = 'комедија';

-- Zanr i zarada po zanru, 
-- uredjena opadajuce po zaradi 
select z.Naziv as Zanr, 
  sum( Zarada ) as ZaradaPoZanru
from film f, zanr z 
where f.ZanrId = z.ZanrId
group by Zanr
order by sum( Zarada ) desc;

-- Zanr i zarada po zanru
select z.Naziv as Zanr, sum( Zarada ) as ZaradaPoZanru
from film f inner join zanr z on f.ZanrId = z.ZanrId
group by Zanr;

-- Zanr i zarada po zanru, uredjena opadajuce po zaradi 
select z.Naziv as Zanr, sum( Zarada ) as ZaradaPoZanru
from film f inner join zanr z on f.ZanrId = z.ZanrId
group by Zanr
order by sum( Zarada ) desc;

-- Zanr i zarada po zanru, uredjena opadajuce po zaradi 
select z.Naziv as Zanr, sum( Zarada ) as ZaradaPoZanru
from film f inner join zanr z on f.ZanrId = z.ZanrId
group by Zanr
order by ZaradaPoZanru desc;

-- Drzava, zanr i zarada po zanru i drzavi, 
-- uredjena po drzavi, pa po zanru
select d.Naziv Drzava, z.Naziv Zanr, 
  sum( f.Zarada ) as ZaradaPoZanruDrzavi
from film f, zanr z, drzava d 
where f.ZanrId = z.ZanrId
  and f.DrzavaId = d.DrzavaId
group by Drzava, Zanr
order by Drzava, Zanr;

-- Drzava, zanr i zarada po zanru i drzavi, 
-- uredjena po drzavi, pa po zanru
select d.Naziv Drzava, z.Naziv Zanr, 
  sum( Zarada ) as Ukupno
from (film f inner join zanr z on f.ZanrId = z.ZanrId)
  inner join Drzava d on f.DrzavaId = d.DrzavaId
group by Drzava, Zanr
order by Drzava, Zanr;

-- Drzava, zanr i zarada po zanru i drzavi, 
-- uredjena po zanru, pa po drzavi
select d.Naziv Drzava, z.Naziv Zanr, sum( Zarada ) UkupnaZarada
from (film f inner join zanr z on f.ZanrId = z.ZanrId)
  inner join Drzava d on f.DrzavaId = d.DrzavaId
group by Drzava, Zanr
order by Zanr, Drzava;

-- Drzava, zanr, zarada po zanru i drzavi   
-- i broj filmova po zanru i drzavi
select d.Naziv Drzava, z.Naziv Zanr, 
  sum( Zarada ) Ukupno, count(*) Broj
from film f, zanr z, drzava d 
where f.ZanrId = z.ZanrId
  and f.DrzavaId = d.DrzavaId
group by Drzava, Zanr;

-- Drzava, zanr, ukupna zarada po zanru i drzavi, 
-- prosecna zarada filma po zanru i drzavi
-- i broj filmova po zanru i po drzavi
-- uredjena po zanru, pa po drzavi
select d.Naziv Drzava, z.Naziv Zanr, 
  sum( Zarada ) UkupnaZarada, avg( Zarada ) ProsecnaZarada, 
  count(*) Broj
from (film f inner join zanr z on f.ZanrId = z.ZanrId)
  inner join Drzava d on f.DrzavaId = d.DrzavaId
group by Drzava, Zanr
order by Zanr, Drzava;

-- Drzava, zanr, zarada po zanru i drzavi   
-- i broj filmova po zanru i drzavi
select d.Naziv Drzava, z.Naziv Zanr, 
  sum( Zarada ) Ukupno, count(*) Broj
from film f, zanr z, drzava d 
where f.ZanrId = z.ZanrId
  and f.DrzavaId = d.DrzavaId
group by Drzava, Zanr;

-- Drzava, zanr, ukupna zarada po zanru i drzavi, 
-- gde je broj filmova po zanru i drzavi veci od 1
-- uredjena po zanru, pa po drzavi
select d.Naziv Drzava, z.Naziv Zanr, 
  sum( f.Zarada ) UkupnaZarada
from film f, zanr z, drzava d 
where f.ZanrId = z.ZanrId
  and f.DrzavaId = d.DrzavaId
group by Drzava, Zanr
having  count(f.FilmId) > 1
order by Zanr, Drzava;


-- Drzava, zanr, ukupna zarada po zanru i drzavi, 
-- prosecna zarada filma po zanru i drzavi
-- i broj filmova po zanru i po drzavi
-- takav da je Ukupna zarada veca od dva i po miliona
-- uredjena po zanru, pa po drzavi
select d.Naziv Drzava, z.Naziv Zanr, 
  sum( Zarada ) UkupnaZarada, avg( Zarada ) ProsecnaZarada, 
  count(*) Broj
from (film f inner join zanr z on f.ZanrId = z.ZanrId)
  inner join drzava d on f.DrzavaId = d.DrzavaId
group by Drzava, Zanr
having sum( Zarada ) > 2500000
order by Zanr, Drzava;


select d.Naziv Drzava, z.Naziv Zanr, 
  sum( Zarada ) UkupnaZarada, avg( Zarada ) ProsecnaZarada, 
  count(*) Broj
from (film f inner join zanr z on f.ZanrId = z.ZanrId)
  inner join drzava d on f.DrzavaId = d.DrzavaId
group by Drzava, Zanr
having UkupnaZarada <= 2500000
order by Zanr, Drzava;

select d.Naziv Drzava, z.Naziv Zanr, 
  sum( Zarada ) UkupnaZarada, avg( Zarada ) ProsecnaZarada, 
  count(*) Broj
from (film f inner join zanr z on f.ZanrId = z.ZanrId)
  inner join drzava d on f.DrzavaId = d.DrzavaId
group by Drzava, Zanr
having ProsecnaZarada <= 2500000
order by Zanr, Drzava;