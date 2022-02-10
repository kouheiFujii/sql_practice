/* 都道府県別のユーザー数 */

/*
create view prefecture_user_counts(name, count) -- view用のテーブル名（カラム）
as -- as で繋げる
select
  p.name name,
  COUNT(*) count
from
  users u
inner join
  prefectures p
on u.prefecture_id = p.id
group by u.prefecture_id;
*/

-- 作成した view はテーブルのように使用できる
select
  name,
  count
from
  prefecture_user_counts;
