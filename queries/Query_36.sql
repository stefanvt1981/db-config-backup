select * from "Instellingen" i join "Licenties" l on i."Id" = l."InstellingId"
where i."CrmRelatieNummer" in ('100011618', '100031391')
order by i."Naam", l."MethodeCode"