/*
全期間の平均客単価
単価は少数第一位で四捨五入
*/

select
  round(avg(o.amount)) avg
from
  orders o;
