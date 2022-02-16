/* 全商品10%引き */
set sql_safe_updates = 0; -- 安全のため大量の更新防ぐための設定を解除
update products set price = price * 0.9;
