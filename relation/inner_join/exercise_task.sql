/*
  2017年1月の、東京都に済むユーザーの注文情報一覧を出す
  注文id
  注文日時
  注文金額合計
  ユーザーid
  ユーザー名字
  ユーザー名前
*/

/*
自分回答
取れるデータ一緒だけど対象は注文一覧としたほうが読みやすい
select
  o.id,
  o.order_time,
  o.amount,
  u.id,
  u.last_name,
  u.first_name
from
  users u
inner join
  orders o
on
  u.id = o.user_id
where
  u.prefecture_id = 13
and
  o.order_time between "2017-01-01 00:00:00" and "2017-01-31 23:59:59";
*/

-- 模範解答
select
  o.id,
  o.order_time,
  o.amount,
  u.id,
  u.last_name,
  u.first_name
from
  orders o
inner join
  users u
on
  o.user_id = u.id
where
  u.prefecture_id = 13
  and o.order_time >= "2017-01-01 00:00:00"
  and o.order_time <= "2017-01-01 00:59:59";
