select Distinct i."CrmRelatieNummer" from "Instellingen" i inner join "Licenties" l on i."Id" = l."InstellingId" where i."Brincode" is null;

select count(*) from "Instellingen" i  where i."Brincode" is null or "Brincode" = '';

select * from "Licenties" where "InstellingId" in (select "Id" from "Instellingen" where "Brincode" is null)

select * from "Instellingen" where "Id" in (select "Licenties"."InstellingId" from "Licenties") and "IdentityProviderSchoolId" is null