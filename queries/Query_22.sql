select "Naam", "Brincode", "DependanceCode", "CrmRelatieNummer"
from "Instellingen"
where "Id" in

select i."Naam", i."CrmRelatieNummer", g."InstellingId", count(g."InstellingId") as "aantal" from "Groepen" g, "Instellingen" i
                                                                                           where g."Id" in (select "Leerlingen"."GroepId" from "Leerlingen" where "Leerjaar" = 3)
                                                                                           and g."InstellingId" = i."Id"
                                                                                           and i."Id" in (select distinct "Licenties"."InstellingId" from "Licenties" where "MethodeCode" = 'vllnl-v6')
                                                                                            group by g."InstellingId", i."Naam", i."CrmRelatieNummer"
                                                                                            order by "aantal" desc;


select * from "Groepen" where "Groepen"."Id" in (select "Leerlingen"."GroepId" from "Leerlingen" where "Leerjaar" = 3) and "InstellingId" = '3929be84-c9ee-4ecd-882f-e7aab3888a09'--'3951e4df-38c8-4821-a807-b05c3b9d33e4'


select * from "Leerlingen" where "GroepId" = '1e755789-f309-4b88-931c-1eb58732ce61'

select * from "Instellingen" where "Id" = '3929be84-c9ee-4ecd-882f-e7aab3888a09'

select count(*) from "Instellingen" where "Id" in (select distinct "Licenties"."InstellingId" from "Licenties" where "MethodeCode" = 'vllnl-v6')