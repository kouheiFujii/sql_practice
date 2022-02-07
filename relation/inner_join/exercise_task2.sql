/*
注文一覧を出す
注文詳細と商品情報も一緒に出す
【追加】
ユーザーの名字と名前を入れる
*/

select
  o.id order_id,
  o.user_id user_id,
  u.last_name last_name,
  u.first_name first_name,
  o.amount amount,
  od.product_qty qty,
  od.product_price price,
  p.name product_name,
  p.price product_price
from
  orders o
inner join
  order_details od
on o.id = od.order_id
inner join
  products p
on od.product_id = p.id
inner join
  users u
on o.user_id = u.id;
