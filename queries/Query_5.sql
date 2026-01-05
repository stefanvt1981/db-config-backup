select count(*)
from Member m, [User] u where m.UserId = u.UserId and SchoolId = 5041 --and u.LastName = 'Praczyk';

select * from School where SchoolId = 5041;
