/*
2017年12月に商品を購入していないユーザーの一覧
user_id, 名字, email
*/

select
  id,
  last_name,
  email
from
  users
where id not in ( -- where 句の () で囲み、orders の select 文を入れる
  select
    user_id
  from
    orders
  where
    order_time >= "2017-12-01 00:00:00"
    and order_time < "2018-01-01 00:00:00"
);
