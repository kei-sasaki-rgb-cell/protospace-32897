# テーブル設計

## usersテーブル

| Colmun     | Type   | Option      |
| ---------- | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| name       | string | null: false |
| profile    | text   | null: false |
| occupation | text   | null: false |

### Association

- has_many :prototypes
- has_many :comments

## prototypesテーブル

| Colmun     | Type       | Option            |
| ---------- | ---------- | ----------------- |
| title      | string     | null: false       |
| catch_copy | text       | null: false       |
| concept    | text       | null: false       |
| user       |references  | foreign_key: true |

### Association

- has_many :comments
- belongs_to :user

## commentsテーブル

| Colmun     | Type      | Option            |
| ---------- | --------- | ----------------- |
| text       | text      | null: false       |
| user       | reference | foreign_key: true |
| prototype  | reference | foreign_key: true |

- belongs_to :prototype
- belongs_to :user