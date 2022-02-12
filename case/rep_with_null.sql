select
  p.name product_name,
  case
    when sum(od.product_qty) is null then 0 -- 実行結果 null ならば 0 に置き換え
    else sum(od.product_qty)
  end as qty
from
  products p
left outer join
  order_details od
on p.id = od.product_id
group by p.id
order by p.id;
