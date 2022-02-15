/*
都道府県別の平均客単価
都道府県ID
都道府県名
単価は少数第一位で四捨五入
都道府県ID順に四捨五入
*/

select
  p.id as prefecture_id,
  p.name as name,
  round(avg(o.amount), 0) avg
from
  orders o
inner join
  users u
  on u.id = o.user_id
inner join
  prefectures p
  on p.id = u.prefecture_id
group by
  p.id
order by p.id
;
