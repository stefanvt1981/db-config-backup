select * from "Licenties" where "InstellingId" = '5634e5ed-a2eb-44c5-a781-c3036a48fd9d' order by "MethodeCode"

SELECT m."Naam", m."Code", t.*
FROM public."Applicaties" t, public."Methodes" m
WHERE t."MethodeId" = m."Id"
order by m."Code"

select * from "Gebruikers" where "ZipperGebruikerIdentificatie" = '006f90d3-0003-8000-0000-7a6970706572'