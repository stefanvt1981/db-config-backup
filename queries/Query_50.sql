SELECT i."Id" as "Instelling", g."Id" as "Gebruiker", l."MethodeCode", l."Jaar", g."PersoonType"
FROM "Instellingen" i
         LEFT JOIN "Gebruikers" g ON g."InstellingId" = i."Id"
         LEFT JOIN "Licenties" l ON g."InstellingId" = l."InstellingId"
WHERE i."Id" = 'a3741d71-649d-461c-ab68-dbb2cfce968d'
  AND g."Leerjaar" = l."Jaar";

select g.* FROM "Instellingen" i
                  LEFT JOIN "Gebruikers" g ON g."InstellingId" = i."Id"

WHERE i."Id" = 'a3741d71-649d-461c-ab68-dbb2cfce968d'