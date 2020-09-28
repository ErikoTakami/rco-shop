# README

## usersテーブル

| Column                | Type    | Options     |
| --------------------- | ------- | ----------- |
| nickname              | string  | null: false |
| email                 | string  | null: false |
| password              | string  | null: false |
| password_confirmation | string  | null: false |
| admin                 | boolean | null: false |

### Association
- has_one :address
- has_one :cart
- has_many :orders

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
- has_one :order

## cartsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |

### Association
- has_many :items, through: carts_items
- belongs_to :user

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
- has_many :carts, through: carts_items

## carts_itemsテーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| quantity | integer    | null: false                    |
| item     | references | null: false, foreign_key: true |
| cart     | references | null: false, foreign_key: true |

### Association
- belongs_to :cart
- belongs_to :item
- belongs_to :order

## ordersテーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| cart_item | references | null: false, foreign_key: true |
| address   | references | null: false, foreign_key: true |
| user      | references | null: false, foreign_key: true |

### Association
- has_many :carts_items
- belongs_to :user
- belongs_to :address
