# README

# usersテーブル(ユーザー管理)
| Column             | Type     | Options                   |
| ------------------ | -------- | ------------------------- |
| nickname           | string   | null: false               |
| email              | string   | null: false, unique: true |
| encrypted_password | string   | null: false               |
| birthday           | date     | null: false               |

# association
- has_many :diaries


# diariesテーブル
| Column             | Type        | Options                        |
| ------------------ | ----------- | ------------------------------ |
| title              | string      | null: false                    |
| content            | text        | null: false                    |
| record_day         | string      | null: false                    |
| weather_id         | integer     | null: false                    |
| user               | references  | null: false, foreign_key: true |              

# association
- belongs_to :user