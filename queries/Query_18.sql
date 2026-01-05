DELETE FROM "Leerlingen"
WHERE  ( "GroepId" IN (
    SELECT g."Id"
    FROM "Groepen" g
             JOIN "Instellingen" i ON g."InstellingId" = i."Id"
    WHERE i."Id" = '5e57aa55-1528-438e-a0c3-be504a3251df')
           );

DELETE FROM "Medewerkers" m
WHERE  (m."GroepId" IN (
    SELECT g."Id"
    FROM "Groepen" g
             JOIN "Instellingen" i ON g."InstellingId" = i."Id"
    WHERE i."Id" = '5e57aa55-1528-438e-a0c3-be504a3251df')
           );

DELETE FROM "Beheerders" b
WHERE (b."InstellingId" = '5e57aa55-1528-438e-a0c3-be504a3251df');

DELETE FROM "IbRters" ib
WHERE ( ib."InstellingId" = '5e57aa55-1528-438e-a0c3-be504a3251df');

DELETE FROM "Groepen" g
WHERE g."InstellingId" = '5e57aa55-1528-438e-a0c3-be504a3251df';

DELETE FROM "Gebruikers" u
WHERE u."InstellingId" = '5e57aa55-1528-438e-a0c3-be504a3251df';

DELETE FROM "Instellingen" i
WHERE  i."Id" = '5e57aa55-1528-438e-a0c3-be504a3251df';

-- COMMIT;
--ROLLBACK;