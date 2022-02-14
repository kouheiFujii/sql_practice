/*
月別の平均客単価
単価は少数第一位で四捨五入
*/

select
  date_format(o.order_time, "%Y%m") order_year_month,
  round(avg(o.amount), 0) avg
from
  orders o
group by -- 指定した範囲の重複をまとめている
  date_format(o.order_time, "%Y%m")
;
