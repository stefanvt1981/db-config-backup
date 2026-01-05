explain analyse select distinct "MethodeCode", "Jaar" from "Licenties" where "InstellingId" = '1f5930e2-d980-4850-b5eb-f344f3afbec5' limit 10;

explain analyse select "MethodeCode", "Jaar" from "Licenties" where "InstellingId" = '1f5930e2-d980-4850-b5eb-f344f3afbec5' group by "MethodeCode", "Jaar" limit 10;

explain analyse select * from "Toekenningen" where "InstellingId" = '1f5930e2-d980-4850-b5eb-f344f3afbec5' and
                                   (("MethodeCode", "Jaar") not in (select distinct "MethodeCode", "Jaar" from "Licenties" where "InstellingId" = '1f5930e2-d980-4850-b5eb-f344f3afbec5' limit 10));