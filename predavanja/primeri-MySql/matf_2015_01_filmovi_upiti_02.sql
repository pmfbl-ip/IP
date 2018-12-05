use matf_2015_01_filmovi;

-- ubacivanje novog zanra
insert into zanr( Naziv )
values( 'цртани' );

-- ubacivanje novog glumca
insert into glumac( Ime, Prezime, Nadimak, DrzavaId )
values( 'Предраг', 'Лаковић', 'Пепи', 3 );

-- uvecanje ocene za film ciji je FilmId 2
update film
set Ocena = Ocena + 0.5
where FilmId = 2;

-- brisanje zanra
delete from zanr
where Naziv = 'цртани';