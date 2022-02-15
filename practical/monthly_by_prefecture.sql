/*
都道府県別の月別平均客単価
都道府県ID
都道府県名
年月
単価は少数第一位で四捨五入
都道府県ID順に昇順
*/

select
  p.id as prefecture_id,
  p.name as name,
  date_format(o.order_time, "%Y%m") order_year_month,
  round(avg(o.amount), 0) avg
from
  orders o
inner join
  users u
  on u.id = o.user_id
inner join
  prefectures p
  on p.id = u.prefecture_id
group by -- 複数の重複条件設定
  prefecture_id,
  order_year_month
order by
  prefecture_id,
  order_year_month
;
