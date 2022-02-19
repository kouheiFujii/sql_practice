/* 累計販売個数が 10 を超えている商品は価格を5%アップ*/

/* 累計販売個数が 10 を超えている商品を検索する SQL 文
select
  product_id,
  sum(product_qty) qty
from
  order_details
group by
  product_id
having
  sum(product_qty) >= 10;
*/

update
  products
set
  price = price * 1.05
where
  id in (
  select
    product_id
  from
    order_details
  group by
    product_id
  having
    sum(product_qty) >= 10
  );
