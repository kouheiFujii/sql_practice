-- 列はそろえること
insert into products(name, price) values("新商品A", 1000);

-- into は全列に対して指定する場合は省略できる
insert products values(1002, "新商品B", 1000);

-- 複数指定できる
insert into products(name, price)
values
("新商品C",3000),
("新商品D",4000),
("新商品E",5000);

-- 省略
insert
  products
values
(1006, "新商品F",3000),
(1007, "新商品G",4000),
(1008, "新商品H",5000);
