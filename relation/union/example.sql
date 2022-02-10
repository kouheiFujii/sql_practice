/*
usersテーブルから男性
admin_usersテーブルから女性
unionして性別順に並び替え
*/

select
  email,
  last_name,
  first_name,
  gender
from
  users
where
  gender = 1
union
select
  email,
  last_name,
  first_name,
  gender
from
  admin_users
where
  gender = 2
order by gender;
