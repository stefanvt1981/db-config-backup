DROP TABLE IF EXISTS explicite_toekenningen;
select t."GebruikerId", t."MethodeCode", t."Jaar", t."Type"
INTO TEMP TABLE explicite_toekenningen
from "Toekenningen" t, "Gebruikers" g
where g."Id" = t."GebruikerId" and g."InstellingId" = '9d38bff3-03b1-40e5-b2f6-5862b470f649';

DROP TABLE IF EXISTS implicite_toekenningen;
select i."Id" as "Instelling", g."Id" as "Gebruiker", l."MethodeCode", l."Jaar"
INTO TEMP TABLE implicite_toekenningen
from "Instellingen" i left join "Gebruikers" g on g."InstellingId" = i."Id" left join "Licenties" l on g."InstellingId" = l."InstellingId"
where  i."Id" = '9d38bff3-03b1-40e5-b2f6-5862b470f649'
and g."Leerjaar" = l."Jaar"
order by I."Id", g."Id", l."MethodeCode", l."Jaar";

-- Remove from temp_licenties where Type = 'deny' in temp_toekenningen
DELETE FROM implicite_toekenningen
WHERE EXISTS (
    SELECT 1
    FROM explicite_toekenningen t
    WHERE t."GebruikerId" = implicite_toekenningen."Gebruiker"
      AND t."MethodeCode" = implicite_toekenningen."MethodeCode"
      AND t."Jaar" = implicite_toekenningen."Jaar"
      AND t."Type" = 'Deny'
);

-- Add to implicite_toekenningen where Type = 'allow' in temp_toekenningen (if not already present)
INSERT INTO implicite_toekenningen ("Instelling", "Gebruiker", "MethodeCode", "Jaar")
SELECT '9d38bff3-03b1-40e5-b2f6-5862b470f649', t."GebruikerId", t."MethodeCode", t."Jaar"
FROM explicite_toekenningen t
WHERE t."Type" = 'Allow'
  AND NOT EXISTS (
    SELECT 1
    FROM implicite_toekenningen l
    WHERE l."Gebruiker" = t."GebruikerId"
      AND l."MethodeCode" = t."MethodeCode"
      AND l."Jaar" = t."Jaar"
);

select * from implicite_toekenningen --where "Gebruiker" = '8f7840b4-8e16-491f-ae72-ae203fe22241'