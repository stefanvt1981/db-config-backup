select * from "Groepen"
    join "Medewerkers" on "Groepen"."Id" = "Medewerkers"."GroepId"
         join "Gebruikers" on "Medewerkers"."GebruikerId" = "Gebruikers"."Id"
         where public."Groepen"."InstellingId" = '5634e5ed-a2eb-44c5-a781-c3036a48fd9d' and "Groepen"."Naam" = 'Groep 1'