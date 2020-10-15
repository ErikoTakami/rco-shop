<h1 align="center">Record Conveni Online</h1>
<br>
<br>
<a href="https://gyazo.com/913afd0cbdb71ac511e90b87304eaf79"><img src="https://i.gyazo.com/913afd0cbdb71ac511e90b87304eaf79.jpg" alt="Image from Gyazo" width="1437"/></a>
<br>

## 概要
- レコードを販売している珍しいコンビニの商品を購入できるサービスです。

## URL
- https://record-conveni-online.herokuapp.com/
#### basic認証
- ID: rco
- password: rco

#### テストログイン(管理者)
- email: rco@rco.com
- password: rco1111

<br>

## 本サービスの制作背景
- 都内某所にレコードを販売している不思議なコンビニがあります。<br>私は元々音楽観賞が趣味としているのですが、音楽を聞く際は手軽に聴けるサブスクリプションを利用しており、こちらのコンビニに出会うまではレコードで音楽を聴くという選択肢はありませんでした。レコードは１つ１つの単価が高いイメージがあり、購入することに対する敷居が高いイメージがあったからです。しかし、このコンビニに出会ってからはそのイメージが変わりました。<br>こちらのコンビニでは、個人で2万枚以上のレコードを所持されている店長セレクトの素敵なレコードが店頭に並んでおり、しかも他のレコード店よりも安価で購入することができます。<br>実際にこちらでレコードを購入して初めて聞いてみると、サブスクで聴く音楽よりも味がある魅力的な音に感動しました。レコードを流している時間が特別なものに思え、人生の幅が広がった気がします。<br>レコード初心者の私にとって、レコードの世界へ入るハードルを下げてくださったこちらのコンビニにはとても感謝しています。<br>本当は店頭で手にとって自分の欲しいレコードを選ぶのが一番だと思うのですが、コロナ禍で直接店舗を訪れることができない方や、私のようにレコード初心者で何から始めたら良いかわからないという方にも、店長セレクトの素敵なレコードたちの魅力を伝えたいと思い、このアプリを作成しました。

<br>

## 使用技術
- Ruby ruby 2.6.5
- Ruby on Rails 6.0.3.3
- heroku
- rspec
- rubocop
- AWS(S3)

<br>

<!-- 　⇒どんな課題や不便なことを解決するためにこのアプリを作ったのか。
・DEMO(gifで動画や写真を貼って、ビューのイメージを掴んでもらいます)
　⇒特に、デプロイがまだできていない場合はDEMOをつけることで見た目を企業側に伝えることができます。 -->
<!-- ・工夫したポイント -->
## 機能一覧

### 認証機能
- サインイン、サインアップ機能 ( devise )
  - email、パスワード、ユーザー名必須

### 管理者機能
- 管理者ユーザー登録 ( devise )

### 商品関連
- 商品一覧ページ
- 商品出品ページ ( 管理者ユーザーにのみ出品権限を設定 )
  - 商品出品機能
  - 画像投稿機能
- 商品詳細ページ
  - 「カートに入れる」ボタンをクリックでカートに商品を入れる
- 商品編集・削除ページ ( 管理者ユーザーにのみ編集/削除権限を設定 )

### カート機能
- カート内商品一覧ページ
  - 在庫数に応じた商品の購入数の設定機能
  - カート内商品削除機能
  - 合計金額計算機能
  <br>
<a href="https://gyazo.com/a9dcfce44d14fdc31a480959588a648c"><img src="https://i.gyazo.com/a9dcfce44d14fdc31a480959588a648c.gif" alt="Image from Gyazo" width="500"/></a>

### 購入機能
- 現在実装中です

### 検索機能
- 現在実装中です

<br>

## 今後実装したい機能
- お店の魅力を伝えるために、店舗紹介ページを作成する。GoogleMapAPIを用いて、店舗の地図を表示する。

<br>

## DB設計

## usersテーブル

| Column                | Type    | Options     |
| --------------------- | ------- | ----------- |
| nickname              | string  | null: false |
| email                 | string  | null: false |
| password              | string  | null: false |
| password_confirmation | string  | null: false |
| admin                 | boolean | null: false |

### Association
- has_many :addresses
- has_one :cart

## addressesテーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| last_name       | string     | null: false                    |
| first_name      | string     | null: false                    |
| last_name_kana  | string     | null: false                    |
| first_name_kana | string     | null: false                    |
| postal_code     | string     | null: false                    |
| prefecture_id   | integer    | null: false                    |
| city            | string     | null: false                    |
| block           | string     | null: false                    |
| building        | stirng     |                                |
| phone_number    | string     | null: false                    |
| user            | references | null: false, foreign_key: true |

### Association
- belongs_to :user

## cartsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |

### Association
- has_many :cart_items
- belongs_to :user
- has_one :order

## itemsテーブル

| Column    | Type    | Options     |
| --------- | ------- | ----------- |
| title     | string  | null: false |
| artist    | string  | null: false |
| text      | string  | null: false |
| genre_id  | integer | null: false |
| country   | string  |             |
| format_id | integer | null: false |
| status_id | integer | null: false |
| price     | integer | null: false |
| stock     | integer | null: false |

### Association
- has_many :cart_items
- has_one_attached :image

## cart_itemsテーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| quantity | integer    | null: false, default: 1        |
| item     | references | null: false, foreign_key: true |
| cart     | references | null: false, foreign_key: true |

### Association
- belongs_to :cart
- belongs_to :item

## ordersテーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| cart      | references | null: false, foreign_key: true |

### Association
- belongs_to :cart
