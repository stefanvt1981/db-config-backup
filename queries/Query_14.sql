select * from "Gebruikers" where "ZipperGebruikerIdentificatie" = '0060ef05-0003-8000-0000-7a6970706572';

select * from "Instellingen" where "Id" = '0b6a655c-ff3d-4720-ba29-09745408f4d9';

select * from "Instellingen" where "ZwisInstellingId" = '1119';

select * from "Gebruikers" where "InstellingId" not in (select "Id" from "Instellingen");

select * from "Leerlingen" where "GebruikerId" = 'faacae39-e3bc-47cd-b1b6-52bda63b7c28'

select * from "Instellingen" where "Brincode" = '82ZX'

select * from "Groepen" where "InstellingId" = 'f8bfc1b5-9fc7-4dc5-a50c-1bf94af1af5c';

select *
from "Gebruikers" where "InstellingId" = 'f8bfc1b5-9fc7-4dc5-a50c-1bf94af1af5c';