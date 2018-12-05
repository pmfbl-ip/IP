-- Nazivi svih filmova iz SFRJ
SELECT Naziv 
FROM film 
WHERE Drzava = 'SFRJ';

-- Nazivi svih filmova iz SFRJ i Srbije
SELECT Naziv 
FROM film 
WHERE Drzava = 'Srbija'
OR Drzava = 'SFRJ'

-- Nazivi svih komedija iz SFRJ i Srbije
SELECT Naziv 
FROM film 
WHERE (Drzava = 'Srbija' 
    OR Drzava = 'SFRJ')
AND Zanr = 'komedija';

-- Svi filmovi sa ocenom vecom od 7.5 koji su nastali posle 1970
SELECT * 
FROM film 
WHERE Ocjena > 7.5
AND Godina > 1970;

-- Naziv, zanr i trajanje filmova sa ocenom vecom od 7.5 koji su nastali posle 1970
SELECT Naziv, Zanr, Trajanje 
FROM film 
WHERE Ocjena > 7.5
AND Godina > 1970;