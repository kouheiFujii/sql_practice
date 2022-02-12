/*
全商品を累計販売個数でランク分け
C < 10 <= B < 20 <= A
ランクが高い順に並び替え
商品ID
商品名
販売個数
ランク
*/

select
  p.id product_id,
  p.name product_name,
  case
    when sum(od.product_qty) is null then 0
    else sum(od.product_qty)
  end as qty,
  case
    when sum(od.product_qty) is null then "No purchase history"
    when sum(od.product_qty) >= 20 then "A"
    when sum(od.product_qty) >= 10 then "B"
    else "C"
  end as product_rank
from
  products p
left outer join
  order_details od
on p.id = od.product_id
group by p.id
order by qty desc;
