--Excercises Hour 12

select count(* )from BIRDS;

select distinct nest_builder from BIRDS;

select * from BIRDS where eggs=(select max(EGGS) from BIRDS );

select * from BIRDS where EGGS > 7;

select bird_name, eggs, incubation, WINGSPAN from BIRDS where WINGSPAN > 48 order by WINGSPAN desc;

select count(*) "COUNT" from NICKNAMES;

select * from BIRDS_FOOD;

select count(distinct(FOOD_NAME)) "FOOD NAME" from FOOD;

select * from birds where bird_name ='Bald Eagle';

select bird_name,f.FOOD_NAME
from birds B
inner join BIRDS_FOOD bf
on b.BIRD_ID=bf.BIRD_ID
inner join FOOD f
on bf.FOOD_ID = f.FOOD_ID
where b.BIRD_NAME='Bald Eagle';

select bird_name,f.FOOD_NAME
from birds B
inner join BIRDS_FOOD bf
on b.BIRD_ID=bf.BIRD_ID
inner join FOOD f
on bf.FOOD_ID = f.FOOD_ID
where f.FOOD_NAME='Fish';