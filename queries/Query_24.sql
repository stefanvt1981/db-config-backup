EXPLAIN ANALYSE
WITH
    gebruiker_info AS (
        SELECT
            g."InstellingId",
            EXISTS (SELECT 1 FROM "Beheerders" b WHERE b."GebruikerId" = g."Id") AS is_beheerder,
            EXISTS (SELECT 1 FROM "IbRters" i WHERE i."GebruikerId" = g."Id") AS is_ibrter
        FROM "Gebruikers" g
        WHERE g."Id" = 'bddd5059-9737-46f4-96d7-ca16acd5772e'
        LIMIT 1
    ),
    alle_lidmaatschappen AS (
        SELECT m."GroepId", m."Rol"
        FROM "Medewerkers" m
        WHERE m."GebruikerId" = 'bddd5059-9737-46f4-96d7-ca16acd5772e'

        UNION ALL

        SELECT g."Id" AS "GroepId", 6 AS "Rol"
        FROM "Groepen" g
                 JOIN gebruiker_info gi ON g."InstellingId" = gi."InstellingId"
        WHERE gi.is_beheerder

        UNION ALL

        SELECT g."Id" AS "GroepId", 5 AS "Rol"
        FROM "Groepen" g
                 JOIN gebruiker_info gi ON g."InstellingId" = gi."InstellingId"
        WHERE gi.is_ibrter
    ),
    rollen_per_groep AS (
        SELECT m."GroepId", array_agg(DISTINCT m."Rol") AS "Rollen"
        FROM alle_lidmaatschappen m
        GROUP BY m."GroepId"
    ),
    leerjaren_per_groep AS (
        SELECT l."GroepId", array_agg(DISTINCT l."Leerjaar") AS "LeerlingLeerjaren"
        FROM "Leerlingen" l
        WHERE l."GroepId" IN (SELECT "GroepId" FROM alle_lidmaatschappen)
        GROUP BY l."GroepId"
    )
SELECT
    g."Naam" AS naam,
    g."Type" AS type,
    g."ZwisGroepId" AS zwis_groep_id,
    g."ZipperGroepIdentificatie" AS zipper_groep_id,
    COALESCE(lj."LeerlingLeerjaren", ARRAY[]::INTEGER[]) AS leerling_leerjaren,
    COALESCE(r."Rollen", ARRAY[]::INTEGER[]) AS rollen
FROM rollen_per_groep r
         JOIN "Groepen" g ON g."Id" = r."GroepId"
         LEFT JOIN leerjaren_per_groep lj ON lj."GroepId" = g."Id";