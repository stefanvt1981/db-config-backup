select l."InstellingId", i."Naam", count(l.*) as aantal from "Licenties" l, "Instellingen" i where i."Id" = l."InstellingId" group by l."InstellingId", i."Naam" order by aantal desc;

select g."InstellingId", i."Naam", count(g.*) from "Gebruikers" g, "Instellingen" i where i."Id" = g."InstellingId" group by g."InstellingId", i."Naam" order by count(g.*) desc;

explain analyse select distinct "MethodeCode", "Jaar" from "Licenties" where "InstellingId" = '7913b717-d9b4-4e78-91df-72ae17be5de6' limit 10;
select distinct "MethodeCode", "Jaar" from "Licenties" where "InstellingId" = '7913b717-d9b4-4e78-91df-72ae17be5de6' limit 5;


explain analyse select "MethodeCode", "Jaar" from "Licenties" where "InstellingId" = '1f5930e2-d980-4850-b5eb-f344f3afbec5' group by "MethodeCode", "Jaar" limit 10;

explain analyse select * from "Toekenningen" where "InstellingId" = '1f5930e2-d980-4850-b5eb-f344f3afbec5' and
    (("MethodeCode", "Jaar") not in (select distinct "MethodeCode", "Jaar" from "Licenties" where "InstellingId" = '1f5930e2-d980-4850-b5eb-f344f3afbec5' limit 10));


explain analyse select * from "Toekenningen" where "InstellingId" = '7913b717-d9b4-4e78-91df-72ae17be5de6' and
    (("MethodeCode", "Jaar") not in (select distinct "MethodeCode", "Jaar" from "Licenties" where "InstellingId" = '7913b717-d9b4-4e78-91df-72ae17be5de6' limit 10));