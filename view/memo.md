## テーブルとビューの違い

#### テーブル
- 実際のデータ保存

#### ビュー
- ビュー自体はデータを持たず、 select 文が保存される

## ビューの制限
- order by が使えない
- 更新系（insert, delete, update）に制約がある

## メリット
- select 文の使い回し
- データを保存しないので、記憶容量の確保

## デメリット
- パフォーマンス低下を招く場合がある
