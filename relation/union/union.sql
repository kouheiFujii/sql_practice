/*
ユーザーとアドミンユーザーをタシアさせた一覧
email
姓
名
性別
*/

select
  email,
  last_name,
  first_name,
  gender
from
  users
union -- union all とすると重複も含めることできる
select
  email,
  last_name,
  first_name,
  gender
from
  admin_users;
