select * from "Gebruikers" where "InstellingId" = '0940808f-b0fa-44dc-82ad-c23a60741f11' and "Deleted" is null and "PersoonType" = '2'

select * from "Beheerders" where "InstellingId" = '0940808f-b0fa-44dc-82ad-c23a60741f11'

select * from "IbRters" where "InstellingId" = '0940808f-b0fa-44dc-82ad-c23a60741f11'

select * from "Instellingen" where "Id" = '0940808f-b0fa-44dc-82ad-c23a60741f11'

select * from "Groepen" where "InstellingId" = '0940808f-b0fa-44dc-82ad-c23a60741f11'

select * from "Medewerkers" where "GroepId" in (select "Groepen"."Id" from "Groepen" where "InstellingId" = '0940808f-b0fa-44dc-82ad-c23a60741f11') order by "GebruikerId"

insert into "Beheerders" values ('0940808f-b0fa-44dc-82ad-c23a60741f11', '4c3a7491-c372-44f5-afa3-0a1236de45c3');
insert into "Beheerders" values ('0940808f-b0fa-44dc-82ad-c23a60741f11', '1ec67659-9d31-4485-8648-07786655eb48');
insert into "Beheerders" values ('0940808f-b0fa-44dc-82ad-c23a60741f11', '7aa4ca95-28fa-4f6b-8220-608fd576f8df');
insert into "Beheerders" values ('0940808f-b0fa-44dc-82ad-c23a60741f11', 'f8490dd6-57b3-4d26-ab20-4c7b3ce14d86');
insert into "Beheerders" values ('0940808f-b0fa-44dc-82ad-c23a60741f11', '61ffb80f-ef1f-42c0-81d9-523c1487acb4');

delete from "Beheerders" where "InstellingId" = '0940808f-b0fa-44dc-82ad-c23a60741f11' and "GebruikerId" = '1ec67659-9d31-4485-8648-07786655eb48';

insert into "IbRters" values ('0940808f-b0fa-44dc-82ad-c23a60741f11', 'f8490dd6-57b3-4d26-ab20-4c7b3ce14d86');

select * from "Gebruikers"
                where "Id" not in (select "Medewerkers"."GebruikerId" from "Medewerkers")
                  and "PersoonType" = '2'
                  and "Deleted" is null
                  and "Id" not in (select "IbRters"."GebruikerId" from "IbRters")
                  and "Id" not in (select "Beheerders"."GebruikerId" from "Beheerders")
                and "InstellingId" = '0e3e26bb-700a-4c0d-8ffd-d8c7da86b6bf'

select * from "Instellingen" where "Id" = '0e3e26bb-700a-4c0d-8ffd-d8c7da86b6bf'

select * from "Beheerders" where "InstellingId" = '0e3e26bb-700a-4c0d-8ffd-d8c7da86b6bf'