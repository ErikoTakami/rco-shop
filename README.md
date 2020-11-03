<h1 align="center">Record Conveni Online</h1>
<br>
<br>
<a href="https://gyazo.com/913afd0cbdb71ac511e90b87304eaf79"><img src="https://i.gyazo.com/913afd0cbdb71ac511e90b87304eaf79.jpg" alt="Image from Gyazo" width="1437"/></a>
<br>

## 概要
- レコードを販売している珍しいコンビニの商品を購入できるサービスです。

<br>

## URL
- https://record-conveni-online.herokuapp.com/
#### basic認証
- ID: rco
- password: rco

#### テストログイン(管理者)
- email: rco@rco.com
- password: rco1111

#### テストカード(購入機能)
- カード番号: 4242424242424242
- 有効期限: 例) 3 / 24　（ 月 / 年 ）
- セキュリティコード: 123

<br>

## 本サービスの制作背景、解決したい課題
#### 解決したい課題
 このアプリは、都内に実在する小売店(コンビニ)のECサイトです。<br>解決したい課題として、店舗の店長からコロナの影響で売り上げが減少したというお話を伺い、何か力になれることはないかと考えました。巣ごもり消費が増大しているためECサイトを作成の提案をしたところ、快諾していただけたため、今回制作させていただくことになりました。<br>
#### 制作背景
私は元々音楽観賞が趣味としているのですが、音楽を聞く際は手軽に聴けるサブスクリプションを利用しており、こちらのコンビニに出会うまではレコードで音楽を聴くという選択肢はありませんでした。レコードは１つ１つの単価が高いイメージがあり、購入することに対する敷居が高いイメージがあったからです。しかし、このコンビニに出会ってからはそのイメージが変わりました。<br>こちらのコンビニでは、個人で2万枚以上のレコードを所持されている店長セレクトの素敵なレコードが店頭に並んでおり、しかも他のレコード店よりも安価で購入することができます。<br>実際にこちらでレコードを購入して初めて聞いてみると、サブスクで聴く音楽よりも味がある魅力的な音に感動しました。レコードを流している時間が特別なものに思え、人生の幅が広がった気がします。<br>レコード初心者の私にとって、レコードの世界へ入るハードルを下げてくださったこちらのコンビニにはとても感謝しています。<br>本当は店頭で手にとって自分の欲しいレコードを選ぶのが一番だと思うのですが、コロナ禍で直接店舗を訪れることができない方や、私のようにレコード初心者で何から始めたら良いかわからないという方にも、店長セレクトの素敵なレコードたちの魅力を伝えたいと思い、このアプリを作成しました。
 
<br>

## 使用技術
- Ruby ruby 2.6.5
- Ruby on Rails 6.0.3.3
- JavaScript
- MySQL
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

管理者ユーザーにのみ、ヘッダー右上部に出品ページへのリンクが表示されるようにしています

管理者ユーザー

<a href="https://gyazo.com/fdf12686a81fa28a4eb78a076bc2ebf0"><img src="https://i.gyazo.com/fdf12686a81fa28a4eb78a076bc2ebf0.png" alt="Image from Gyazo" width="194"/></a>

通常ユーザー

<a href="https://gyazo.com/e759da9dfe24c4a0bd7e7ba717e6e25e"><img src="https://i.gyazo.com/e759da9dfe24c4a0bd7e7ba717e6e25e.png" alt="Image from Gyazo" width="197"/></a>


### 商品関連
- 商品一覧ページ ( トップページ )
- 商品出品ページ ( 管理者ユーザーにのみ出品権限を設定 )
  - 商品出品機能
  - 画像投稿機能 ( Amazon S3 )
