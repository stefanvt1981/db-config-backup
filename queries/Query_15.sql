select "InstellingId", count(*) as aantal from "Gebruikers" where "ZwisMemberId" is null and "Deleted" is null
group by "InstellingId"
order by aantal desc;
                             --and "InstellingId" = '2d4714a4-7ddb-4645-a854-6d260c14e1b1';

select * from "Instellingen" where "Id" = '7913b717-d9b4-4e78-91df-72ae17be5de6';

select count(*) from "Gebruikers" where "InstellingId" = 'db1f65c3-465b-474c-9c03-a7a4c295bc83';