/*
全商品の平均単価より、単価が高い商品の一覧
*/

select
  id,
  name,
  price
from
  products
where price > ( -- 単一の値を返すサブクエリのことをスカラ・サブクエリという
  select
    ROUND(AVG(price), 0) -- 平均値を四捨五入で返している
  from
    products
)
order by price;
