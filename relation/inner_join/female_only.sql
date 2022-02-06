select
  u.id,
  u.last_name,
  u.first_name,
  p.name
from
  users u
inner join
  prefectures p
on
  u.prefecture_id = p.id
where
  u.gender = 2;
