SELECT * FROM "Instellingen" where "Brincode" = '00EB';
Select * from "Licenties" where "InstellingId" = (
    SELECT "Id" FROM "Instellingen" where "Brincode" = '00EB'
);
SELECT * FROM "Gebruikers" where "InstellingId" = 'c77f9b94-9db4-4e90-8d15-8cfb3e6d3026';
SELECT * FROM "Groepen" where "InstellingId" = (
    SELECT "Id" FROM "Instellingen" where "Brincode" = '00EB'
);

Select * from "Gebruikers" where "Id" in (
SELECT "GebruikerId" from "Medewerkers" where "GroepId" in (SELECT "Id" FROM "Groepen" where "InstellingId" = (
    SELECT "Id" FROM "Instellingen" where "Brincode" = '00EB'
)))

select * from "Instellingen" where "ZipperInstellingIdentificatie" = '66599355-fa8c-4817-b11d-cd85906d78b6'

select * from "Gebruikers" where "InstellingId" not in (Select "Id" from "Instellingen")