- 商品編集・削除ページ ( 管理者ユーザーにのみ編集/削除権限を設定 )
- 商品詳細ページ
  - 在庫がある商品
    - 「カートに入れる」ボタンをクリックでカートに商品を入れることができます
 <a href="https://gyazo.com/6129f928456eb010523c312fe48ed8ff"><img src="https://i.gyazo.com/6129f928456eb010523c312fe48ed8ff.png" alt="Image from Gyazo" width="800"/></a>

  - 在庫が無い商品(売り切れ)
    - soldout表示(赤い部分)がされ、「カートに入れる」ボタンが非表示になり、購入できないようになっています
  <a href="https://gyazo.com/9ad39776a1a2255a3b16713dbafc2c7d"><img src="https://i.gyazo.com/9ad39776a1a2255a3b16713dbafc2c7d.png" alt="Image from Gyazo" width="800"/></a>

### カート機能
- カート内商品一覧ページ
  - sessionを用いたカート機能
  - 在庫数に応じた商品の購入数の設定機能
  - カート内商品削除機能
  - JavaScriptを用いた合計金額計算機能
  - JavaScriptを用いた数量変更ボタンの実装( 変更ボタン無しで数量変更が可能 )
  <br>
<a href="https://gyazo.com/a9dcfce44d14fdc31a480959588a648c"><img src="https://i.gyazo.com/a9dcfce44d14fdc31a480959588a648c.gif" alt="Image from Gyazo" width="800"/></a>

### 購入機能
- 注文内容確認、送付先・カード情報入力ページ
  - Payjpを用いた購入機能
  - フォームオブジェクトを用いたページ実装
  - 購入完了後、購入数(quantity)だけ商品の在庫数(stock)を減らす実装
  - 購入完了後はカートのsessionを削除
<a href="https://gyazo.com/85d2db0e02f85d763e798cb3f07ed6cc"><img src="https://i.gyazo.com/85d2db0e02f85d763e798cb3f07ed6cc.gif" alt="Image from Gyazo" width="800"/></a>

  - 郵便番号APIを用いた実装
  
  <a href="https://gyazo.com/7fe9769f25b2ba4ae1bc56313d3c1c59"><img src="https://i.gyazo.com/7fe9769f25b2ba4ae1bc56313d3c1c59.gif" alt="Image from Gyazo" width="730"/></a>
  <br>


### 検索機能
- 現在実装中です

<br>

## 今後実装したい機能
- 2段階認証を用いた新規登録機能
- お店の魅力を伝えるために、店舗紹介ページを作成する。GoogleMapAPIを用いて、店舗の地図を表示する。

<br>

## DB設計

<br>
<a href="https://gyazo.com/aeecc4b0401a7e27c6a9125d9e8beb95"><img src="https://i.gyazo.com/aeecc4b0401a7e27c6a9125d9e8beb95.png" alt="Image from Gyazo" width="900"/></a>
<br>

## usersテーブル

| Column                | Type    | Options     |
| --------------------- | ------- | ----------- |
| nickname              | string  | null: false |
| email                 | string  | null: false |
| password              | string  | null: false |
| password_confirmation | string  | null: false |
| admin                 | boolean | null: false |

### Association
- has_many :addresses, dependent: :destroy
- has_one :cart, dependent: :destroy
- has_many :orders, dependent: :destroy
- has_one :card, dependent: :destroy

<br>

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

<br>

## cartsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |

### Association
- has_many :cart_items
- has_many :items, through: :cart_items
- belongs_to :user

<br>

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
- has_many :carts, through: :cart_items
- has_one_attached :image

<br>

## cart_itemsテーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| quantity | integer    | null: false, default: 1        |
| item     | references | null: false, foreign_key: true |
| cart     | references | null: false, foreign_key: true |

### Association
- belongs_to :cart
- belongs_to :item
- has_many :order_details

<br>

## ordersテーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| total_price | integer    | null: false                    |
| user        | references | null: false, foreign_key: true |
| address     | references | null: false, foreign_key: true |
| is_cancel   | boolean    | null: false, default: 0        |

### Association
- belongs_to :user
- has_many :order_details

<br>

## order_detailsテーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| order     | references | null: false, foreign_key: true |
| cart_item | references | null: false, foreign_key: true |

### Association
- belongs_to :order
- belongs_to :cart_item

<br>

## cardsテーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| card_token     | string     | null: false                    |
| customer_token | string     | null: false                    |
| user           | references | null: false, foreign_key: true |

### Association
- belongs_to :user

<br>
