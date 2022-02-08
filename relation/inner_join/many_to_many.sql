/*
商品ID=3に紐づく商品カテゴリー名を取得する
商品ID
商品名
商品カテゴリー
*/

select
  p.id as product_id,
  p.name as product_name,
  c.name as category_name
from
  products p
inner join
  products_categories pc
  on p.id = pc.product_id
inner join
  categories c
  on pc.category_id = c.id
where
  p.id = 3;
