select * from "Medewerkers" where "GebruikerId" = '081a43d8-cb1a-4f77-987d-280c97f3776f';

select * from "Beheerders" where "GebruikerId" = 'bddd5059-9737-46f4-96d7-ca16acd5772e'

insert into "Beheerders" ("InstellingId", "GebruikerId") values ('13f13187-f59c-4361-ab5e-71c1e9e3eda3', 'bddd5059-9737-46f4-96d7-ca16acd5772e')
delete from "Beheerders" where "GebruikerId" = 'bddd5059-9737-46f4-96d7-ca16acd5772e'