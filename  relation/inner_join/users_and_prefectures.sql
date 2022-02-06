select -- 何を表示したいのか
  users.id,
  users.last_name,
  users.first_name,
  prefectures.name
from
  users  -- どの table から取るのか
inner join
-- join 省略可能だが inner join と明示的に表示するほうが多い
  prefectures --  一緒に参照したい table を指定
on users.prefecture_id = prefectures.id; -- 主キーと外部キーを指定
